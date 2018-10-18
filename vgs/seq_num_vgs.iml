(** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    The following verification goals were derived from the table
    on page 9 with description on how messages would be handled.

    fix_seq_num_vgs.ml

*)

open Imandra_pervasives;;
open Datetime;;
open Fix_engine;;
open Full_admin_messages;;
open Full_session_core;;
open Full_messages;;


(** **************************************************************************************** *)
(** 
    SeqNum VG.1

    Logon : "Must always be the first message transmitted. Authenticate and accept the
        connection. After sending a Logon confirmation back, send a
        ResendRequest if a message gap was detected in the Logon sequence
        number."
 
    We check that we either are responding from an internal request to initiate a session,
        thus sending out a Logon message, or we're responding to a request from the
        counterparty engine. *)
(** **************************************************************************************** *)

let is_msg_valid_logon ( msg, next_seq_num : full_top_level_msg option * int ) =
    match msg with 
    | None          -> false
    | Some m        -> 
    match m with
    | ValidMsg msg_data -> (
        match msg_data.full_msg_data with 
        | Full_FIX_Admin_Msg adm_msg -> (
            match adm_msg with 
            | Full_Msg_Logon msg -> ( msg_data.full_msg_header.h_msg_seq_num = next_seq_num ) 
            | _ -> false
         )
        | _ -> false
     )
    | _ -> false
;;

let no_msg ( msg : full_top_level_msg option ) =
    match msg with 
    | None  -> true
    | _     -> false
;;

let no_int_msg ( msg : fix_engine_int_msg option ) = 
    match msg with 
    | None  -> true
    | _     -> false
;;

verify logon_msg_first ( state : fix_engine_state ) =
    let incoming_msg_create_session = 
        match state.incoming_int_msg with 
        | None -> false
        | Some m -> match m with 
        | CreateSession _ -> true
        | _ -> false in

    let incoming_fix_valid_logon = is_msg_valid_logon ( state.incoming_fix_msg, ( state.incoming_seq_num + 1) ) in
    
    let no_inc_int_msg = no_int_msg ( state.incoming_int_msg ) in
    let state' = one_step ( state ) in
    let next_msg_logon = is_msg_valid_logon ( state'.outgoing_fix_msg, state'.outgoing_seq_num ) in 

    ( state.fe_curr_mode = NoActiveSession && 
      state.incoming_seq_num = 0 && state.outgoing_seq_num = 1 &&
      ( incoming_msg_create_session || ( incoming_fix_valid_logon && no_inc_int_msg ) ) && 
      state.fe_cache = [] && no_msg ( state.outgoing_fix_msg ) )
    ==> next_msg_logon
 ;;

(** **************************************************************************************** *)
(** 
    SeqNum VG.2

    Out of sequence message would result in state transitioning into Recovery mode.          *)
(** **************************************************************************************** *)

let incoming_msg_wrong_seq_num ( state : fix_engine_state ) =
    match state.incoming_fix_msg with
    | None -> false
    | Some m ->
    match m with 
    | Garbled               -> false
    | BusinessRejectedMsg _ -> false
    | SessionRejectedMsg _  -> false
    | ValidMsg msg          ->
    msg.full_msg_header.h_msg_seq_num > ( state.incoming_seq_num + 1) && (
    match msg.full_msg_header.h_poss_dup_flag with 
    | None                  -> true
    | Some f                -> not (f) )
;;

verify out_of_seq_leads_to_recovery ( state : fix_engine_state ) =
    let state' = one_step ( state ) in ( 
    state.fe_curr_mode = ActiveSession && 
    state.incoming_seq_num = 1 && 
    state.fe_cache = [] &&
    state.incoming_int_msg = None &&
    incoming_msg_wrong_seq_num ( state ) ) 
    ==> (state'.fe_curr_mode = Recovery)
;;


(** **************************************************************************************** *)
(** 
    SeqNum VG.3

    SeqReset-Reset: 
        "Ignore the incoming sequence number. The NewSeqNo field of the SeqReset
         message will contain the sequence number of the next message to be transmitted."    *)
(** **************************************************************************************** *)



(** **************************************************************************************** *)
(** 
    SeqNum VG.4

    All Other Messages : "Perform Gap Fill operations."

    Application messages that result in a gap, we'll transition into gap fill state.         *)
(** **************************************************************************************** *)
