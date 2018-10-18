(* A simple example showing how Imandra counterexamples can be minimized. *)

(* First, we try to verify a false VG and extract a counterexample. *)

verify foo ( state : fix_engine_state ) =
  let incoming_biz_rejected =
    match state.incoming_fix_msg with
    | Some x -> not (x.reject_flags.garbled)
                && not (fix_is_msg_session_invalid (x))
    | None -> false
  in
  let no_incoming_msgs =
    match state.incoming_int_msg with
    | None -> true
    | Some _ -> false
  in
  let state' = one_step (state)
  in
  let result_biz_reject =
    match state'.outgoing_fix_msg with
    | None -> false
    | Some x ->
       match x.msg_data with
       | FIX_business_reject _ -> true
       | _ -> false
  in
  ( incoming_biz_rejected
    && not state.fe_application_up
    (* We deliberately comment out this constraint
          in order to obtain a counterexample.
    && state.fe_curr_mode = ActiveSession *)
    && no_incoming_msgs)
  ==>
    result_biz_reject
;;

(* Note that we now have a counterexample bound to CX.state.

   Let's `minimize' some aspect of this counterexample.  In doing so,
   we must make sure that the `minimized' state is still a real
   counterexample. *)

(* Note that a function

    foo : state -> bool

   was introduced when we ran the verify statement above.

   For example, the following evaluates to false: *)

foo CX.state;;

(* We can use foo to minimize our counterexample. *)

:shadow off

(* First, we define a little `minimizer.' *)

let minimize_state s i =
  match i with
    0 -> { s with fe_curr_time      = 1 }
  | 1 -> { s with fe_comp_id        = Model_string 1 }
  | 2 -> { s with fe_target_comp_id = Model_string 1 }
  | 3 -> { s with incoming_seq_num  = 1 }
  | 4 -> { s with outgoing_seq_num  = 1 }
  | 5 -> { s with fe_last_hbeat_recived = 1 }
  | 6 -> { s with fe_heartbeat_interval = 1 }
  | _ -> s
;;

(* Now, we execute it, only keeping `minimizations' that maintain our
   state's counterexample status. *)

let minimize_state_vg vg_test s =
  let s = ref s in
  for i = 0 to 6 do
    let s' = minimize_state !s i in
    if not (vg_test s')
       (* If s' is still a counterexample, then we move to it *)
       then s := s'
  done;
  !s
;;

:shadow on

minimize_state_vg foo CX.state;;

(* Result:

{fe_curr_mode = CacheReplay; fe_initiator = Some false; fe_curr_time = 1;
 fe_comp_id = 1; fe_target_comp_id = 1; incoming_int_msg = None;
 outgoing_int_msg = None; incoming_seq_num = 1; outgoing_seq_num = 1;
 incoming_fix_msg =
  Some
   {header =
     {begin_string = 44; body_length = 43; sender_comp_id = 42;
      target_comp_id = 41; msg_seq_num = 535; on_behalf_of_comp_id = Some 40;
      deliver_to_comp_id = Some 39; secure_data_len = Some 38;
      secure_data = Some 37; sender_sub_id = Some 36;
      sender_location_id = Some 35; target_sub_id = Some 34;
      target_location_id = Some 33; on_behalf_of_sub_id = Some 32;
      on_behalf_of_location_id = Some 31; deliver_to_sub_id = Some 30;
      deliver_to_location_id = Some 29; poss_dup_flag = Some true;
      poss_resend = Some false; sending_time = Some 28;
      orig_sending_time = Some 27; xml_data_len = Some 26;
      xml_data = Some 25; message_enconding = Some 24;
      last_msg_seq_num_processed = Some 23; no_hops = Some 22};
    msg_data =
     FIX_logon
      {encrypt_method = 21; heartbeat_interval = 20; raw_data_length = 19};
    trailer = {signature_length = 18; signature = 17; check_sum = 16};
    reject_flags =
     {garbled = false; session_invalid = None; business_invalid = None}};
 outgoing_fix_msg = None; fe_cache = []; fe_history = [];
 fe_last_hbeat_recived = 1; fe_heartbeat_interval = 1;
 fe_history_to_send =
  [{header =
     {begin_string = 153; body_length = 152; sender_comp_id = 151;
      target_comp_id = 150; msg_seq_num = 149;
      on_behalf_of_comp_id = Some 148; deliver_to_comp_id = Some 147;
      secure_data_len = Some 146; secure_data = Some 145;
      sender_sub_id = Some 144; sender_location_id = Some 143;
      target_sub_id = Some 142; target_location_id = Some 141;
      on_behalf_of_sub_id = Some 140; on_behalf_of_location_id = Some 139;
      deliver_to_sub_id = Some 138; deliver_to_location_id = Some 137;
      poss_dup_flag = Some false; poss_resend = Some false;
      sending_time = Some 136; orig_sending_time = Some 135;
      xml_data_len = Some 134; xml_data = Some 133;
      message_enconding = Some 132; last_msg_seq_num_processed = Some 131;
      no_hops = Some 130};
    msg_data =
     FIX_logon
      {encrypt_method = 129; heartbeat_interval = 128; raw_data_length = 127};
    trailer = {signature_length = 126; signature = 125; check_sum = 124};
    reject_flags =
     {garbled = false; session_invalid = None; business_invalid = None}}];
 fe_application_up = false}

 *)
