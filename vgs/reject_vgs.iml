(** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    VGs covering behaviour of Reject message ( Vol 2 ).

    fix_reject_vgs.ml

*)

open Imandra_pervasives;;
open Datetime;;
open Fix_engine;;
open Full_admin_messages;;
open Full_session_core;;
open Full_messages;;

(** **************************************************************************************** *)
(**
    
    Reject VG.1

    "During the gap fill process, certain administrative messages should not be retransmitted. 
    Instead, a special SeqReset-GapFill message is generated. The administrative messages which
    are not to be resent are: Logon, Logout, ResendRequest, Heartbeat, TestRequest and SeqReset-Reset 
    and SeqReset-GapFill. The SeqReset-GapFill can also be used to skip application messages that 
    the sender chooses not to retransmit (e.g. aged orders). This leaves Reject as the only 
    administrative message which can be resent."

*)
(** **************************************************************************************** *)

let outbound_is_reject_or_app ( m : full_top_level_msg option ) = 
    match m with 
    | None                      -> false
    | Some msg                  ->
    match msg with 
    | ValidMsg vmsg             -> (
    match vmsg.full_msg_data with 
    | Full_FIX_App_Msg _        -> true
    | Full_FIX_Admin_Msg amsg   ->
    match amsg with 
    | Full_Msg_Reject _         -> true
    | _                         -> false
    )
    | _                         -> false
;;

verify reject_only_admin_msg_retransmitted ( engine : fix_engine_state ) =
    let engine' = one_step ( engine ) in 

    ( engine.fe_curr_mode = Retransmit && 
        engine.incoming_fix_msg = None &&
        engine.incoming_int_msg = None &&
        engine.fe_history_to_send <> []
    ) ==> (
        (engine'.outgoing_fix_msg = None ||
        outbound_is_reject_or_app ( engine'.outgoing_fix_msg )) || 
        ( engine'.outgoing_fix_msg = None &&
            engine'.fe_curr_mode <> Retransmit ))
;;
