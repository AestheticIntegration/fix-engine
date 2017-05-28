(** Implementation of the FIX 4.4 engine. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    fix_engine.ml
    
*)

(* @meta[imandra_ignore] on @end *)
open Datetime;;
open Base_types;;
open Full_admin_enums;;
open Full_admin_messages;;
open Full_app_messages;;
open Full_messages;;
(* @meta[imandra_ignore] off @end *)

(** Define set of actions + data for manual intervention by the user. *)
type manual_int_data = {
    session_reset           : bool;
}
;;

(** Request to initiate a new session. *)
type session_data = {
    dest_comp_id            : fix_string; (** Destination company ID. *)
}
;;

(** These are internal messages into the Engine. *)
type fix_engine_int_msg = 
    | TimeChange            of fix_utctimestamp (** Updates internal time of the engine. *)
    | CreateSession         of session_data (** Create sessions command. *)
    | ApplicationData       of full_app_msg_data (** App messages to be transmitted over. *)
    | ManualIntervention    of manual_int_data (** TODO: create 'richer' manual commands. *)
;;

(** Represents 'status' of the engine. *)
type fix_engine_status = 
    | Normal
    | SessRejectReceived 
    | BusinessRejectReceived
    | TargetAppIsDown
    | ConnTerminatedWithoutLogoff
    | MaxNumLogonMsgsViolated
;;

(** Represents 'modes' of the engine. *)
type fix_engine_mode =
    | NoActiveSession       (** State of the engine before logon. *)
    | LogonInitiated        (** Middle of logon session. *)
    | ActiveSession         (** Application messages are now processed. *)
    | GapDetected           (** Detected out-of-sequence message. Waiting to receive it. *)
    | Recovery              (** RequestResend has been sent out. Waiting to recover the messages. *)
    | CacheReplay           (** Replaying the cache. *)
    | Retransmit            (** Retransmitting sequence of messages because we were asked to retransmit. *)
    | ShutdownInitiated     (** Shutting-down protocol. *)
    | Error                 (** Received a non-dup message with earlier sequence number. *)
    | WaitingForHeartbeat   (** Sent out TestRequest message.  *)
;;

