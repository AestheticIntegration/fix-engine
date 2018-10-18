(** Implementation of the 'full' FIX messages. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    full_messages.ml

*)

open Full_message_tags;;
open Full_admin_enums;;
open Full_admin_messages;;
open Full_app_messages;;
open TimeDefaults;;


(** 
  * Union Message type
  *)

(** Full FIX message data may be of 2 types: Admin and Application. *)
type full_msg_data = 
    | Full_FIX_Admin_Msg                            of full_admin_msg_data
    | Full_FIX_App_Msg                              of full_app_msg_data
;;

(** We maintain a type 'Full_Msg_Tag' that represents *)
let get_full_msg_tag ( m : full_msg_data ) =
    match m with
    | Full_FIX_Admin_Msg msg                        -> Full_Admin_Msg_Tag ( get_full_admin_msg_tag ( msg ) )
    | Full_FIX_App_Msg msg                          -> Full_App_Msg_Tag ( get_full_app_msg_tag (msg ) )
;;


(** 
    Note that information contained in the data structures for Business and Session
        Rejected messages should be enough to send out the 'Reject' and 'BusinessReject' messages.

    Reject message

    45	RefSeqNum               - Required - MsgSeqNum <34> of rejected message
    371	RefTagID                - Optional - The tag number of the FIX field being referenced.
    372	RefMsgType              - Optional - The MsgType <35> of the FIX message being referenced.
    373	SessionRejectReason	    - Optional - Code to identify reason for a session-level Reject <3> message.
    58	Text	                - Optional - Where possible, message to explain reason for rejection
    354	EncodedTextLen	        - Optional - Must be set if EncodedText <355> field is specified and must immediately precede it.
    355	EncodedText	            - Optional - Encoded (non-ASCII characters) representation of the Text <58> field in the encoded 
                                                format specified via the MessageEncoding <347> field. *)
type session_rejected_msg_data = {
    srej_msg_msg_seq_num                            : int;
    srej_msg_field_tag                              : full_field_tag option;
    srej_msg_msg_type                               : full_msg_tag option;
    srej_msg_reject_reason                          : fix_session_reject_reason option;
    srej_text                                       : string option;
    srej_encoded_text_len                           : int option;
    srej_encoded_text                               : string option;
}
;;

(** 
    Business Reject message data.

    45	RefSeqNum	            - Optional - MsgSeqNum <34> of rejected message
    372	RefMsgType	Y	        - Required - The MsgType <35> of the FIX message being referenced.
    379	BusinessRejectRefID	    - Optional - The value of the business-level 'ID' field on the message being referenced. 
                                                Required unless the corresponding ID field (see list above) was not specified.
    380	BusinessRejectReason    - Required - Code to identify reason for a Business Message Reject <j> message.
    58	Text	                - Optional - Where possible, message to explain reason for rejection
    354	EncodedTextLen	        - Optional - Must be set if EncodedText <355> field is specified and must immediately precede it.
    355	EncodedText	            - Optional - Encoded (non-ASCII characters) representation of the Text <58> field in the encoded 
                                                format specified via the MessageEncoding <347> field. *)
type biz_rejected_msg_data = {
    brej_msg_ref_seq_num                            : int;
    brej_msg_msg_tag                                : full_msg_tag;
    brej_msg_reject_reason                          : fix_business_reject_reason;
    brej_msg_field_tag                              : full_field_tag option;
    brej_msg_text                                   : string option;
    brej_msg_encoded_text                           : string option;
}
;;

(** Standard FIX header. 
    Note that the standard header has tag Tag 35 that is the 
    message type. We do not need this tag as message type is 
    explicit. *)
type fix_header = {
    h_begin_string                    : string;       (* Tag 8    *)
    h_body_length                     : int;          (* Tag 9    *)
    h_sender_comp_id                  : string;       (* Tag 49   *)
    h_target_comp_id                  : string;       (* Tag 56   *)
    h_msg_seq_num                     : int;          (* Tag 34   *)

    h_on_behalf_of_comp_id            : string option;   (* Tag 115  *)
    h_deliver_to_comp_id              : string option;   (* Tag 128  *)
    h_secure_data_len                 : int option;      (* Tag 90   *)
    h_secure_data                     : int option;      (* Tag 91   *)
    h_sender_sub_id                   : string option;   (* Tag 50   *)
    h_sender_location_id              : string option;   (* Tag 142  *)
    h_target_sub_id                   : string option;   (* Tag 57   *)
    h_target_location_id              : string option;   (* Tag 143  *)
    h_on_behalf_of_sub_id             : string option;   (* Tag 116  *)
    h_on_behalf_of_location_id        : string option;   (* Tag 114  *)
    h_deliver_to_sub_id               : string option;   (* Tag 129  *)
    h_deliver_to_location_id          : string option;   (* Tag 145  *)
    h_poss_dup_flag                   : bool option;     (* Tag 43   *)
    
    h_poss_resend                     : bool option;     (* Tag 97   *)
    h_sending_time                    : fix_utctimestamp;(* Tag 52   *)
    h_orig_sending_time               : fix_utctimestamp option;   (* Tag 122  *)
    h_xml_data_len                    : int option;      (* Tag 212  *)
    h_xml_data                        : int option;      (* Tag 213  *)
    h_message_enconding               : int option;      (* Tag 347  *)
    h_last_msg_seq_num_processed      : int option;      (* Tag 369  *)
    h_no_hops                         : int option;      (* Tag 627  *)
} 
;;

(** Standard FIX trailer *)
type fix_trailer = {
    signature_length                : int option;  (* Tag 93: Signature Length *)
    signature                       : int option;  (* Tag 89: Signature text *)
    check_sum                       : int;  (* Tag 10: *)
}
;;

(** Full FIX valid message data. *)
type full_valid_fix_msg = {
    full_msg_header                                 : fix_header;
    full_msg_data                                   : full_msg_data;
    full_msg_trailer                                : fix_trailer;
}
;;

(** Union 'full' message type. *)
type full_top_level_msg = 
    | ValidMsg                                      of full_valid_fix_msg
    | SessionRejectedMsg                            of session_rejected_msg_data
    | BusinessRejectedMsg                           of biz_rejected_msg_data
    | Garbled
;;



