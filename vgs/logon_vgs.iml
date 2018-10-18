(**

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    VGs covering behaviour of Logon message ( Vol 2, page 6 and 16 ).

    fix_logon_vgs.ml

*)

open Datetime;;
open Fix_engine;;
open Fix_engine_state;;
open Full_admin_enums;;
open Full_admin_messages;;
open Full_messages;;

(** **************************************************************************************** *)
(**

    Logon VG.1


    "The logon message must be the first message sent by the application requesting to
    initiate a FIX session."

    Note: we augment this with requirement that the engine correctly sets the acceptor/initiator
    flag.

*)
(** **************************************************************************************** *)

let incoming_int_create_session ( m, targetID : fix_engine_int_inc_msg option * string ) =
    match m with
    | None      -> false
    | Some msg  ->
    match msg with
    | IncIntMsg_CreateSession data -> data.dest_comp_id = targetID
    | _                            -> false
;;

let state_is_init ( engine : fix_engine_state ) =
    engine.incoming_seq_num = 1 &&
    engine.outgoing_seq_num = 1 &&
    engine.fe_initiator = None &&
    engine.fe_curr_mode = NoActiveSession &&
    engine.fe_curr_status = Normal &&
    engine.fe_history = [] &&
    engine.fe_cache = []
;;

let outbound_msg_logon ( m, targetID : full_top_level_msg option * string ) =
    match m with
    | None      -> false
    | Some msg  ->
    match msg with
    | ValidMsg vmsg -> (
    let correct_target_id = vmsg.full_msg_header.h_target_comp_id = targetID in
    match vmsg.full_msg_data with
    | Full_FIX_App_Msg _        -> false
    | Full_FIX_Admin_Msg amsg   ->
    match amsg with
    | Full_Msg_Logon _          -> correct_target_id
    | _                         -> false
    )
    | _             -> false
;;