(** Engine state structure containing all of the information required for it operate. *)
type fix_engine_state = {
    fe_curr_status          : fix_engine_status;            (** Status. *)
    fe_curr_mode            : fix_engine_mode;              (** High-level mode of the engine. *)
    fe_initiator            : bool option;                  (** initiator = True if we've received an internal message to initiate 
                                                                the connection. It's False if we've received a Logon request first.
                                                                It's None by default prior to any Logon sequences. *)

    fe_curr_time            : fix_utctimestamp;             (** Need to define time so we're aware of heartbeat status. *)

    fe_comp_id              : fix_string;                   (** Our company ID *)
    fe_target_comp_id       : fix_string;                   (** Target company ID *)

    incoming_int_msg        : fix_engine_int_msg option;    (** Incoming internal messages (application). *)
    outgoing_int_msg        : fix_engine_int_msg option;    (** These are messages we send back to our owner *)

    incoming_seq_num        : int;                          (** Sequence number of the last processed incoming message. *)
    outgoing_seq_num        : int;                          (** Sequence number of the last sent message. *)

    incoming_fix_msg        : full_top_level_msg option;    (** Messages we will send out *)
    outgoing_fix_msg        : full_top_level_msg option;    (** Messages we receive *)

    fe_cache                : full_valid_fix_msg list;      (** Maintain a cache of messages in case we detect out-of-sequence message(s). *)
    fe_history              : full_valid_fix_msg list;      (** We maintain history of our outgoing messages in case we're asked to retransmit. *)

    fe_last_time_data_sent  : fix_utctimestamp;             (** Last time we sent out data to the corresponding engine *)
    fe_last_data_received   : fix_utctimestamp;             (** Last time we received a heartbeat or other message. *)
    fe_heartbeat_interval   : fix_duration;                 (** Negotiated heartbeat interval. *)
    fe_testreq_interval     : fix_duration;                 (** Interval used to 'pad' heartbeat interval before a TestRequest message is sent out. *)

    fe_retransmit_start_idx : int;                          (** Starting index of the retransmitting history. *)
    fe_retransmit_end_idx   : int;                          (** Ending index ... *)

    fe_history_to_send      : full_valid_fix_msg list;      (** Used in message retransmission. *)
    fe_after_resend_logout  : bool;                         (** Should engine go to LogoffTerminated after finishing GapRefill mode completes? *)

    fe_application_up       : bool;                         (** Is the application that's receiving messages up and running?
                                                                TODO: we might need to constitute a heartbeat to enforce this. *)

    last_test_req_id        : int;                          (** These are used to send out TestRequest messages that should be replied 
                                                                with Heartbeat messages containing the testrequest ID. Any string
                                                                may be used, we use int's for now. *) 

    fe_num_logons_sent      : int;                          (** Number of logons sent during session initialization. This is done to 
                                                                ensure that the engine does not go into infinite loop. *)
    fe_max_num_logons_sent  : int;                          (** Setting: maximum number of logons to be sent out. *)
    fe_encrypt_method       : fix_encryption_method;

}
;;

(** Initial engine state. *)
let init_fix_engine_state = {
    fe_curr_status          = Normal;
    fe_initiator            = None;                         
    fe_curr_mode            = NoActiveSession;              
    fe_curr_time            = make_utctimestamp ( 2017, 1, 1, 0, 1, 0, None );

    fe_comp_id              = Model_string 1;
    fe_target_comp_id       = Model_string 2;

    incoming_int_msg        = None;                           
    outgoing_int_msg        = None;

    incoming_seq_num        = 1;        
    outgoing_seq_num        = 1; 

    incoming_fix_msg        = None;
    outgoing_fix_msg        = None;

    fe_cache                = [];
    fe_history              = [];

    fe_last_data_received   = make_utctimestamp ( 2017, 1, 1, 0, 1, 0, None );
    fe_heartbeat_interval   = make_duration ( None, None, None, None, None, Some 30 ); (* 30 seconds *)
    fe_last_time_data_sent  = make_utctimestamp ( 2017, 1, 1, 0, 1, 0, None );
    fe_testreq_interval     = make_duration ( None, None, None, None, None, Some 30 );

    fe_history_to_send      = [];
    fe_retransmit_start_idx = 0;
    fe_retransmit_end_idx   = 0;
    fe_after_resend_logout  = false;

    fe_application_up       = true;

    last_test_req_id        = 0;

    fe_num_logons_sent      = 0;
    fe_max_num_logons_sent  = 0;
    fe_encrypt_method       = NoEncryption;
}
;;

(** We're in the middle of retransmitting historic messages. 
    Note: when we transition into Retransmit mode, we set up a 
    queue with messages that should be sent out. These messages are a function
    of the parameters that were sent to the engine. *)
let run_retransmit ( engine : fix_engine_state ) = 
    match engine.fe_history_to_send with 
    | [] -> 
        (* Since after initiating a Logoff, we can still process Resend request, 
            then need to check whether we need to return there. *)
        if engine.fe_after_resend_logout then 
            { engine with fe_curr_mode = ShutdownInitiated; fe_after_resend_logout = false; }
        else 
            { engine with fe_curr_mode = ActiveSession; } (* We're done - need to change mode. *)
    | x::xs -> 
        let should_be_sent =
            begin
                (* Let's check that we're still within the bounds here.  *)
                if x.full_msg_header.h_msg_seq_num < engine.fe_retransmit_start_idx then false else 
                if engine.fe_retransmit_end_idx = 0 && x.full_msg_header.h_msg_seq_num > engine.fe_retransmit_end_idx then false else

                (* Now we need to check that we're sending out the right admin vs app message. *)
                match x.full_msg_data with 
                | Full_FIX_App_Msg _ -> true
                | Full_FIX_Admin_Msg amsg ->
                match amsg with 
                | Full_Msg_Reject _ -> true
                | _ -> false
            end in
        if should_be_sent then {
            engine with 
                fe_history_to_send = xs;
                outgoing_fix_msg = Some ( ValidMsg x );
        } else {
            engine with
                fe_history_to_send = xs;
                outgoing_fix_msg = None;
        }
;;

(** Does the message have the right sequence number?

    This is when we need to transfer into Recovery Mode and request the 
    missing sequence to be retransmitted. *)
let msg_consistent ( engine, msg_header : fix_engine_state * fix_header ) = 
    let seq_num_correct = msg_header.h_msg_seq_num = (engine.incoming_seq_num + 1) in 
    match msg_header.h_poss_dup_flag with 
    | None -> seq_num_correct
    | Some dup -> dup || ((not dup) && seq_num_correct)
;;

(*** ********************************************************************************************************** *)
(***  Message creation helper functions.                                                                        *)
(*** ********************************************************************************************************** *)

(** Create outbound FIX message with the appropriate header and trailer. *)
let create_outbound_fix_msg ( osn, target_comp_id, our_comp_id, curr_time, msg, is_duplicate ) = {
    full_msg_header = {
        default_fix_header with 
            h_msg_seq_num = osn + 1;
            h_poss_dup_flag = Some is_duplicate;
            h_target_comp_id = target_comp_id;
            h_sender_comp_id = our_comp_id;
            h_sending_time   = curr_time
    };
    
    (* We're simply attaching the message data here. *)
    full_msg_data = msg;

    (** Trailers would be augmented by raw OCaml printers/parsers. *)
    full_msg_trailer = default_fix_trailer
};;

(** Create a logon message we would send out to initiate a connection 
    with another FIX engine. *)
let create_logon_msg ( engine : fix_engine_state ) = 
    let msg_data = Full_FIX_Admin_Msg ( 
        Full_Msg_Logon {
            ln_encrypt_method               = engine.fe_encrypt_method;
            ln_heartbeat_interval           = engine.fe_heartbeat_interval;
            ln_raw_data_length              = None; 
            ln_raw_data                     = None;
            ln_reset_seq_num_flag           = None;
            ln_next_expected_msg_seq_num    = None;
            ln_max_message_size             = None;

            ln_test_message_indicator       = None;
            ln_username                     = None;
            ln_password                     = None;

        } 
    ) in 
    ValidMsg ( 
        create_outbound_fix_msg ( 
            engine.outgoing_seq_num, engine.fe_target_comp_id, 
            engine.fe_comp_id, engine.fe_curr_time, 
            msg_data, false 
        ) 
    )
;;

(** Create a Logoff message. *)
let create_logoff_msg ( engine : fix_engine_state ) = 
    let msg_data = Full_FIX_Admin_Msg (
        Full_Msg_Logoff {
            lo_encoded_text_len     = None;
            lo_encoded_text         = None;
        }
    ) in 
    ValidMsg ( 
        create_outbound_fix_msg ( 
            engine.outgoing_seq_num, engine.fe_target_comp_id, 
            engine.fe_comp_id, engine.fe_curr_time, 
            msg_data, false 
        ) 
    )
;;

(** Create a heartbeat message *)
let create_heartbeat_msg ( engine, tr_id : fix_engine_state * int option) =
    let msg_data = Full_FIX_Admin_Msg (
        Full_Msg_Heartbeat {
            hb_test_req_id = tr_id;
        }
     ) in 
    ValidMsg ( 
        create_outbound_fix_msg ( 
            engine.outgoing_seq_num, engine.fe_target_comp_id, 
            engine.fe_comp_id, engine.fe_curr_time, 
            msg_data, false 
        ) 
    )
;;

(** Create Test Request message. *)
let create_test_request_msg ( engine : fix_engine_state ) =
    let msg_data = Full_FIX_Admin_Msg (
        Full_Msg_Test_Request {
            test_req_id = engine.last_test_req_id;
        }
    ) in
    ValidMsg ( 
        create_outbound_fix_msg ( 
            engine.outgoing_seq_num, engine.fe_target_comp_id, 
            engine.fe_comp_id, engine.fe_curr_time, 
            msg_data, false 
        ) 
    )
;;

(** Create session-rejection message. *)
let create_session_reject_msg ( outbound_seq_num, target_comp_id, comp_id, curr_time, reject_info : 
                                int * fix_string * fix_string * fix_utctimestamp * session_rejected_msg_data  ) = 
    let msg_data = 
        Full_FIX_Admin_Msg (
            Full_Msg_Reject {
                sr_ref_seq_num              = reject_info.srej_msg_msg_seq_num;
                sr_ref_tag_id               = Some (Model_string 0);
                sr_ref_msg_type             = None;
                sr_session_reject_reason    = reject_info.srej_msg_reject_reason;
                sr_text                     = None;
                sr_encoded_text_len         = None;
                sr_encoded_text             = Some (Model_string 0);
            } ) in 
    ValidMsg ( 
        create_outbound_fix_msg ( 
            outbound_seq_num, target_comp_id, comp_id, curr_time, msg_data, false 
        ) 
    )
;;

(** Create business reject message.
    Note: the reason we're separating the ApplicationDown reason is that the parser would not have access to this information. *)
let create_business_reject_msg ( outbound_seq_num, target_comp_id, comp_id , curr_time, reject_info: int * fix_string * fix_string * fix_utctimestamp * biz_rejected_msg_data ) =
    let msg_data = 
        Full_FIX_Admin_Msg (
            Full_Msg_Business_Reject {
                br_ref_seq_num              = reject_info.brej_msg_ref_seq_num;
                br_business_reject_reason   = reject_info.brej_msg_reject_reason;
            }
        ) in 
    ValidMsg ( 
        create_outbound_fix_msg ( 
            outbound_seq_num, target_comp_id, comp_id, curr_time, msg_data, false 
        ) 
    )
;;

(*** ********************************************************************************************************** *)
(***  Mode transition functions.                                                                                *)
(*** ********************************************************************************************************** *)

(** A NO-OPeration *)
let noop ( m, engine : full_valid_fix_msg * fix_engine_state ) = { 
    engine
        with incoming_fix_msg = None
}
;;

(** Convert the rejection information into an outbound BusinessReject message. *)
let business_reject ( rejected_data, engine : biz_rejected_msg_data * fix_engine_state ) =
    let reject_msg = create_business_reject_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, rejected_data 
    ) in {
        engine with
            incoming_fix_msg = None;
            fe_last_time_data_sent = engine.fe_curr_time;
            outgoing_fix_msg = Some reject_msg;
            incoming_seq_num = rejected_data.brej_msg_ref_seq_num;
            outgoing_seq_num = engine.outgoing_seq_num + 1;
        }
;;

(** Convert the rejection information into an outbound Reject message. *)
let session_reject ( rejected_data, engine : session_rejected_msg_data * fix_engine_state ) =
    let reject_msg = create_session_reject_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, rejected_data 
    ) in {
        engine with 
            incoming_fix_msg = None;
            fe_last_time_data_sent = engine.fe_curr_time;
            outgoing_fix_msg = Some reject_msg;
            incoming_seq_num = rejected_data.srej_msg_msg_seq_num;
            outgoing_seq_num = engine.outgoing_seq_num + 1;
        }
;;


(** Here we will only accept an incoming Logon message to establish a connection. *)
let run_no_active_session ( m, engine : full_valid_fix_msg * fix_engine_state ) =
    match m.full_msg_data with 
    | Full_FIX_Admin_Msg msg -> (
        match msg with 
        | Full_Msg_Logon d ->

            if ( engine.fe_encrypt_method <> d.ln_encrypt_method && 
                engine.fe_num_logons_sent >= engine.fe_max_num_logons_sent ) then { 
                    engine with 
                        fe_curr_mode = Error;
                        fe_curr_status = MaxNumLogonMsgsViolated;
            } else 
                begin
                    let engine' = { engine with fe_encrypt_method = d.ln_encrypt_method } in 
                    let logon_msg = create_logon_msg ( engine' ) in { 
                        engine' with
                            fe_initiator            = Some false;
                            outgoing_fix_msg        = Some logon_msg;
                            outgoing_seq_num        = engine.outgoing_seq_num + 1;
                            fe_target_comp_id       = m.full_msg_header.h_sender_comp_id;
                            fe_curr_mode            = ActiveSession;  
                            fe_last_time_data_sent  = engine.fe_curr_time;
                            fe_num_logons_sent      = engine.fe_num_logons_sent + 1;
                    }
                end
        | _ -> engine
        )
    | Full_FIX_App_Msg _ -> engine
;;

(**  *)
let run_logon_sequence ( m, engine : full_valid_fix_msg * fix_engine_state ) =
    let engine' = {
        engine with incoming_fix_msg = None;
    } in
    if m.full_msg_header.h_target_comp_id <> engine.fe_comp_id then 
        engine'
    else
        match m.full_msg_data with
        | Full_FIX_Admin_Msg msg -> (
            match msg with
            | Full_Msg_Logon d -> 
            if engine.fe_encrypt_method <> d.ln_encrypt_method then
                begin
                    let engine' = { engine with fe_encrypt_method = d.ln_encrypt_method } in 
                    let logon_msg = create_logon_msg ( engine' ) in {
                        engine' with
                            outgoing_fix_msg        = Some logon_msg;
                            outgoing_seq_num        = engine.outgoing_seq_num + 1;
                            fe_target_comp_id       = m.full_msg_header.h_sender_comp_id;
                            fe_last_time_data_sent  = engine.fe_curr_time;
                            fe_num_logons_sent      = engine.fe_num_logons_sent + 1;
                    }
                end
            else {
                engine' with 
                    fe_curr_mode = ActiveSession;
                    incoming_seq_num = m.full_msg_header.h_msg_seq_num;
            }
            | _ -> engine'
            )
        | Full_FIX_App_Msg msg -> engine'
;;

(** Response to resend request. Note that we're copyng over the whole list of historic messages -
    we will use the starting/ending indexes to ensure we're only sending out the right ones. 
    Perhaps there's a better way to do this - it's important that we always maintain the spirit
    of 'one_step' - all operations are are atomic. *)
let initiate_Resend ( request, engine : full_msg_resend_request_data * fix_engine_state ) = {
    engine with
        fe_curr_mode = Retransmit;
        fe_retransmit_start_idx = request.rr_begin_seq_num;
        fe_retransmit_end_idx   = request.rr_end_seq_num;
        fe_history_to_send = engine.fe_history;
}
;;

(** We're operating in a normal mode. *)
let run_active_session ( m, engine : full_valid_fix_msg * fix_engine_state ) =

    if not ( msg_consistent ( engine, m.full_msg_header ) ) then {
        (** We've detected an out-of sequence message. We therefore need to 
            transition into Recovery mode and initialize engine state with 
            the message. *)
        engine with 
            fe_curr_mode = Recovery;
            fe_cache = [ m ];
    
    } else
    match m.full_msg_data with 
    | Full_FIX_Admin_Msg adm_msg        ->
        begin 
            match adm_msg with 
            | Full_Msg_Heartbeat hb          -> {
                (* Update information about the last received message. *)    
                    engine with 
                        incoming_seq_num = m.full_msg_header.h_msg_seq_num;
                        incoming_fix_msg = None;
                }
            | Full_Msg_Logon data           -> engine
            | Full_Msg_Logoff data          -> 
                let logoff_msg = create_logoff_msg ( engine ) in {
                    engine with
                        fe_last_time_data_sent  = engine.fe_curr_time;
                        fe_curr_mode            = ShutdownInitiated;
                        outgoing_fix_msg        = Some logoff_msg;
                }
            | Full_Msg_Reject data          -> engine
            | Full_Msg_Business_Reject data -> engine
            | Full_Msg_Resend_Request data  -> initiate_Resend ( data, { engine with fe_after_resend_logout = false } )
            | Full_Msg_Sequence_Reset data  -> engine
            | Full_Msg_Test_Request data    ->
                let hearbeat_msg = create_heartbeat_msg ( engine, Some data.test_req_id ) in {
                    engine with 
                        fe_last_time_data_sent  = engine.fe_curr_time;
                        outgoing_fix_msg        = Some hearbeat_msg;
                }
        end

    | Full_FIX_App_Msg app_msg          -> 
        (** We're processing an application type of message. We just need 
        to append it to the list of outgoing application messages and 
        update the last seq number processed. *) 
        if engine.fe_application_up then {
            engine with
                incoming_seq_num = m.full_msg_header.h_msg_seq_num;
                outgoing_int_msg = Some (ApplicationData app_msg );
                incoming_fix_msg = None;
        } else
            begin
                let biz_reject_data = {
                    brej_msg_ref_seq_num =  m.full_msg_header.h_msg_seq_num;
                    brej_msg_msg_tag        = get_full_msg_tag ( m.full_msg_data );
                    brej_msg_reject_reason  = ApplicationDown;
                    brej_msg_text           = None;
                    brej_msg_encoded_text   = None;
                } in
                business_reject ( biz_reject_data, engine )
            end
;;

(** Here we can only handle a subset of the FIX messages. *)
let replay_single_msg ( m, engine : full_valid_fix_msg * fix_engine_state ) =
    match m.full_msg_data with 
    | Full_FIX_App_Msg app_msg  -> {
            engine with 
            incoming_seq_num = m.full_msg_header.h_msg_seq_num;
            outgoing_int_msg = Some ( ApplicationData app_msg );
        }
    | Full_FIX_Admin_Msg msg    -> {
        engine with 
            incoming_seq_num = m.full_msg_header.h_msg_seq_num;
        }
;; 

(** Run the engine through the replay messages. This is used during recovery. 

    Note that the only session-level message we should receive at this point
    should be a Reject message. We need to ensure that this function cannot 
    lead to another Recovery state. *)
let run_cache_replay ( engine : fix_engine_state ) =
    match engine.fe_cache with 
    | [] -> (* Nothing to process in cache, we've recovered *) {
        engine with
            fe_curr_mode = ActiveSession;
        }
    | x::xs -> replay_single_msg (x, engine)
;;

(** Check to make sure there're no sequence gaps *)
let rec no_seq_gaps ( msg_list, last_seq_num : full_valid_fix_msg list * int) = 
    match msg_list with
    | [] -> true
    | x::xs ->
        if x.full_msg_header.h_msg_seq_num <> ( last_seq_num + 1 ) then 
            false
        else
            no_seq_gaps ( xs, x.full_msg_header.h_msg_seq_num )
;;

(** Is cache valid so that we can transition from recovery?

    Cache is considered valid when:
    1. It is non-empty
    2. The sequence IDs of the messages within cache are continuous (i.e. there're no gaps)
    3. First sequence ID (of the cache) is next message from the last one correctly
        processed. *)
let is_cache_complete ( cache, last_seq_processed : full_valid_fix_msg list * int ) = 
    match cache with 
    | [] -> false
    | x::xs ->
        begin 
            let correct_seq_num = x.full_msg_header.h_msg_seq_num = (last_seq_processed + 1) in 
            let no_gaps = no_seq_gaps ( xs, x.full_msg_header.h_msg_seq_num ) in 
            correct_seq_num && no_gaps
        end
;;

(** Add message to cache so that ordering is maintained. *)
let rec add_to_cache ( m, cache : full_valid_fix_msg * full_valid_fix_msg list ) = 
    match cache with 
    | []        -> [ m ]
    | x::[]     -> if x.full_msg_header.h_msg_seq_num > m.full_msg_header.h_msg_seq_num then [ m; x ] else [ x; m ]
    | x::xs     -> if x.full_msg_header.h_msg_seq_num > m.full_msg_header.h_msg_seq_num then 
                    m::x::xs else ( x :: ( add_to_cache (m, xs) ) )
;;

(** We're in recovery mode. We should add any received messages to our cache.
    Check to see whether next message is complete. *)
let run_recovery ( m, engine : full_valid_fix_msg * fix_engine_state ) = 
    let new_cache = add_to_cache (m, engine.fe_cache) in 
    if is_cache_complete (new_cache, engine.incoming_seq_num) then {
        engine with 
            fe_curr_mode = CacheReplay;
            incoming_fix_msg = None;
    } else {
        engine with
            fe_cache = new_cache;
            incoming_fix_msg = None;
    }
;;

(** We've sent out a Logout message and are now waiting for a confirmation of logout. *) 
let run_shutdown ( m, engine : full_valid_fix_msg * fix_engine_state ) = 
    match m.full_msg_data with 
    | Full_FIX_Admin_Msg ( Full_Msg_Logoff m )          -> { engine with fe_curr_mode = NoActiveSession; }
    | Full_FIX_Admin_Msg ( Full_Msg_Resend_Request m )  -> initiate_Resend ( m, { engine with fe_after_resend_logout = true })
    | _ -> engine
;;

let field_null ( f : int option ) =
    match f with 
    | None      -> true
    | Some x    -> x = 0
;;

let hbeat_interval_null ( interval : fix_duration ) =
    field_null ( interval.dur_years )   &&
    field_null ( interval.dur_months )  && 
    field_null ( interval.dur_days )    && 
    field_null ( interval.dur_hours )   &&
    field_null ( interval.dur_minutes ) &&
    field_null ( interval.dur_seconds )
;;

(** Process incoming internal transition message. *)
let proc_incoming_int_msg ( x, engine : fix_engine_int_msg * fix_engine_state) = 
    match x with
    | TimeChange t          -> 
        let engine' =  { engine with fe_curr_time = t } in
        if engine.fe_curr_mode = ActiveSession then
            begin
                (* First, check whether we need to send out a TestRequest message - if we haven't heard anything in a while *)

                let received_cutoff = utctimestamp_duration_Add ( engine.fe_last_data_received, engine.fe_heartbeat_interval ) in
                let received_cutoff_padded = utctimestamp_duration_Add ( received_cutoff, engine.fe_testreq_interval ) in
                let received_cutoff_violated = utctimestamp_GreaterThan ( t, received_cutoff_padded ) in 

                if received_cutoff_violated then
                    begin
                        let test_request_msg = create_test_request_msg ( engine ) in {
                            engine' with 
                                fe_curr_mode            = WaitingForHeartbeat; 
                                outgoing_fix_msg        = Some test_request_msg;
                                outgoing_seq_num        = engine'.outgoing_seq_num + 1;
                                last_test_req_id        = engine'.last_test_req_id + 1;
                                fe_last_time_data_sent  = engine'.fe_curr_time;
                        }
                    end 
                else

                (* If we have not sent out any data within the last heartbeat_int, need to send a Heatbeat message. *)
                let sent_cutoff = utctimestamp_duration_Add ( engine.fe_last_time_data_sent, engine.fe_heartbeat_interval ) in
                let sent_cutoff_violated =  utctimestamp_GreaterThan ( t, sent_cutoff ) in 

                if sent_cutoff_violated && not ( hbeat_interval_null ( engine.fe_heartbeat_interval )) then
                    begin
                        let heatbeat_msg = create_heartbeat_msg ( engine, None ) in
                            { engine' with
                                outgoing_seq_num        = engine'.outgoing_seq_num + 1;
                                outgoing_fix_msg        = Some heatbeat_msg;
                                fe_last_time_data_sent  = engine'.fe_curr_time; } 
                    end
                else
                    engine'
            end

        else if engine.fe_curr_mode = WaitingForHeartbeat then
            begin
                let received_cutoff = utctimestamp_duration_Add ( engine.fe_last_time_data_sent, engine.fe_heartbeat_interval ) in
                let received_cutoff_padded = utctimestamp_duration_Add ( received_cutoff, engine.fe_testreq_interval ) in 
                if utctimestamp_GreaterThan ( t, received_cutoff_padded ) then
                    begin
                        let logoff_msg = create_logoff_msg ( engine ) in { 
                            engine' with
                                fe_curr_mode            = NoActiveSession;
                                fe_curr_status          = ConnTerminatedWithoutLogoff;
                                outgoing_fix_msg        = Some logoff_msg;
                                outgoing_seq_num        = engine'.outgoing_seq_num + 1;
                                fe_last_time_data_sent  = engine'.fe_curr_time;
                        }
                    end
                else
                    engine'
            end
        else
            engine'

    | CreateSession sd      ->
        if engine.fe_curr_mode = NoActiveSession then
            begin
                (* Let's initiate a session here. *)
                let engine = { engine with fe_target_comp_id = sd.dest_comp_id } in 
                let logon_msg = create_logon_msg ( engine ) in { 
                    engine with 
                        fe_last_time_data_sent = engine.fe_curr_time;
                        outgoing_fix_msg = Some logon_msg;
                        fe_curr_mode     = LogonInitiated;
                        fe_initiator     = Some true;
                        incoming_fix_msg = None;
                        outgoing_seq_num = engine.outgoing_seq_num + 1;
                    }
            end
        else 
        (* We just disregard it here - this may vary for different implementations. *)
            engine

    | ApplicationData ad    ->
        begin
            match engine.fe_curr_mode with 
            | ActiveSession     -> 
                let app_msg_data = Full_FIX_App_Msg ad in
                let msg = create_outbound_fix_msg (
                    engine.outgoing_seq_num, engine.fe_target_comp_id, 
                    engine.fe_comp_id, engine.fe_curr_time,     
                    app_msg_data, false
                ) in { 
                    engine with 
                        fe_last_time_data_sent = engine.fe_curr_time;
                        outgoing_fix_msg = Some (ValidMsg ( msg )); 
                        incoming_int_msg = None;
                        outgoing_seq_num = msg.full_msg_header.h_msg_seq_num;
                }
            | _ -> engine
        end
    | ManualIntervention mi -> engine
        (* TODO implement this to have more detailed user data that would reset engine state. *)
;;

(** Process incoming FIX message here. *)
let proc_incoming_fix_msg ( m, engine : full_top_level_msg * fix_engine_state) = 
    match m with
    | Garbled                   -> engine   (** Garbled messages are simply ignored. Note the timestamp is not updated. *)
    | SessionRejectedMsg data   -> 
        begin
            match engine.fe_curr_mode with
            | ActiveSession         -> let state' = session_reject ( data, engine ) in { state' with fe_last_data_received = engine.fe_curr_time }
            | _                     -> engine
        end
    | BusinessRejectedMsg data  ->
        begin
            match engine.fe_curr_mode with 
            | ActiveSession         -> let state' = business_reject ( data, engine ) in { state' with fe_last_data_received = engine.fe_curr_time }
            | _                     -> engine   (** *)
        end
    | ValidMsg msg              -> let state' =
        begin
            match engine.fe_curr_mode with
            | NoActiveSession       -> run_no_active_session ( msg, engine )
            | LogonInitiated        -> run_logon_sequence ( msg, engine )
            | ActiveSession         -> run_active_session ( msg, engine )
            | GapDetected           -> run_recovery ( msg, engine )
            | Recovery              -> run_recovery ( msg, engine )
            | ShutdownInitiated     -> run_shutdown ( msg, engine )
            | Error                 -> noop ( msg, engine )
            | WaitingForHeartbeat   -> noop ( msg, engine) 
            | _                     -> { engine with incoming_fix_msg = Some ( ValidMsg msg ) }
        end in { state' with fe_last_data_received = engine.fe_curr_time }
;;

(** This sets validity of the incoming internal messages.
    TODO: Use the generated validity checks. *)
let is_int_message_valid ( engine : fix_engine_state ) =
    match engine.incoming_int_msg with 
    | None                      -> true
    | Some int_msg              ->
    match int_msg with 
    | TimeChange t              -> utctimestamp_LessThan ( engine.fe_curr_time, t) && 
                                    is_valid_utctimestamp ( t )
    | ApplicationData d         -> true
    | CreateSession d           -> 
        begin
            match engine.fe_curr_mode with
            | NoActiveSession       -> true
            | _                     -> false
        end
    | ManualIntervention _      -> true
;;

(** Properties of a valid state. 

    TODO: augment these properties and verify that if we're in a good state, cannot
    transition out of it (i.e. new state would always be valid).

    TODO: once we have the full library of checks for incoming messages
    we need to maintain that every state transition from a valid state 
    would result in another valid state. *)
let is_state_valid ( engine : fix_engine_state ) =
    utctimestamp_LessThanEqual ( engine.fe_last_data_received, engine.fe_curr_time ) &&
    utctimestamp_LessThanEqual ( engine.fe_last_time_data_sent, engine.fe_curr_time ) &&
    is_valid_utctimestamp ( engine.fe_curr_time ) && 
    is_valid_utctimestamp ( engine.fe_last_time_data_sent ) && 
    is_valid_utctimestamp ( engine.fe_last_data_received ) &&
    is_valid_duration ( engine.fe_heartbeat_interval ) &&
    is_valid_duration ( engine.fe_testreq_interval )
;;

(** The main transition function. *)
let one_step ( engine : fix_engine_state ) =
    (** Check if we're in the middle of replaying our cache. *)
    if engine.fe_curr_mode = CacheReplay then
        run_cache_replay (engine)
    
    (** If we still need to retransmit our messages out to the receiving engine. *)
    else if engine.fe_curr_mode = Retransmit then 
        run_retransmit (engine)
    
    else
        (** Now we look to process internal (coming from our application) and external (coming from
            another FIX engine) messages. *)
        match engine.incoming_int_msg with 
        | Some i    -> proc_incoming_int_msg (i, { engine with incoming_int_msg = None } )
        | None      -> 
            begin
                match engine.incoming_fix_msg with 
                | Some m    -> proc_incoming_fix_msg (m, { engine with incoming_fix_msg = None } )
                | None      -> engine
            end
;;
