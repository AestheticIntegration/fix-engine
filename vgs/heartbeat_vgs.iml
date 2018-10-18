(** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    VGs covering behaviour of Heartbeat message ( Vol 2, page 16 ).

    fix_heartbeat_vgs.ml

*)

open Datetime;;
open Fix_engine;;
open Fix_engine_state;;
open Fix_engine_utils;;
open Full_admin_messages;;
open Full_messages;;


(*** *************************************************************************************** *)
(**
    
    Heartbeat VG.1

    "When either end of a FIX connection has not sent any data for [HeartBtInt] seconds, it 
      will transmit a Heartbeat message."

    Notes: we transform this statement into 2 VGs:
        - VG.1.1 -- any outbound message will result in an updated 'fe_last_time_data_sent' 
                        field
        - VG.1.2 -- any time update will result in check whether Heartbeat should be sent out
*)
(*** *************************************************************************************** *)

(** VG.1.1 *)
theorem last_time_data_sent_gets_updated ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in
    let cond = 
        begin
            engine.outgoing_fix_msg = None && engine'.outgoing_fix_msg <> None &&
            engine.fe_curr_mode <> Retransmit
        end in
    cond ==> (engine'.fe_last_time_data_sent = engine'.fe_curr_time )
;;

(** VG.1.2 *)

let outbound_msg_heartbeat ( m : full_top_level_msg option )=
    match m with
    | Some ( ValidMsg vmsg )  ->
        begin 
            match vmsg.full_msg_data with 
            | Full_FIX_Admin_Msg admin_msg  ->
                begin 
                    match admin_msg with 
                    | Full_Msg_Heartbeat _      -> true
                    | _                         -> false
                end 
            | _ -> false
        end
    | _ -> false
;;

let time_update_received ( m, last_time_data_sent, last_time_data_received, hbeat_interval : fix_engine_int_inc_msg option * fix_utctimestamp * fix_utctimestamp * fix_duration ) =
    match m with
    | Some ( IncIntMsg_TimeChange  tc_data ) -> 
        begin 
            let valid_send_time = utctimestamp_duration_Add last_time_data_sent hbeat_interval  in
            let valid_received_time = utctimestamp_duration_Add last_time_data_received hbeat_interval in
            utctimestamp_GreaterThan tc_data valid_send_time && utctimestamp_GreaterThan valid_received_time tc_data 
        end
    | _ -> false
;;