theorem logon_msg_is_first ( engine, targetID : fix_engine_state * string ) =
    let engine' = one_step ( engine ) in
    ( state_is_init ( engine ) &&
    incoming_int_create_session ( engine.incoming_int_msg, targetID ) ) ==>
     ( outbound_msg_logon ( engine'.outgoing_fix_msg, targetID ) &&
     engine'.fe_curr_mode = LogonInitiated &&
     engine'.fe_initiator = Some true)
;;

(** **************************************************************************************** *)
(**

    Logon VG.2

    "The session acceptor must be prepared to immediately begin processing messages after receipt
    of the Logon. The session initiator can choose to begin transmission of FIX messages before
    receipt of the confirmation Logon, however it is recommended that normal message delivery
    wait until after the return Logon is received to accommodate encryption key negotiation."

    Notes: We take the strict interpretation (i.e. the recommendation in this case) that an
    application message may not be transmitted until counterparty replies with a Logon message
    (in the case that the engine is the initiator).

*)
(** **************************************************************************************** *)

let waiting_for_logon_ack ( engine : fix_engine_state ) =
    engine.fe_curr_mode   = LogonInitiated &&
    engine.fe_curr_status = Normal
;;

let int_app_msg_exists ( m : fix_engine_int_inc_msg option ) =
    match m with
    | None      -> false
    | Some _    -> true
;;

theorem no_msg_sent_until_logon_acked ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in
    ( waiting_for_logon_ack engine  && int_app_msg_exists ( engine'.incoming_int_msg ))
    ==>
    ( engine'.outgoing_fix_msg = None )
;;

(** Logon VG2.2 *)

let incoming_logon_ack m self_comp_id enc_method =
    match m with
    | None -> false
    | Some msg ->
    match msg with
    | ValidMsg vmsg -> (
        let valid_header    = vmsg.full_msg_header.h_target_comp_id = self_comp_id in
        match vmsg.full_msg_data with
        | Full_FIX_App_Msg _ -> false
        | Full_FIX_Admin_Msg ( Full_Msg_Logon amsg ) -> 
            let same_encryption = amsg.ln_encrypt_method = enc_method in
            valid_header && same_encryption
        | _ -> false
         
     )
    | _ -> false
;;


theorem receive_logon_ack ( engine : fix_engine_state ) =
    let no_incoming_int_msgs = engine.incoming_int_msg = None in
    let engine' = one_step ( engine ) in
    ( incoming_logon_ack engine.incoming_fix_msg engine.fe_comp_id engine.fe_encrypt_method &&
      no_incoming_int_msgs &&
      waiting_for_logon_ack engine &&
      engine.fe_cache = [] &&
      is_state_valid ( engine ) )
    ==>
    ( engine'.fe_curr_mode = ActiveSession )
;;

(** **************************************************************************************** *)
(** Logon VG.3

    "After authentication, the initiator and acceptor must synchronize their messages through
    interrogation of the MsgSeqNum field before sending any queued or new messages. A comparison
    of the MsgSeqNum in the Logon message to the internally monitored next expected sequence
    number will indicate any message gaps. Likewise, the initiator can detect gaps by comparing
    the acknowledgment Logon message’s MsgSeqNum to the next expected value. The section on
    message recovery later in this document deals with message gap handling."
*)
(** **************************************************************************************** *)

(*
let logon_msg_out_of_sequence ( m : full_top_level_msg option ) =
    true
;;

verify when_gap_detected_request_is_sent ( engine : fix_engine_state ) =

    let engine' = one_step ( engine ) in

    logon_msg_out_of_sequence ( engine )
        ==>
    ( test_request_sent ( engine' ) && engine'.fe_curr_mode = Recovery )
;;
*)


(** **************************************************************************************** *)
(** Logon VG.4

    "If the session acceptor has chosen to change the session encryption key, the session initiator
    must send a third Logon back to the other side in order to acknowledge the key change request.
    This also allows the session acceptor to know when the session initiator has started to encrypt
    using the new session key. Both parties are responsible for infinite loop detection and prevention
    during this phase of the session."

    Notes: we break up the statement into the following VGs:
    - 4.1 - If a confirmation Logon is received with a different encryption key, then another Logon is sent
    back with the same key. Also, we increment the 'fe_num_logons_sent' counter.
    - 4.2 - When the engine attempts to send out a Logon message when the count is violated, it would
    transition into error mode with status change.

*)
(** **************************************************************************************** *)

let received_logon_diff_key ( m, self_comp_id, encrypt_method : full_top_level_msg option * string * fix_encryption_method ) =
    match m with
    | None -> true
    | Some msg ->
    match msg with
    | ValidMsg vmsg -> (
        let valid_header = vmsg.full_msg_header.h_target_comp_id = self_comp_id in
        match vmsg.full_msg_data with
        | Full_FIX_App_Msg _ -> false
        | Full_FIX_Admin_Msg amsg -> (
            match amsg with
            | Full_Msg_Logon data -> valid_header && ( data.ln_encrypt_method = encrypt_method )
            | _ -> false
         )
    )
    | _ -> false
;;

let logon_sent_out ( m, encrypt_method : full_top_level_msg option * fix_encryption_method ) =
    match m with
    | None -> true
    | Some msg ->
    match msg with
    | ValidMsg vmsg -> (
        match vmsg.full_msg_data with
        | Full_FIX_App_Msg _ -> false
        | Full_FIX_Admin_Msg amsg -> (
            match amsg with
            | Full_Msg_Logon data -> data.ln_encrypt_method = encrypt_method
            | _ -> false
         )
    )
    | _ -> false
;;

(** Logon VG.4.1 *)
theorem encrypt_key_different_logon_sent ( engine, new_encrypt_method : fix_engine_state * fix_encryption_method ) =
    let engine' = one_step ( engine ) in
    (   engine.fe_cache = [] &&
        engine.fe_curr_mode = LogonInitiated &&
        engine.fe_curr_status = Normal &&
        engine.fe_encrypt_method <> new_encrypt_method &&
        received_logon_diff_key ( engine.incoming_fix_msg, engine.fe_comp_id, new_encrypt_method ) &&
        engine.fe_num_logons_sent < engine.fe_max_num_logons_sent
    ) ==> (
        logon_sent_out ( engine'.outgoing_fix_msg, new_encrypt_method ) &&
        engine'.fe_encrypt_method = new_encrypt_method &&
        engine'.fe_num_logons_sent = (1 + engine.fe_num_logons_sent)
    )
;;
(*

(** Logon VG.4.2 *)
verify max_num_logons_breached_error ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in
    ( received_logon_diff_key ( engine ) &&
        ( engine.fe_num_logons_sent = engine.fe_max_num_logons_sent ) )
    ==>
    ( engine'.fe_curr_mode = Error &&
        engine'.fe_curr_status = MaxNumLogonMsgsViolated )
;;

(** **************************************************************************************** *)
(**
    Logon VG.5

    "NextExpectedMsgSeqNum (789) is used as follows:
    In its Logon request the session initiator supplies in NextExpectedMsgSeqNum (789) the value
    next expected from the session acceptor in MsgSeqNum (34). The outgoing header MsgSeqNum (34)
    of the Logon request is assigned the next-to-be-assigned sequence number as usual.

    The session acceptor validates the Logon request including that NextExpectedMsgSeqNum (789)
    does not represent a gap. It then constructs its Logon response with NextExpectedMsgSeqNum (789)
    containing the value next expected from the session initiator in MsgSeqNum (34) having incremented
    the number above the Logon request if that was the sequence expected. The outgoing header MsgSeqNum (34)
    is constructed as usual. The session initiator waits to begin sending application messages until
    it receives the Logon response. When it is received the initiator validates the response including
    that NextExpectedMsgSeqNum (789) does not represent a gap.

    Both sides react to NextExpectedMsgSeqNum (789) from its counterparty thus:
    - If equal to the next-to-be-assigned sequence, proceed sending new messages beginning with that
        number.
    - If lower than the next-to-be-assigned sequence, 'recover' (see 'Message Recovery') all messages
        from the the last message delivered prior to this Logon through the specified NextExpectedMsgSeqNum (789)
        sending them in order; then Gap Fill over the sequence number used in Logon and proceed sending
        newly queued messages with a sequence number one higher than the original Logon.
    - If higher than the next-to-be-assigned sequence, send Logout to abort the session.

    Neither side should generate a ResendRequest based on MsgSeqNum (34) of the incoming Logon message
    but should expect any gaps to be filled automatically. If a gap is produced by the Logon message
    MsgSeqNum (34), the receive logic should expect the gap to be filled automatically prior to receiving
    any messages with sequences above the gap."

    Notes:

*)
(** **************************************************************************************** *)


let is_next_expected_msg_seq_num_present ( m, next_seq_num : full_top_level_msg option * int ) =
    match m with
    | None -> true
    | Some msg ->
    match msg with
    | ValidMsg vmsg -> (
        match vmsg.full_msg_data with
        | Full_FIX_App_Msg _ -> false
        | Full_FIX_Admin_Msg amsg -> (
            match amsg with
            | Full_Msg_Logon data ->  (
                match data.ln_next_expected_msg_seq_num with
                | None -> false
                | Some seq_num -> seq_num = next_seq_num
            )
            | _ -> false
         )
    )
    | _ -> false
;;


verify
*)
