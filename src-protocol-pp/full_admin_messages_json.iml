(** Full messages administrative JSON printers. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_admin_messages_json.ml

*)

open Yojson;;
open Full_admin_messages;;
open Base_types_json;;
open Datetime_json;;
open Full_admin_enums_json;;
open Full_message_tags_json;;

(** *)
let assoc_filter_nulls l : json =
    `Assoc ( List.filter (function ( _, `Null ) -> false | _ -> true ) l )
;;

let rg f lst : json =
    match lst with [] -> `Null | lst -> `List ( List.map f lst)
;;

(** *)
let full_msg_heartbeat_to_json x = 
    [ ( "TestReqID" , string_opt_to_json x.hb_test_req_id ) 
    ] |> assoc_filter_nulls 
;;


let msg_type_to_json msg = 
    [ ( "RefMsgType",    full_msg_tag_to_json msg.mtps_ref_msg_type )
    ; ( "MsgDirection" , msgdirection_to_json msg.mtps_direction    )
    ] |> assoc_filter_nulls
;;

(** *)
let full_msg_logon_to_json x = 
    [ ( "EncryptMethod"        , encryption_method_to_json x.ln_encrypt_method            )
    ; ( "HeartBtInt"           , duration_to_json       x.ln_heartbeat_interval        )
    ; ( "RawDataLength"        , int_opt_to_json           x.ln_raw_data_length           )
    ; ( "RawData"              , string_opt_to_json        x.ln_raw_data                  )
    ; ( "ResetSeqNumFlag"      , bool_opt_to_json          x.ln_reset_seq_num_flag        )
    ; ( "NextExpectedMsgSeqNum", int_opt_to_json           x.ln_next_expected_msg_seq_num )
    ; ( "MaxMessageSize"       , int_opt_to_json           x.ln_max_message_size          )
    ; ( "TestMessageIndicator" , bool_opt_to_json          x.ln_test_message_indicator    )
    ; ( "Username"             , string_opt_to_json        x.ln_username                  )
    ; ( "Password"             , string_opt_to_json        x.ln_password                  )
    ; ( "MsgTypes"             , rg msg_type_to_json       x.ln_msg_types                 )
    ] |> assoc_filter_nulls 
;;

(** *)
let full_msg_logoff_to_json x = 
    [ ( "EncodedText"    , int_opt_to_json    x.lo_encoded_text_len ) 
    ; ( "EncodedTextLen" , string_opt_to_json x.lo_encoded_text     ) 
    ] |> assoc_filter_nulls 
;;

(** *)
let full_msg_resend_request_to_json x = 
    [ ( "BeginSeqNo", int_to_json x.rr_begin_seq_num ) 
    ; ( "EndSeqNo"  , int_to_json x.rr_end_seq_num   ) 
    ] |> assoc_filter_nulls 
;;

(** *)
let full_msg_reject_to_json x = 
    [ ( "RefSeqNum"           , int_to_json                         x.sr_ref_seq_num           ) 
    ; ( "RefTagID"            , full_field_tag_opt_to_json          x.sr_ref_tag_id            ) 
    ; ( "RefMsgType"          , full_msg_tag_opt_to_json            x.sr_ref_msg_type          ) 
    ; ( "SessionRejectReason" , session_reject_reason_opt_to_json   x.sr_session_reject_reason )
    ; ( "Text"                , string_opt_to_json                  x.sr_text                  ) 
    ; ( "EncodedTextLen"      , int_opt_to_json                     x.sr_encoded_text_len      ) 
    ; ( "EncodedText"         , string_opt_to_json                  x.sr_encoded_text          ) 
    ] |> assoc_filter_nulls 
;;

(** *)
let full_msg_sequence_reset_to_json x = 
    [ ( "Sequence_Reset_GapFillFlag" , int_to_json             x.seqr_new_seq_no     )
    ; ( "Sequence_Reset_NewSeqNo"    , gapFillFlag_opt_to_json x.seqr_gap_fill_flag  )
    ] |> assoc_filter_nulls 
;;

(** *)
let full_msg_test_request_to_json x = 
    [ ( "Test_Request_TestReqID_Tag" , string_to_json x.test_req_id ) 
    ] |> assoc_filter_nulls 
;;

(** *)
let full_msg_business_reject_to_json x = 
    [ ( "RefSeqNum"             , int_to_json                     x.br_ref_seq_num           ) 
    ; ( "RefMsgType"            , full_msg_tag_to_json            x.br_ref_msg_type          ) 
    ; ( "BusinessRejectRefID"   , full_field_tag_opt_to_json      x.br_ref_field_id          ) 
    ; ( "BusinessRejectReason"  , business_reject_reason_to_json  x.br_business_reject_reason) 
    ; ( "Text"                  , string_opt_to_json              x.br_text                  ) 
    ; ( "EncodedTextLen"        , int_opt_to_json                 x.br_encoded_text_len      ) 
    ; ( "EncodedText"           , string_opt_to_json              x.br_encoded_text          ) 
    ] |> assoc_filter_nulls 
;;

(** *)
let full_admin_msg_to_json x : json = match x with
    | Full_Msg_Heartbeat        x -> `Assoc [ ( "Heartbeat"       , full_msg_heartbeat_to_json x       ) ]
    | Full_Msg_Logon            x -> `Assoc [ ( "Logon"           , full_msg_logon_to_json x           ) ]
    | Full_Msg_Logoff           x -> `Assoc [ ( "Logoff"          , full_msg_logoff_to_json x          ) ]
    | Full_Msg_Reject           x -> `Assoc [ ( "Reject"          , full_msg_reject_to_json x          ) ]
    | Full_Msg_Business_Reject  x -> `Assoc [ ( "Business_Reject" , full_msg_business_reject_to_json x ) ]
    | Full_Msg_Resend_Request   x -> `Assoc [ ( "Resend_Request"  , full_msg_resend_request_to_json x  ) ]
    | Full_Msg_Sequence_Reset   x -> `Assoc [ ( "Sequence_Reset"  , full_msg_sequence_reset_to_json x  ) ]
    | Full_Msg_Test_Request     x -> `Assoc [ ( "Test_Request"    , full_msg_test_request_to_json x    ) ]
;;
