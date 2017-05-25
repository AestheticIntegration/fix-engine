(** Parse full administrative messages. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017
    
    parse_admin_messages.ml

*)

open Full_admin_tags;;
open Full_admin_messages;;
open Encode_base_types;;
open Encode_datetime;;
open Encode_admin_enums;;
open Encode_full_tags;; 

let req f x = Some (f x);;

let opt f v =
    match v with Some x -> Some ( f x ) | None -> None;; 

(** *)
let encode_msg_heartbeat_data msg = 
    [ ("112" , opt encode_int msg.hb_test_req_id ) ]  
;;

(** *)
let encode_msg_logon_data msg =
    [ ( "98"  , req encode_encryption_method msg.ln_encrypt_method            )
    ; ( "108" , req encode_Duration          msg.ln_heartbeat_interval        )
    ; ( "95"  , opt encode_int               msg.ln_raw_data_length           )
    ; ( "96"  , opt encode_string            msg.ln_raw_data                  )
    ; ( "141" , opt encode_int               msg.ln_reset_seq_num_flag        )
    ; ( "789" , opt encode_int               msg.ln_next_expected_msg_seq_num )
    ; ( "383" , opt encode_int               msg.ln_max_message_size          )
    ; ( "464" , opt encode_bool              msg.ln_test_message_indicator    )
    ; ( "553" , opt encode_string            msg.ln_username                  )
    ; ( "554" , opt encode_string            msg.ln_password                  )
    ] 
;;

(** *)
let encode_msg_logoff_data msg = 
    [ ( "355" , opt encode_int    msg.lo_encoded_text_len ) 
    ; ( "354" , opt encode_string msg.lo_encoded_text     ) 
    ]
;;

(** *)
let encode_msg_resend_request_data msg = 
    [ ( "7"  , req encode_int msg.rr_begin_seq_num ) 
    ; ( "16" , req encode_int msg.rr_end_seq_num   )
    ] 
;;

(** *)
let encode_msg_reject_data msg = 
    [ ( "45"  , req encode_int                    msg.sr_ref_seq_num           ) 
    ; ( "371" , opt encode_string                 msg.sr_ref_tag_id            ) 
    ; ( "372" , opt encode_full_msg_tag           msg.sr_ref_msg_type          ) 
    ; ( "373" , opt encode_session_reject_reason  msg.sr_session_reject_reason )
    ; ( "58"  , opt encode_string                 msg.sr_text                  ) 
    ; ( "354" , opt encode_int                    msg.sr_encoded_text_len      ) 
    ; ( "355" , opt encode_string                 msg.sr_encoded_text          )
    ] 
;;

(** *)
let encode_msg_sequence_reset_data msg = 
    [ ( "36"  , req encode_int         msg.seqr_new_seq_no    )
    ; ( "123" , opt encode_GapFillFlag msg.seqr_gap_fill_flag ) 
    ]
;;

(** *)
let encode_msg_test_request_data msg = 
    [ ( "112" , req encode_int msg.test_req_id ) ]
;;

(** *)
let encode_msg_business_reject_data msg = 
    [ ( "45"  , req encode_int                    msg.br_ref_seq_num            )
    ; ( "380" , req encode_business_reject_reason msg.br_business_reject_reason )
    ] 
;;

(** *)
let encode_admin_msg_data msg = 
    match msg with
    | Full_Msg_Heartbeat       msg -> encode_msg_heartbeat_data       msg     
    | Full_Msg_Test_Request    msg -> encode_msg_test_request_data    msg   
    | Full_Msg_Resend_Request  msg -> encode_msg_resend_request_data  msg 
    | Full_Msg_Reject          msg -> encode_msg_reject_data          msg        
    | Full_Msg_Sequence_Reset  msg -> encode_msg_sequence_reset_data  msg 
    | Full_Msg_Logoff          msg -> encode_msg_logoff_data          msg         
    | Full_Msg_Logon           msg -> encode_msg_logon_data           msg        
    | Full_Msg_Business_Reject msg -> encode_msg_business_reject_data msg 
;;
