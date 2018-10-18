(** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    SequenceReset Reset message VGs.

    fix_seqreset_reset.ml

*)

open Imandra_pervasives;;
open Datetime;;
open Base_types;;
open Fix_engine;;
open Full_admin_messages;;
open Full_session_core;;
open Full_messages;;


(** **************************************************************************************** *)
(** 
    SeqReset_Reset VG.1

    "When the incoming sequence number does not match the expected corrective processing is 
    required. Note that the SeqReset-Reset message (used only to recover from a disaster vs. 
    normal resend request processing) is an exception to this rule as it should be processed
    without regards to its MsgSeqNum."

*)
(** **************************************************************************************** *)

let inc_msg_seqreset_reset ( m : full_top_level_msg option ) =
    match m with 
    | None -> false
    | Some msg ->
    match msg with
    | ValidMsg vmsg -> (
        match vmsg.full_msg_data with 
        | Full_FIX_App_Msg _ -> false
        | Full_FIX_Admin_Msg amsg -> (
            match amsg with 
            | Full_Msg_Sequence_Reset data -> (
                (* A missing flag or flag = No tells us that message of the Reset mode. *)
                match data.seqr_gap_fill_flag with | None -> true | Some f -> f = FIX_No
             )
            | _ -> false
         )
    )
    | _ -> false
;;

let state_updated ( engine, new_seq_num : fix_engine_state * int ) =
    engine.incoming_seq_num = new_seq_num &&
    engine.fe_curr_mode = ActiveSession && 
    engine.fe_cache = []
;;

let out_of_seq_seqreset_processed ( engine, new_seq_num : fix_engine_state * int ) = 
    let engine' = one_step ( engine ) in
    (   inc_msg_seqreset_reset ( engine.incoming_fix_msg ) && 
        engine.fe_curr_mode <> NoActiveSession && 
        engine.fe_cache = [] 
    ) ==> (
        state_updated ( engine', new_seq_num )
    )
;;

(** **************************************************************************************** *)
(** 

    SeqReset_Reset VG.2

    "The Sequence Reset can only increase the sequence number. If a sequence reset is received 
    attempting to decrease the next expected sequence number the message should be rejected and 
    treated as a serious error."

*)
(** **************************************************************************************** *)

