(** FIX 4.4 engine top level transition functions and one_step *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    fix_engine.ml
    
*)

(* @meta[imandra_ignore] on @end *)
open Datetime;;
open Full_admin_enums;;
open Full_admin_messages;;
open Full_app_messages;;
open Full_messages;;
open Fix_engine_state;;
open Fix_engine_utils;;
open Fix_engine_transitions;;
(* @meta[imandra_ignore] off @end *)

(** Process incoming internal transition message. *)
let proc_incoming_int_msg ( x, engine : fix_engine_int_inc_msg * fix_engine_state) = 
    match x with
    | IncIntMsg_TimeChange t -> 
        let engine' =  { engine with fe_curr_time = t } in
        if engine.fe_curr_mode = ActiveSession then
            begin
                (* First, check whether we need to send out a TestRequest message - if we haven't heard anything in a while *)
                let received_cutoff = utctimestamp_duration_Add engine.fe_last_data_received engine.fe_heartbeat_interval  in
                let received_cutoff_padded = utctimestamp_duration_Add received_cutoff engine.fe_testreq_interval in
                let received_cutoff_violated = utctimestamp_GreaterThan t received_cutoff_padded in 

                if received_cutoff_violated then
                    begin
                        let test_request_msg = create_test_request_msg ( engine ) in {
                            engine' with 
                                fe_curr_mode            = WaitingForHeartbeat; 
                                outgoing_fix_msg        = Some ( ValidMsg (test_request_msg));
                                outgoing_seq_num        = engine'.outgoing_seq_num + 1;
                                last_test_req_id        = engine'.last_test_req_id + 1;
                                fe_last_time_data_sent  = engine'.fe_curr_time;
                                fe_history              = add_msg_to_history ( engine'.fe_history, test_request_msg );
                        }
                    end 
                else

                (* If we have not sent out any data within the last heartbeat_int, need to send a Heatbeat message. *)
                let sent_cutoff = utctimestamp_duration_Add engine.fe_last_time_data_sent engine.fe_heartbeat_interval in
                let sent_cutoff_violated = utctimestamp_GreaterThan t sent_cutoff in 

                if sent_cutoff_violated && not ( hbeat_interval_null ( engine.fe_heartbeat_interval )) then
                    begin
                        let heartbeat_msg = create_heartbeat_msg ( engine, None ) in {
                            engine' with
                                outgoing_seq_num        = engine'.outgoing_seq_num + 1;
                                outgoing_fix_msg        = Some ( ValidMsg ( heartbeat_msg ));
                                fe_last_time_data_sent  = engine'.fe_curr_time;
                                fe_history              = add_msg_to_history ( engine'.fe_history, heartbeat_msg );
                            } 
                    end
                else
                    engine'
            end

        else if engine.fe_curr_mode = WaitingForHeartbeat then
            begin
                let received_cutoff = utctimestamp_duration_Add engine.fe_last_time_data_sent engine.fe_heartbeat_interval in
                let received_cutoff_padded = utctimestamp_duration_Add received_cutoff engine.fe_testreq_interval in 
                if utctimestamp_GreaterThan t received_cutoff_padded then
                    begin
                        let logoff_msg = create_logoff_msg ( engine ) in { 
                            engine' with
                                fe_curr_mode            = NoActiveSession;
                                fe_curr_status          = ConnTerminatedWithoutLogoff;
                                outgoing_fix_msg        = Some ( ValidMsg ( logoff_msg ));
                                outgoing_seq_num        = engine'.outgoing_seq_num + 1;
                                fe_last_time_data_sent  = engine'.fe_curr_time;
                                fe_history              = add_msg_to_history ( engine.fe_history, logoff_msg );
                        }
                    end
                else
                    engine'
            end
        else
            engine'

    | IncIntMsg_CreateSession sd ->
        if engine.fe_curr_mode = NoActiveSession then
            begin
                (* Let's initiate a session here. *)
                let engine = { engine with fe_target_comp_id = sd.dest_comp_id } in 
                let logon_msg = create_logon_msg ( engine ) in { 
                    engine with 
                        fe_last_time_data_sent = engine.fe_curr_time;
                        outgoing_fix_msg = Some ( ValidMsg (logon_msg));
                        fe_curr_mode     = LogonInitiated;
                        fe_initiator     = Some true;
                        incoming_fix_msg = None;
                        outgoing_seq_num = engine.outgoing_seq_num + 1;
                        fe_history       = add_msg_to_history ( engine.fe_history, logon_msg );
                    }
            end
        else {
                engine with
                    incoming_int_msg    = None;
                    outgoing_int_msg    = Some OutIntMsg_Reject 
        }

    | IncIntMsg_ApplicationData ad ->
        begin
            match engine.fe_curr_mode with 
            | ActiveSession | CacheReplay -> 
                let app_msg_data = Full_FIX_App_Msg ad in
                let msg = create_outbound_fix_msg (
                    engine.outgoing_seq_num, engine.fe_target_comp_id, 
                    engine.fe_comp_id, engine.fe_curr_time,     
                    app_msg_data, false
                ) in { 
                    engine with 
                        fe_last_time_data_sent  = engine.fe_curr_time;
                        outgoing_fix_msg        = Some (ValidMsg ( msg )); 
                        incoming_int_msg        = None;
                        outgoing_seq_num        = engine.outgoing_seq_num + 1;
                        fe_history              = add_msg_to_history ( engine.fe_history, msg );
                }
            | _ -> engine
        end
        
    | IncIntMsg_ManualIntervention mi -> {
        engine with
            incoming_int_msg            = None;
            outgoing_int_msg            = Some OutIntMsg_Reject 
        }

    | IncIntMsg_EndSession ->
        begin
            match engine.fe_curr_mode with 
            | ActiveSession -> 
                let msg = create_logoff_msg ( engine ) in {
                    engine with 
                        fe_last_time_data_sent  = engine.fe_curr_time;
                        fe_curr_mode            = ShutdownInitiated;
                        outgoing_fix_msg        = Some (ValidMsg ( msg ));
                        incoming_int_msg        = None;
                        outgoing_seq_num        = engine.outgoing_seq_num + 1;
                        fe_history              = add_msg_to_history ( engine.fe_history, msg );
                } 
            | _ ->  {
                engine with
                    incoming_int_msg            = None;
                    outgoing_int_msg            = Some OutIntMsg_Reject 
            }
        end 
;;

(** Process incoming FIX message here. *)
let proc_incoming_fix_msg ( m, engine : full_top_level_msg * fix_engine_state) = 
    print_endline ("Incoming " ^ string_of_int engine.incoming_seq_num) ;
    match m with
    | Garbled                   -> engine   (** Garbled messages are simply ignored. Note the timestamp is not updated. *)
    | SessionRejectedMsg data   -> 
        begin
            match engine.fe_curr_mode with
            | ActiveSession         -> let state' = session_reject ( data, engine ) in 
                                       { state' with fe_last_data_received = engine.fe_curr_time }
            | _                     -> engine
        end
    | BusinessRejectedMsg data  ->
        begin
            match engine.fe_curr_mode with 
            | ActiveSession         -> let state' = business_reject ( data, engine ) in 
                                       { state' with fe_last_data_received = engine.fe_curr_time }
            | _                     -> engine   
        end
    | ValidMsg msg              -> let state' =
        begin
            match engine.fe_curr_mode with
            | NoActiveSession       -> run_no_active_session ( msg, engine )
            | LogonInitiated        -> run_logon_sequence ( msg, engine )
            | ActiveSession         -> run_active_session ( msg, engine )
            | Recovery              -> run_recovery ( msg, engine )
            | ShutdownInitiated     -> run_shutdown ( msg, engine )
            | Error                 -> noop ( msg, engine )
            | WaitingForHeartbeat   -> run_wait_heartbeat ( msg, engine) 
            | _                     -> { engine with incoming_fix_msg = Some ( ValidMsg msg ) }
        end in { state' with fe_last_data_received = engine.fe_curr_time }
;;

(** This sets validity of the incoming internal messages.*)
let is_int_message_valid ( engine : fix_engine_state ) =
    match engine.incoming_int_msg with 
    | None -> true
    | Some int_msg ->
    match int_msg with 
    | IncIntMsg_TimeChange t -> (utctimestamp_LessThan engine.fe_curr_time t ) && is_valid_utctimestamp ( t )
    | IncIntMsg_ApplicationData d -> true
    | IncIntMsg_CreateSession d -> 
        begin
            match engine.fe_curr_mode with
            | NoActiveSession -> true
            | _ -> false
        end
    | IncIntMsg_ManualIntervention _ -> true
    | IncIntMsg_EndSession -> engine.fe_curr_mode = ActiveSession
;;

(** The main transition function. *)
let one_step ( engine : fix_engine_state ) =
    match engine.incoming_int_msg with 
        | Some i -> proc_incoming_int_msg (i, { engine with incoming_int_msg = None } )
        | None -> 
    match engine.fe_curr_mode with     
    (** Check if we're in the middle of replaying our cache. *)
    | CacheReplay -> run_cache_replay (engine)
    (** If gap is detected -- we'll send resend request and move to recovery mode. *)
    | GapDetected  -> run_gap_detected (engine)
    (** If we still need to retransmit our messages out to the receiving engine. *)
    | Retransmit   -> run_retransmit (engine)
    (** We need to send out Logoff and transition to ShutdownInitiated *)
    | ShuttingDown -> logoff_and_shutdown (engine)
    (** Now we look to process internal (coming from our application) and external (coming from
        another FIX engine) messages. *)
    | _ -> begin match engine.incoming_fix_msg with 
        | Some m -> proc_incoming_fix_msg (m, { engine with incoming_fix_msg = None } )
        | None -> engine
    end
;;
