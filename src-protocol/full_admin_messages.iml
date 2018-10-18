(** Full messages - administrative. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_admin_messages.ml

*)

open Datetime;;
open Full_admin_enums;;
open Full_admin_tags;;
open Full_message_tags;;

(**
  * Simple session admin messages
  *)

(** Heartbeat message data. *)
type full_msg_heartbeat_data = {
    hb_test_req_id                        : string option;                (** Tag 112: Required when the heartbeat is forced by a test request *)
}
;;

(** Repeating group for supported messages passed in Logon<A> *)
type full_msg_types_inner_rg = {
    mtps_ref_msg_type                     : full_msg_tag;                     (** Tag 372: Specifies a specific, supported MsgType <35>.  *)
    mtps_direction                        : fix_msgdirection                  (** Tag 385: Indicates direction (send vs. receive) from the point of view of the sender. *)
}
;;

(** Logon message data. *)
type full_msg_logon_data = {
    ln_encrypt_method                     : fix_encryption_method;            (** Tag  98 *)
    ln_heartbeat_interval                 : fix_duration;                     (** Tag 108 *)
    ln_raw_data_length                    : int option;                       (** Tag  95 *)
    ln_raw_data                           : string option;                (** Tag  96 *)
    ln_reset_seq_num_flag                 : bool option;                      (** Tag 141 *)
    ln_next_expected_msg_seq_num          : int option;                       (** Tag 789 *)
    ln_max_message_size                   : int option;                       (** Tag 383 *)

    ln_test_message_indicator             : bool option;                      (** Tag 464 *)
    ln_username                           : string option;                (** Tag 553 *)
    ln_password                           : string option;                (** Tag 554 *)
    
    ln_msg_types                          : full_msg_types_inner_rg list      (** Repeating group at tag 384 *)    
}
;;

(** Logoff message data. *)
type full_msg_logoff_data = {
    lo_encoded_text_len                   : int option;                       (** Tag 354 *)
    lo_encoded_text                       : string option;                (** Tag 355 *)
}
;;

(** Resend Request message data. *)
type full_msg_resend_request_data = {
    rr_begin_seq_num                      : int;                              (** Tag 7 *)
    rr_end_seq_num                        : int;                              (** Tag 16 *)
}
;;

(** Reject message data. *)
type full_msg_reject_data = {
    sr_ref_seq_num                        : int;                              (** Tag 45. MsgSeqNum of rejected message. *)
    sr_ref_tag_id                         : full_field_tag option;            (** Tag 371. The tag number of the FIX field being referenced.*)
    sr_ref_msg_type                       : full_msg_tag option;              (** Tag 372. The MsgType of the FIX message being referenced.*)
    sr_session_reject_reason              : fix_session_reject_reason option; (** Tag 373. Code to identify reason for a session-level Reject <3> message.*)
    sr_text                               : string option;                (** Tag 58. Where possible, message to explain reason for rejection.*)
    sr_encoded_text_len                   : int option;                       (** Tag 354. Encoded text length. *)
    sr_encoded_text                       : string option;                (** Tag 354. Encoded text. *)
}
;;

(** Sequence Reset message data. *)
type full_msg_sequence_reset_data = {
    seqr_new_seq_no                       : int;                              (** Tag 36 *)
    seqr_gap_fill_flag                    : fix_gapfillflag option;           (** Tag 123 *)
}
;;

(** Test Request message data.  *)
type full_msg_test_request_data = {
    test_req_id                           : string;                       (** Tag 112 *)
}
;;

(** Business Reject message data. *)
type full_msg_business_reject_data = {
    br_ref_seq_num                        : int;                              (** Tag 45. MsgSeqNum of rejected message. *)
    br_ref_msg_type                       : full_msg_tag;                     (** Tag 372. The MsgType of the FIX message being referenced.*)
    br_ref_field_id                       : full_field_tag option;            (** Tag 379. The business-level field on the message being referenced.*)    
    br_business_reject_reason             : fix_business_reject_reason;       (** Tag 380. Code to identify reason for a BusinessReject <j> message.*)
    br_text                               : string option;                (** Tag 58. Where possible, message to explain reason for rejection.*)
    br_encoded_text_len                   : int option;                       (** Tag 354. Encoded text length. *)
    br_encoded_text                       : string option;                (** Tag 354. Encoded text. *)
}
;;

(** Top-level full administrative message data type. *)
type full_admin_msg_data = 
    | Full_Msg_Heartbeat                  of full_msg_heartbeat_data
    | Full_Msg_Logon                      of full_msg_logon_data
    | Full_Msg_Logoff                     of full_msg_logoff_data
    | Full_Msg_Reject                     of full_msg_reject_data
    | Full_Msg_Business_Reject            of full_msg_business_reject_data
    | Full_Msg_Resend_Request             of full_msg_resend_request_data
    | Full_Msg_Sequence_Reset             of full_msg_sequence_reset_data
    | Full_Msg_Test_Request               of full_msg_test_request_data
;;

(** Get the message tag code, given the admin message data*)
let get_full_admin_msg_tag ( msg : full_admin_msg_data ) =
    match msg with 
    | Full_Msg_Heartbeat                  _ -> Full_Msg_Heartbeat_Tag
    | Full_Msg_Logon                      _ -> Full_Msg_Logon_Tag
    | Full_Msg_Logoff                     _ -> Full_Msg_Logoff_Tag
    | Full_Msg_Reject                     _ -> Full_Msg_Reject_Tag 
    | Full_Msg_Business_Reject            _ -> Full_Msg_Business_Reject_Tag
    | Full_Msg_Resend_Request             _ -> Full_Msg_Resend_Request_Tag
    | Full_Msg_Sequence_Reset             _ -> Full_Msg_Sequence_Reset_Tag
    | Full_Msg_Test_Request               _ -> Full_Msg_Test_Request_Tag
;;
