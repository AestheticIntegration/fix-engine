(** FIX 4.4 engine utility functions. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    fix_engine_utils.ml
    
*)

(* @meta[imandra_ignore] on @end *)
open Datetime;;
open Base_types;;
open Full_admin_enums;;
open Full_admin_messages;;
open Full_app_messages;;
open Full_messages;;
open Fix_engine_state;;
(* @meta[imandra_ignore] off @end *)

(** Does the message have the right sequence number?

    This is when we need to transfer into Recovery Mode and request the 
    missing sequence to be retransmitted. *)
let msg_consistent ( engine, msg_header : fix_engine_state * fix_header ) = 
    let seq_num_correct = msg_header.h_msg_seq_num = (engine.incoming_seq_num + 1) in 
    match msg_header.h_poss_dup_flag with 
    | None -> seq_num_correct
    | Some dup -> dup || ((not dup) && seq_num_correct)
;;

(** get_gap_fill_msg -> out of all of the administrative messages, only the 'Reject' can be retransmitted.
    All application-level messages may be retransmitted - we should, in the future add logic to 
    not retransmit stale orders, etc. *)
let get_historic_msg ( valid_msg : full_valid_fix_msg ) =  
    let gap_fill_msg_data = Full_FIX_Admin_Msg ( 
        Full_Msg_Sequence_Reset {
            seqr_new_seq_no = valid_msg.full_msg_header.h_msg_seq_num + 1;
            seqr_gap_fill_flag = Some FIX_GapFillFlag_Y;
        }
    ) in

    let gap_fill_msg = {
        full_msg_header = valid_msg.full_msg_header;
        full_msg_data = gap_fill_msg_data;
        full_msg_trailer = valid_msg.full_msg_trailer;
    } in 

    match valid_msg.full_msg_data with 
    | Full_FIX_Admin_Msg admin_msg ->
        begin
            match admin_msg with 
            | Full_Msg_Reject m -> valid_msg
            | _ -> gap_fill_msg
        end
    | Full_FIX_App_Msg app_msg -> valid_msg
;; 

(** Give us a single GapFill message with the correct NextSequenceNumber.

   From the specification:
    "If there are consecutive administrative messages to be resent, it is suggested that only one SeqReset-GapFill
    message be sent in their place. The sequence number of the SeqReset-GapFill message is the next expected
    outbound sequence number. The NewSeqNo field of the GapFill message contains the sequence number of
    the highest administrative message in this group plus 1. For example, during a Resend operation there are 7
    sequential administrative messages waiting to be resent. They start with sequence number 9 and end with
    sequence number 15. Instead of transmitting 7 Gap Fill messages (which is perfectly legal, but not network
    friendly), a SeqReset-GapFill message may be sent. The sequence number of the Gap Fill message is set to 9
    because the remote side is expecting that as the next sequence number. The NewSeqNo field of the GapFill
    message contains the number 16, because that will be the sequence number of the next message to be
    transmitted."  *)
let combine_gapfill_msgs ( msgOne, msgTwo : full_msg_sequence_reset_data * full_msg_sequence_reset_data ) =
    let correct_next_seq = if msgOne.seqr_new_seq_no > msgTwo.seqr_new_seq_no then msgOne.seqr_new_seq_no else msgTwo.seqr_new_seq_no in {
        seqr_gap_fill_flag = Some FIX_GapFillFlag_Y; (** We assume all of these SeqResetMessages are GapFill-type *)
        seqr_new_seq_no = correct_next_seq;
    }
;;

(** 
    Adding a valid message to the list, while
    - converting any message that needs to be converted into a SequenceRest-GapFill
    - ensuring that any two sequential SequenceReset-GapFill messages are combined into one with an updated
        expected NextSeqNum parameter *)
let add_msg_to_history ( history, msg : full_valid_fix_msg list * full_valid_fix_msg ) = 
    let hist_msg = get_historic_msg ( msg ) in 

    match history with
    | [] -> [ msg ]
    | x::xs ->
        begin
            match x.full_msg_data, hist_msg.full_msg_data with 
            | Full_FIX_Admin_Msg ( Full_Msg_Sequence_Reset seq_reset_one ), Full_FIX_Admin_Msg ( Full_Msg_Sequence_Reset seq_reset_two ) ->
                begin
                    let new_msg_data = combine_gapfill_msgs ( seq_reset_one, seq_reset_two ) in
                    let new_full_msg = {
                        full_msg_header = x.full_msg_header;
                        full_msg_data = Full_FIX_Admin_Msg ( Full_Msg_Sequence_Reset (new_msg_data));
                        full_msg_trailer = x.full_msg_trailer;
                    } in 
                    new_full_msg :: xs
                end 
            | _ -> hist_msg :: x :: xs
        end
;;


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
            ln_reset_seq_num_flag           = Some true;
            ln_next_expected_msg_seq_num    = None;
            ln_max_message_size             = None;

            ln_test_message_indicator       = None;
            ln_username                     = None;
            ln_password                     = None;

        } 
    ) in 
    create_outbound_fix_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, 
        msg_data, false 
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
    create_outbound_fix_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, 
        msg_data, false 
    ) 
