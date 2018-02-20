(** FIX 4.4 engine transition functions. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    fix_engine_transitions.ml
    
*)


open Datetime;;
open Base_types;;
open Full_admin_enums;;
open Full_admin_messages;;
open Full_app_messages;;
open Full_messages;;
open Fix_engine_state;;
open Fix_engine_utils;;
open Full_admin_tags;;
open Full_message_tags;;

(** In many abnormal cases we need to send out the Logout messages and
    transition to ShutdownInitiated state. *)
let logoff_and_shutdown ( engine : fix_engine_state ) = 
    let logoff_msg = create_logoff_msg ( engine ) in 
    { engine with
        fe_last_time_data_sent  = engine.fe_curr_time;
        fe_curr_mode            = ShutdownInitiated;
        outgoing_fix_msg        = Some ( ValidMsg ( logoff_msg ));
        outgoing_seq_num        = engine.outgoing_seq_num + 1;
        fe_history              = add_msg_to_history ( engine.fe_history, logoff_msg );
    }
;;

(** Before sending out a historic message, we need to:
    - move the sequence number if it is too low
    - set PossibleDuplicate flag 
    - move historic SendingTime to OrigSendingTime
    - update SendingTime *)
let make_resend_message (msg, curr_time, start_seq) = { 
    msg with full_msg_header = { msg.full_msg_header with
        h_msg_seq_num = 
            if msg.full_msg_header.h_msg_seq_num < start_seq
            then start_seq 
            else msg.full_msg_header.h_msg_seq_num;
        h_poss_dup_flag = Some true;
        h_orig_sending_time = Some msg.full_msg_header.h_sending_time;
        h_sending_time = curr_time
        } 
    }
;;

(** We're in the middle of retransmitting historic messages. 
    Note: when we transition into Retransmit mode, we set up a 
    queue with messages that should be sent out. These messages are a function
    of the parameters that were sent to the engine. *)