theorem hbeat_sent_if_no_data_sent ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in 
    let cond =
        begin 
            not ( hbeat_interval_null ( engine.fe_heartbeat_interval )) &&
            engine.fe_curr_mode = ActiveSession && 
            is_int_message_valid ( engine ) && 
            is_state_valid ( engine ) && 
            time_update_received ( engine.incoming_int_msg, engine.fe_last_time_data_sent, engine.fe_last_data_received, engine.fe_heartbeat_interval )
        end in
    cond ==> outbound_msg_heartbeat ( engine'.outgoing_fix_msg )
;;

(** **************************************************************************************** *)
(**

    Heartbeat VG.2

    "If HeartBtInt is set to zero then no regular heartbeat messages will be generated. Note 
    that a test request message can still be sent independent of the value of the HeartBtInt,
    which will force a Heartbeat message."

*)
(** **************************************************************************************** *)


let outbound_msg_not_heartbeat ( m : full_top_level_msg option )=
    match m with 
    | Some ( ValidMsg vmsg )  ->
        begin 
            match vmsg.full_msg_data with 
            | Full_FIX_Admin_Msg admin_msg  ->
                begin 
                    match admin_msg with 
                    | Full_Msg_Heartbeat _      -> false
                    | _                         -> true
                end 
            | _ -> true
        end
    | _ -> true
;;

theorem hbeat_not_sent_if_duration_zero ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in 
    let cond = 
        begin
            engine.outgoing_fix_msg = None && 
            hbeat_interval_null ( engine.fe_heartbeat_interval ) &&     
            engine.fe_curr_mode = ActiveSession && 
            is_valid_utctimestamp ( engine.fe_last_time_data_sent ) && 
            is_int_message_valid ( engine) && is_state_valid ( engine ) && 
            is_state_valid ( engine ) && 
            time_update_received ( engine.incoming_int_msg, engine.fe_last_time_data_sent, engine.fe_last_data_received, engine.fe_heartbeat_interval )
        end in 
    cond ==> outbound_msg_not_heartbeat ( engine'.outgoing_fix_msg )
;;

(*** *************************************************************************************** *)
(**

    Heartbeat VG.3

    "If HeartBtInt is set to zero then no regular heartbeat messages will be generated. Note 
    that a test request message can still be sent independent of the value of the HeartBtInt,
    which will force a Heartbeat message."

*)
(*** *************************************************************************************** *)

let outbound_msg_testrequest ( m, hbeat_id : full_top_level_msg option * int ) = 
    match m with 
    | Some ( ValidMsg vmsg ) ->
        begin 
            match vmsg.full_msg_data with 
            | Full_FIX_Admin_Msg admin_msg ->
                begin 
                    match admin_msg with 
                    | Full_Msg_Test_Request _ -> true
                    | _ -> false
                end 
            | _ -> false
        end
    | _ -> false
;;

let have_not_received_data' ( m, last_time_data_received, hbeat_interval, timereq_interval : fix_engine_int_inc_msg option * fix_utctimestamp * fix_duration * fix_duration ) =
    match m with
    | Some ( IncIntMsg_TimeChange tc_data ) -> 
        begin 
            let valid_received_time = utctimestamp_duration_Add last_time_data_received hbeat_interval  in
            let valid_testreq_time = utctimestamp_duration_Add valid_received_time timereq_interval  in 
            utctimestamp_GreaterThan tc_data valid_testreq_time 
        end
    | _ -> false
;;

theorem testrequest_sent_correctly' ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in 
    let cond =
        begin
            engine.fe_curr_mode = ActiveSession &&
            is_valid_utctimestamp ( engine.fe_last_time_data_sent ) &&
            is_int_message_valid ( engine) && 
            is_state_valid ( engine ) &&
            have_not_received_data' ( engine.incoming_int_msg, engine.fe_last_time_data_sent, engine.fe_heartbeat_interval, engine.fe_testreq_interval )
        end in 
    cond ==> outbound_msg_testrequest ( engine'.outgoing_fix_msg, 1 )
;;


(*** *************************************************************************************** *)
(**

    Heartbeat VG.4

    Notes: there's no mention of what constitutes a successful data -
    i.e. is it a non-garbled (but still rejected message)? 
    We interpret this here as that a Non-garbled message results in update of data received.

*)
(*** *************************************************************************************** *)

let incoming_is_not_garbled ( m, curr_mode : full_top_level_msg option * fix_engine_mode ) = 
    match m with 
    | None -> false
    | Some msg ->
    match msg with
    | Garbled -> false
    | SessionRejectedMsg _ -> curr_mode = ActiveSession
    | BusinessRejectedMsg _ -> curr_mode = ActiveSession
    | ValidMsg _ -> true
;;

theorem non_garbled_updates_clock ( engine : fix_engine_state ) =
    let engine' = one_step (engine) in 
    let received_ts_correct =  ( engine.fe_curr_time = engine'.fe_last_data_received ) in 

    ( incoming_is_not_garbled ( engine.incoming_fix_msg, engine.fe_curr_mode ) && 
        engine.fe_curr_mode <> CacheReplay  && 
        engine.fe_curr_mode <> Retransmit   &&
        engine.fe_curr_mode <> GapDetected  &&
        engine.fe_curr_mode <> ShuttingDown &&
        engine.incoming_int_msg = None ) ==> received_ts_correct
;;

(*** *************************************************************************************** *)
(**

    Heartbeat VG.5

    "If there is still no Heartbeat message received after (HeartBtInt + “some reasonable 
    transmission time”) seconds then the connection should be considered lost and corrective 
    action be initiated."

    Notes: note sure what 'corrective action be initiated' means, here we interpret it 
    as meaning that a logoff message to be sent out, connection closed and 'status' of the engine
    state set to 'ConnTerminatedWithoutLogoff'. 

*)
(*** *************************************************************************************** *)

let no_heartbeats_received_logoff ( m, engine : fix_engine_int_inc_msg option * fix_engine_state ) =
    match m with
    | Some (IncIntMsg_TimeChange tc_data) -> 
        let valid_time = utctimestamp_duration_Add  engine.fe_last_time_data_sent engine.fe_heartbeat_interval  in
        let valid_time_padded = utctimestamp_duration_Add  valid_time engine.fe_testreq_interval  in
        utctimestamp_GreaterThan tc_data valid_time_padded 
    | _ -> false
;;

theorem no_response_logoff ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in 
    
    let cond = 
        begin
            is_int_message_valid ( engine ) &&
            is_state_valid ( engine ) &&
            engine.fe_curr_mode = WaitingForHeartbeat && 
            no_heartbeats_received_logoff ( engine.incoming_int_msg, engine )
        end in
    cond ==> ( engine'.fe_curr_mode = NoActiveSession && engine'.fe_curr_status = ConnTerminatedWithoutLogoff )
;;

(*** *************************************************************************************** *)
(**

    Heartbeat VG.6

    "Heartbeats issued as the result of Test Request must contain the TestReqID transmitted in 
    the Test Request message. This is useful to theorem that the Heartbeat is the result of the 
    Test Request and not as the result of a regular timeout."

    Note: 
    - the sequence number of the TestRequest message must be correct so that the state
      does not transition into Recovery.
    - the TestRequest shouldn't have a possible duplicate flag 

*)
(*** *************************************************************************************** *)

let msg_is_test_request_id ( m, tr_id, seq_num : full_top_level_msg option * string * int ) =
    match m with
    | Some (ValidMsg vmsg) -> 
        seq_num = vmsg.full_msg_header.h_msg_seq_num &&
        not (vmsg.full_msg_header.h_poss_dup_flag = Some true) &&
        begin
            match vmsg.full_msg_data with 
            | Full_FIX_Admin_Msg (Full_Msg_Test_Request data)  -> data.test_req_id = tr_id
            | _ -> false
        end    
    | _ -> false
;;

let correct_hbeat_sent ( m, tr_id : full_top_level_msg option * string ) =
    match m with
    | Some (ValidMsg vmsg) ->
        begin
            match vmsg.full_msg_data with 
            | Full_FIX_Admin_Msg (Full_Msg_Heartbeat data)  ->
                begin
                    match data.hb_test_req_id with 
                    | None -> false
                    | Some x -> x = tr_id
                end
            | _ -> false
        end
    | _ -> false

;;

theorem heartbeat_has_correct_id ( test_req_id, engine : string * fix_engine_state ) =
    let engine' = one_step ( engine ) in 
    (   engine.incoming_int_msg = None && 
        engine.fe_curr_mode = ActiveSession && 
        engine.fe_application_up && 
        msg_is_test_request_id ( engine.incoming_fix_msg, test_req_id, engine.incoming_seq_num + 1) )
    ==> correct_hbeat_sent ( engine'.outgoing_fix_msg, test_req_id )
;;