;;

(** Create a heartbeat message *)
let create_heartbeat_msg ( engine, tr_id : fix_engine_state * int option) =
    let msg_data = Full_FIX_Admin_Msg (
        Full_Msg_Heartbeat {
            hb_test_req_id = tr_id;
        }
    ) in 
    create_outbound_fix_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, 
        msg_data, false 
    )
;;

(** Create Test Request message. *)
let create_test_request_msg ( engine : fix_engine_state ) =
    let msg_data = Full_FIX_Admin_Msg (
        Full_Msg_Test_Request {
            test_req_id = engine.last_test_req_id;
        }
    ) in
    create_outbound_fix_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, 
        msg_data, false 
    ) 
;;

(** Create session-rejection message. *)
let create_session_reject_msg ( outbound_seq_num, target_comp_id, comp_id, curr_time, reject_info : 
                                int * fix_string * fix_string * fix_utctimestamp * session_rejected_msg_data  ) = 
    let msg_data = 
        Full_FIX_Admin_Msg (
            Full_Msg_Reject {
                sr_ref_seq_num              = reject_info.srej_msg_msg_seq_num;
                sr_ref_tag_id               = None;
                sr_ref_msg_type             = None;
                sr_session_reject_reason    = reject_info.srej_msg_reject_reason;
                sr_text                     = None;
                sr_encoded_text_len         = None;
                sr_encoded_text             = None
            } ) in
    create_outbound_fix_msg ( outbound_seq_num, target_comp_id, comp_id, curr_time, msg_data, false )
;;

(** Create business reject message.
    Note: the reason we're separating the ApplicationDown reason is that the parser would not have access to this information. *)
let create_business_reject_msg ( outbound_seq_num, target_comp_id, comp_id , curr_time, reject_info: int * fix_string * fix_string * fix_utctimestamp * biz_rejected_msg_data ) =
    let msg_data = 
        Full_FIX_Admin_Msg (
            Full_Msg_Business_Reject {
                br_ref_seq_num            = reject_info.brej_msg_ref_seq_num;       
                br_business_reject_reason = reject_info.brej_msg_reject_reason;
                br_ref_msg_type           = reject_info.brej_msg_msg_tag;
                br_ref_field_id           = reject_info.brej_msg_field_tag;
                br_text                   = reject_info.brej_msg_text;
                br_encoded_text_len       = None; 
                br_encoded_text           = None 
            }
    ) in 
    create_outbound_fix_msg ( outbound_seq_num, target_comp_id, comp_id, curr_time, msg_data, false )
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
            incoming_fix_msg        = None;
            fe_last_time_data_sent  = engine.fe_curr_time;
            outgoing_fix_msg        = Some ( ValidMsg ( reject_msg ));
            incoming_seq_num        = rejected_data.brej_msg_ref_seq_num;
            outgoing_seq_num        = engine.outgoing_seq_num + 1;
            fe_history              = add_msg_to_history ( engine.fe_history, reject_msg );
        }
;;

(** Convert the rejection information into an outbound Reject message. *)
let session_reject ( rejected_data, engine : session_rejected_msg_data * fix_engine_state ) =
    let reject_msg = create_session_reject_msg ( 
        engine.outgoing_seq_num, engine.fe_target_comp_id, 
        engine.fe_comp_id, engine.fe_curr_time, rejected_data 
    ) in {
        engine with 
            incoming_fix_msg        = None;
            fe_last_time_data_sent  = engine.fe_curr_time;
            outgoing_fix_msg        = Some ( ValidMsg ( reject_msg ));
            incoming_seq_num        = rejected_data.srej_msg_msg_seq_num;
            outgoing_seq_num        = engine.outgoing_seq_num + 1;
            fe_history              = add_msg_to_history ( engine.fe_history, reject_msg );
        }
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