let run_retransmit ( engine : fix_engine_state ) =
    match engine.fe_history_to_send with 
    | [] -> 
        (* We're done sending out the messages and will get back to the stored state *)
        { engine with fe_curr_mode = engine.fe_mode_after_resend }
    | msgx::msgy::tail ->  
        if msgy.full_msg_header.h_msg_seq_num <= engine.fe_retransmit_start_idx then { 
            (* We haven't 'reached' the starting message to be sent out. Continue. *)
            engine with
                fe_history_to_send = msgy::tail;
                outgoing_fix_msg = None;
        } else if engine.fe_retransmit_end_idx <> 0 && engine.fe_retransmit_end_idx < msgx.full_msg_header.h_msg_seq_num then {
            (* We have over-shot the last message. Stopping. 
               Note that fe_retransmit_end_idx = 0 means that all messages 
               starting from the fe_retransmit_start_idx should be retransmitted. *)  
            engine with
                fe_history_to_send = [];
                outgoing_fix_msg = None;
        } else { 
            (** We're in the zone: format and send out the message *)
            engine with 
                fe_history_to_send = msgy::tail;
                outgoing_fix_msg = Some ( ValidMsg (
                    make_resend_message (msgx, engine.fe_curr_time, engine.fe_retransmit_start_idx) 
                ) );
        }
    (** treting a special case when there is only one message in history *)
    | msg::[] ->
        if msg.full_msg_header.h_msg_seq_num < engine.fe_retransmit_start_idx then {
            (** TODO: If we are here, then  history doesn't contain the requested messages.
                Investigate what is the correct behavior in htis case. ( Reject, probably? )*)
            engine with fe_history_to_send = []; outgoing_fix_msg = None;
        } else if engine.fe_retransmit_end_idx <> 0 && engine.fe_retransmit_end_idx < msg.full_msg_header.h_msg_seq_num then {
            engine with fe_history_to_send = []; outgoing_fix_msg = None;
        } else {
            engine with
                fe_history_to_send = [];
                outgoing_fix_msg = Some ( ValidMsg (
                    make_resend_message (msg, engine.fe_curr_time,engine.fe_retransmit_start_idx) 
                ) );
        }

;;


(** Here we will only accept an incoming Logon message to establish a connection. *)
let run_no_active_session ( m, engine : full_valid_fix_msg * fix_engine_state ) =
    match m.full_msg_data with 
    | Full_FIX_Admin_Msg ( Full_Msg_Logon d ) ->
        begin
            (* TODO: better timestamp comparison *)
            if (m.full_msg_header.h_sending_time.utc_timestamp_year <> engine.fe_curr_time.utc_timestamp_year ) then
                logoff_and_shutdown engine
            else if ( engine.fe_encrypt_method <> d.ln_encrypt_method && 
                engine.fe_num_logons_sent >= engine.fe_max_num_logons_sent ) then { 
                    engine with 
                        fe_curr_mode = Error;
                        fe_curr_status = MaxNumLogonMsgsViolated;
            } else 
                begin
                    let engine  = { engine with 
                            fe_encrypt_method  = d.ln_encrypt_method;
                            fe_heartbeat_interval   = d.ln_heartbeat_interval 
                        } in
                    let logon_msg = create_logon_msg ( engine ) in
                    let engine = { engine with 
                            fe_initiator            = Some false;
                            (*  TODO -- check if we really have to accept all incoming senders *)
                            outgoing_fix_msg        = Some (ValidMsg ( logon_msg ));
                            outgoing_seq_num        = engine.outgoing_seq_num + 1;
                            fe_target_comp_id       = m.full_msg_header.h_sender_comp_id;
                            fe_last_time_data_sent  = engine.fe_curr_time;
                            fe_num_logons_sent      = engine.fe_num_logons_sent + 1;
                        } in 
                    if m.full_msg_header.h_msg_seq_num < (engine.incoming_seq_num + 1) then
                        logoff_and_shutdown engine
                    else if msg_is_sequence_gap ( engine, m.full_msg_header )
                    then { engine with
                        incoming_seq_num  = engine.incoming_seq_num + 1;
                        fe_curr_mode      = GapDetected;
                    } else 
                    { engine with
                        fe_curr_mode      = ActiveSession;
                        incoming_seq_num  = m.full_msg_header.h_msg_seq_num;
                        fe_history        = add_msg_to_history ( engine.fe_history, logon_msg );
                    }
                end
        end
    | _ -> engine
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
        | Full_FIX_Admin_Msg ( Full_Msg_Logon d ) ->
            begin
                if engine.fe_encrypt_method <> d.ln_encrypt_method then
                    begin
                        let engine' = { engine with fe_encrypt_method = d.ln_encrypt_method } in 
                        let logon_msg = create_logon_msg ( engine' ) in {
                            engine' with
                                outgoing_fix_msg        = Some ( ValidMsg (logon_msg ));
                                outgoing_seq_num        = engine.outgoing_seq_num + 1;
                                fe_target_comp_id       = m.full_msg_header.h_sender_comp_id;
                                fe_last_time_data_sent  = engine.fe_curr_time;
                                fe_num_logons_sent      = engine.fe_num_logons_sent + 1;
                                fe_history              = add_msg_to_history ( engine.fe_history, logon_msg );
                        }
                    end
                else {
                    engine' with 
                        fe_curr_mode = ActiveSession;
                        incoming_seq_num = m.full_msg_header.h_msg_seq_num;
                }
            end
        | _ -> engine'
;;



(** Response to resend request. Note that we're copyng over the whole list of historic messages -
    we will use the starting/ending indexes to ensure we're only sending out the right ones. 
    Perhaps there's a better way to do this - it's important that we always maintain the spirit
    of 'one_step' - all operations are are atomic. *)
let initiate_Resend ( return_mode, request, engine : fix_engine_mode * full_msg_resend_request_data * fix_engine_state ) = {
    engine with
        fe_curr_mode = Retransmit;
        fe_retransmit_start_idx = request.rr_begin_seq_num;
        fe_retransmit_end_idx = request.rr_end_seq_num;
        fe_history_to_send = List.rev engine.fe_history; 
        fe_mode_after_resend = return_mode;
        (* Important note: We store messages in a reverse-chronological order b/c on each outbound
        message we have to do pattern matching on the list to ensure consecutive GapFill messages
        are 'compressed' into one. OCaml pattern matching doesn't work on last elements, hence 
        we maintain it in a reverse order, but do List.rev when we need to send it out. *)
};;


let attempt_sequence_reset (engine, msg_seq_num, new_seq_num : fix_engine_state * int * int ) = 
    if new_seq_num - 1 < engine.incoming_seq_num then 
    (** The sequence reset can only increase the sequence number. If a sequence reset is attempting 
        to decrease the next expected sequence number the message should be rejected and 
        treated as a serious error. *)
        let reject = {
            srej_msg_msg_seq_num   = msg_seq_num;
            srej_msg_field_tag     = Some (Full_Admin_Field_Tag Full_Msg_NewSeqNo_Tag);
            srej_msg_msg_type      = Some (Full_Admin_Msg_Tag Full_Msg_Sequence_Reset_Tag);
            srej_msg_reject_reason = Some ValueIsIncorrect;
            srej_text              = None; 
            srej_encoded_text_len  = None;
            srej_encoded_text      = None;
        } in 
        let engine' = session_reject ( reject , engine ) in
        (** In this case I'm not sure what one has to do with the incoming_seq_num.
            Most logical thing seems to just not change it at all*)
        { engine' with incoming_seq_num = engine.incoming_seq_num }
    else {
        engine with incoming_seq_num = new_seq_num - 1
    }
;;

(** We're operating in a normal mode. *)
let run_active_session ( m, engine : full_valid_fix_msg * fix_engine_state ) =
    let header = m.full_msg_header in
    (** SequenceResets that dont have a GapFill flag get special treatment -- their 
        sequence numbers are ignored entirely. *)
    match get_critical_reset_seq_num m.full_msg_data with 
    | Some new_seq_num ->  attempt_sequence_reset (engine, header.h_msg_seq_num, new_seq_num) | None -> 
    (** In all other cases we first check sequence numbers / duplicate flags*)
    let msgtag = get_full_msg_tag m.full_msg_data in
    (** Check msg header. If something is wrong - send the reject and start shutdown. *)
    match validate_message_header ( engine, header, msgtag ) with 
    | Some engine -> engine | None ->
    (** Performing squence number checks *)
    let is_duplicate = header.h_msg_seq_num < (engine.incoming_seq_num + 1) in
    let possdup = match header.h_poss_dup_flag with Some true -> true | _ -> false in
    if is_duplicate && not possdup then 
        (** Message is a duplicate, but no PossibleDuplicate flag -- we instantly logoff *)
        logoff_and_shutdown engine
    else if is_duplicate then 
        (** Message is a duplicate and passed all checks -- ignore it. *)
        engine
    else if msg_is_sequence_gap ( engine, m.full_msg_header ) then {
        (** We've detected a gap in messages. We therefore need to 
            transition into GapDetected mode. We place the message into the cahce. *)
        engine with 
            fe_curr_mode = GapDetected;
            incoming_seq_num  = engine.incoming_seq_num + 1;
            fe_cache = [ m ];
    } else
    (** Message sequence number is OK -- lets process its data *)
    match m.full_msg_data with 
    | Full_FIX_Admin_Msg adm_msg ->
        begin 
            match adm_msg with 
            | Full_Msg_Heartbeat hb          -> {
                (* Update information about the last received message. *)
                    engine with 
                        incoming_seq_num = m.full_msg_header.h_msg_seq_num;
                        incoming_fix_msg = None;
                }
            | Full_Msg_Logon data           -> engine
            | Full_Msg_Logoff data          -> logoff_and_shutdown ( engine )
            | Full_Msg_Reject data          -> { engine with incoming_seq_num = m.full_msg_header.h_msg_seq_num }
            | Full_Msg_Business_Reject data -> engine
            | Full_Msg_Resend_Request data  -> 
                let engine = { engine with 
                    incoming_seq_num = m.full_msg_header.h_msg_seq_num
                } in initiate_Resend ( ActiveSession, data, engine )
            | Full_Msg_Sequence_Reset data  -> attempt_sequence_reset (engine, header.h_msg_seq_num, data.seqr_new_seq_no)
            | Full_Msg_Test_Request data    ->
                let hearbeat_msg = create_heartbeat_msg ( engine, Some data.test_req_id ) in {
                    engine with 
                        fe_last_time_data_sent  = engine.fe_curr_time;
                        outgoing_fix_msg        = Some ( ValidMsg ( hearbeat_msg ));
                        fe_history              = add_msg_to_history ( engine.fe_history, hearbeat_msg );
                        outgoing_seq_num        = engine.outgoing_seq_num + 1;
                        incoming_seq_num        = m.full_msg_header.h_msg_seq_num;
                }
        end
    | Full_FIX_App_Msg app_msg          -> 
        (** We're processing an application type of message. We just need 
        to append it to the list of outgoing application messages and 
        update the last seq number processed. *)
         
        if engine.fe_application_up then
            let out_int = match m.full_msg_header.h_poss_resend with 
            | Some true -> OutIntMsg_ResendApplicationData app_msg 
            |         _ -> OutIntMsg_ApplicationData app_msg  in {
            engine with
                incoming_seq_num = m.full_msg_header.h_msg_seq_num;
                outgoing_int_msg = Some out_int;
                incoming_fix_msg = None;
        } else
            begin
                let biz_reject_data = { 
                    brej_msg_ref_seq_num    = m.full_msg_header.h_msg_seq_num;
                    brej_msg_msg_tag        = get_full_msg_tag ( m.full_msg_data );
                    brej_msg_reject_reason  = ApplicationDown;
                    brej_msg_field_tag      = None;
                    brej_msg_text           = None;
                    brej_msg_encoded_text   = None;
                } in
                business_reject ( biz_reject_data, engine )
            end
;;

(** We've force-requested a heartbeat message from the other end and waiting for it to come. 
    TODO: We're ignoring all other messages -- check the specs if that is a correct behavior *)
let run_wait_heartbeat ( msg, engine ) =
    match msg.full_msg_data with
    | Full_FIX_Admin_Msg ( Full_Msg_Heartbeat d ) -> 
        let engine = {engine with fe_curr_mode = ActiveSession } in
        run_active_session  (msg , engine)
    | _ -> engine
;;   

(** We're in a GapDetected state. Sending out resend request and transitioning into Recovery.*)
let run_gap_detected ( engine : fix_engine_state ) = 
    let resend_msg = create_resend_request_msg (engine) in
    { engine with
        fe_curr_mode     = Recovery;
        fe_last_time_data_sent = engine.fe_curr_time;
        outgoing_fix_msg = Some ( ValidMsg ( resend_msg ) );
        fe_history       = add_msg_to_history ( engine.fe_history, resend_msg );
        outgoing_seq_num = engine.outgoing_seq_num + 1;
    }
;; 


(** Here we can only handle a subset of the FIX messages. *)
let replay_single_msg ( m, engine : full_valid_fix_msg * fix_engine_state ) =
    match m.full_msg_data with 
    | Full_FIX_App_Msg app_msg -> {
        engine with 
            incoming_seq_num = m.full_msg_header.h_msg_seq_num;
            outgoing_int_msg = Some ( OutIntMsg_ApplicationData app_msg );
            incoming_fix_msg = None;
        }
    | Full_FIX_Admin_Msg msg -> {
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
    | x::xs -> 
        let engine = replay_single_msg (x, engine) in
        { engine with fe_cache = xs }
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

(** 
    Is cache valid so that we can transition from recovery?

    Cache is considered valid when:
    1. It is non-empty
    2. The sequence IDs of the messages within cache are continuous (i.e. there're no gaps)
    3. First sequence ID (of the cache) is next message from the last one correctly processed. *)
let is_cache_complete ( cache, last_seq_processed : full_valid_fix_msg list * int ) = 
    match cache with
    | [] -> false
    | x::xs ->
        begin 
            let correct_seq_num = x.full_msg_header.h_msg_seq_num = last_seq_processed in 
            let no_gaps = no_seq_gaps ( xs, x.full_msg_header.h_msg_seq_num ) in 
            correct_seq_num && no_gaps
        end
;;

(** Add message to cache so that ordering is maintained. *)
let rec add_to_cache ( m, cache : full_valid_fix_msg * full_valid_fix_msg list ) = 
    match cache with 
    | []    -> [ m ]
    | [x]   -> if x.full_msg_header.h_msg_seq_num > m.full_msg_header.h_msg_seq_num then [ m; x ] else [ x; m ]
    | x::xs -> if x.full_msg_header.h_msg_seq_num > m.full_msg_header.h_msg_seq_num then 
                m::x::xs else ( x :: ( add_to_cache (m, xs) ) )
;;

(** We're in recovery mode. 
    Logoff and ResendRequest messages must be processed.
    We should add any other received messages are addted to the cache.
    Transition to CacheReplay when the cahce is complete. *)
let run_recovery ( m, engine : full_valid_fix_msg * fix_engine_state ) = 
    match m.full_msg_data with 
    | Full_FIX_Admin_Msg (Full_Msg_Logoff m) -> logoff_and_shutdown ( engine )
    | Full_FIX_Admin_Msg (Full_Msg_Resend_Request m) -> initiate_Resend ( Recovery, m, engine)
    | _ ->
    let new_cache = add_to_cache (m, engine.fe_cache) in 
    if is_cache_complete (new_cache, engine.incoming_seq_num) then {
        engine with 
            fe_cache = new_cache;
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
    | Full_FIX_Admin_Msg ( Full_Msg_Resend_Request m )  -> 
    (* Since after initiating a Logoff, we can still process Resend request. *)
        initiate_Resend ( ShutdownInitiated, m, engine)
    | _ -> engine
;;
