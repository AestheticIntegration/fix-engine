(**

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    Verification goals: base vgs.

    fix_base_vgs.ml
*)


open Datetime;;
open Fix_engine;;
open Fix_engine_state;;
open Fix_engine_utils;;
open Full_admin_messages;;
open Full_messages;;


(** **************************************************************************************** *)
(**
    Base VG.1

    When in ActiveSession (normal mode) and receiving a non grabled and non session-level
    rejected message and the application is down. Such message would be sent back with a
    Business Reject. *)
(** **************************************************************************************** *)
let msg_is_biz_reject = function
  | Some (ValidMsg msg_data) ->
    begin match msg_data.full_msg_data with
      | Full_FIX_Admin_Msg (Full_Msg_Business_Reject _) -> true
      | _ -> false
    end
  | _ -> false
;;

let msg_is_valid_biz state = function
  | Some ( ValidMsg msg ) -> begin
    match msg.full_msg_data with
    | Full_FIX_App_Msg _ -> 
         ( msg.full_msg_header.h_msg_seq_num = state.incoming_seq_num + 1 )
      && ( validate_message_header (state, msg.full_msg_header, get_full_msg_tag msg.full_msg_data)) = None
    | _ -> false
  end
  | _ -> false
;;

theorem app_down_get_biz_reject ( state : fix_engine_state ) =
  let incoming_valid   = msg_is_valid_biz state state.incoming_fix_msg in
  let no_incoming_msgs = state.incoming_int_msg = None in
  let state' = one_step (state) in
  let result_biz_reject = msg_is_biz_reject ( state'.outgoing_fix_msg ) in
  ( state.fe_cache = []
    && incoming_valid 
    && not (state.fe_application_up)
    && state.fe_curr_mode   = ActiveSession 
    && state.fe_curr_status = Normal
    && no_incoming_msgs )
  ==>
  result_biz_reject
;;

(** **************************************************************************************** *)
(**
    Base VG.2

    From Vol 2. Page 9. "In *ALL* cases except the Sequence Reset - message, the FIX session
    should be terminated if the incoming sequence number is less than expected and the
    PossDupFlag is not set. A Logout message with some descriptive text should be sent to the
    other side before closing the session." *)
(** **************************************************************************************** *)

(** TODO: should this just be a bool type? *)
let poss_dup_flag_not_set ( flag : bool option ) =
  flag = None
;;

let incoming_msg_not_valid ( msg, state_inc_seq_num : full_top_level_msg option * int ) =
  match msg with
  | Some (ValidMsg vmsg) ->
    let seq_num_incorrect = vmsg.full_msg_header.h_msg_seq_num < state_inc_seq_num in
    let msg_is_seq_reset =
      begin match vmsg.full_msg_data with
        | Full_FIX_Admin_Msg (Full_Msg_Sequence_Reset _) -> true
        | _ -> false
      end
    in
    (seq_num_incorrect && msg_is_seq_reset
     && poss_dup_flag_not_set ( vmsg.full_msg_header.h_poss_dup_flag ))
  | _   -> false
;;

let msg_is_logout = function
  | Some (ValidMsg vmsg) ->
    begin match vmsg.full_msg_data with
      | Full_FIX_Admin_Msg (Full_Msg_Logoff _) -> true
      | _ -> false
    end
  | _ -> false
;;

theorem less_seq_num_logout ( state : fix_engine_state ) =
  let no_incoming_int_msgs = state.incoming_int_msg = None in
  let state_good = not ( state.fe_application_up ) && ( state.fe_curr_mode = ActiveSession ) in
  let state' = one_step (state) in
  ( state.fe_application_up && no_incoming_int_msgs && state_good && state.fe_cache = [] &&
    incoming_msg_not_valid ( state.incoming_fix_msg, 1 ) )
  ==> msg_is_logout ( state'.outgoing_fix_msg )
;;

(** **************************************************************************************** *)
(**
    Base VG.3

    Messages that are garbled will be ignored (sequence counter will not be incremented).

*)
(** **************************************************************************************** *)

let incoming_msg_garbled = function
  | Some (Garbled) -> true
  | _ -> false
;;

theorem garbled_are_ignored ( state : fix_engine_state ) =
  let state' = one_step (state) in
  let msg_ignored = ( state' =  { state with incoming_fix_msg = None } ) in
  let no_internal_msgs = state.incoming_int_msg = None in
  let no_cache_replay_or_retransmit = 
    not ( state.fe_curr_mode = CacheReplay 
       || state.fe_curr_mode = Retransmit 
       || state.fe_curr_mode = GapDetected 
       || state.fe_curr_mode = ShuttingDown 
        ) in
  ( incoming_msg_garbled (state.incoming_fix_msg)
    && no_cache_replay_or_retransmit
    && no_internal_msgs )
  ==> msg_ignored
;;

(** **************************************************************************************** *)
(**
    Base VG.4

    Session rejected messages are rejected with the right reason and counter is incremented. *)
(** **************************************************************************************** *)

let incoming_msg_session_reject = function
  | Some (SessionRejectedMsg _) -> true
  | _ -> false
;;

let msg_is_reject = function
  | Some (ValidMsg vmsg) ->
    begin match vmsg.full_msg_data with
      | Full_FIX_Admin_Msg (Full_Msg_Reject _) -> true
      | _ -> false
    end
  | _ -> false
;;

(** Note that it's important to remember that a message may only be rejected if we're in ActiveSession state.
    It would be otherwise ignore (if in NoActiveSession state) or not processed if the engine is in CacheReplay or
    Retransmit modes. *)
theorem session_rejects_are_rejected ( state : fix_engine_state ) =
  let no_incoming_int_msgs = state.incoming_int_msg = None in
  let incoming_rejected = incoming_msg_session_reject ( state.incoming_fix_msg ) in
  let state' = one_step (state) in
  let msg_rejected = msg_is_reject ( state'.outgoing_fix_msg ) in
  let seq_num_updated = ( ( state.outgoing_seq_num + 1 ) = state'.outgoing_seq_num ) in
  ( no_incoming_int_msgs && incoming_rejected && state.fe_curr_mode = ActiveSession)
  ==>
  ( msg_rejected && seq_num_updated )
;;
