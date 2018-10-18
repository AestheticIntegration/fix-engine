(** Parse full administrative messages. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    parse_admin_messages.ml

*)

open Full_admin_tags;;
open Full_admin_messages;;
open Parser_utils.Parser;;
open Parse_base_types;;
open Parse_datetime;;
open Parse_admin_enums;;
open Parse_full_tags;;


let parse_msg_heartbeat_data msg = (
    check_duplicate_tags msg    @@ fun () ->
    opt msg "112" parse_string  @@ fun msg hb_test_req_id ->
    ParseSuccess { hb_test_req_id
    } , msg
    ) |> check_unknown_tags 
;;

let parse_msg_types msg = (
    req msg "372" parse_full_msg_tag @@ fun msg mtps_ref_msg_type ->
    req msg "385" parse_MsgDirection @@ fun msg mtps_direction    ->
    ParseSuccess 
    { mtps_ref_msg_type 
    ; mtps_direction    
    } , msg )
;;

let parse_msg_logon_data msg = (
    repeating msg "384" parse_msg_types   @@ fun msg ln_msg_types                 ->
    check_duplicate_tags msg              @@ fun ()                               ->
    req msg "98"  parse_encryption_method @@ fun msg ln_encrypt_method            ->
    req msg "108" parse_Duration          @@ fun msg ln_heartbeat_interval        ->
    opt msg "95"  parse_int               @@ fun msg ln_raw_data_length           ->
    opt msg "96"  parse_string            @@ fun msg ln_raw_data                  ->
    opt msg "141" parse_bool              @@ fun msg ln_reset_seq_num_flag        ->
    opt msg "789" parse_int               @@ fun msg ln_next_expected_msg_seq_num ->
    opt msg "383" parse_int               @@ fun msg ln_max_message_size          ->
    opt msg "464" parse_bool              @@ fun msg ln_test_message_indicator    ->
    opt msg "553" parse_string            @@ fun msg ln_username                  ->
    opt msg "554" parse_string            @@ fun msg ln_password                  -> 
    ParseSuccess 
    { ln_encrypt_method             
    ; ln_heartbeat_interval         
    ; ln_raw_data_length            
    ; ln_raw_data                   
    ; ln_reset_seq_num_flag         
    ; ln_next_expected_msg_seq_num  
    ; ln_max_message_size           
    ; ln_test_message_indicator     
    ; ln_username                   
    ; ln_password                   
    ; ln_msg_types
    } , msg
    ) |> check_unknown_tags 
;;


let parse_msg_logoff_data msg = ( 
    check_duplicate_tags msg   @@ fun () ->
    opt msg "355" parse_int    @@ fun msg lo_encoded_text_len -> 
    opt msg "354" parse_string @@ fun msg lo_encoded_text     -> 
    ParseSuccess 
    { lo_encoded_text_len 
    ; lo_encoded_text    
    } , msg
    ) |> check_unknown_tags
;;


let parse_msg_resend_request_data msg = (
    check_duplicate_tags msg  @@ fun () ->
    req msg "7"  parse_int    @@ fun msg rr_begin_seq_num -> 
    req msg "16" parse_int    @@ fun msg rr_end_seq_num   -> 
    ParseSuccess 
    { rr_begin_seq_num  
    ; rr_end_seq_num    
    } , msg 
    ) |> check_unknown_tags
;;


let parse_msg_reject_data msg = ( 
    check_duplicate_tags msg                   @@ fun () ->
    req msg "45"  parse_int                    @@ fun msg sr_ref_seq_num           -> 
    opt msg "371" parse_full_field_tag         @@ fun msg sr_ref_tag_id            -> 
    opt msg "372" parse_full_msg_tag           @@ fun msg sr_ref_msg_type          -> 
    opt msg "373" parse_session_reject_reason  @@ fun msg sr_session_reject_reason ->
    opt msg "58"  parse_string                 @@ fun msg sr_text                  -> 
    opt msg "354" parse_int                    @@ fun msg sr_encoded_text_len      -> 
    opt msg "355" parse_string                 @@ fun msg sr_encoded_text          -> 
    ParseSuccess
    { sr_ref_seq_num           
    ; sr_ref_tag_id            
    ; sr_ref_msg_type          
    ; sr_session_reject_reason 
    ; sr_text                  
    ; sr_encoded_text_len      
    ; sr_encoded_text          
    } , msg
    ) |> check_unknown_tags    
;;


let parse_msg_sequence_reset_data msg = (
    check_duplicate_tags msg        @@ fun () ->
    req msg "36"  parse_int         @@ fun msg seqr_new_seq_no    ->
    opt msg "123" parse_GapFillFlag @@ fun msg seqr_gap_fill_flag -> 
    ParseSuccess
    { seqr_new_seq_no     
    ; seqr_gap_fill_flag  
    } , msg 
    ) |> check_unknown_tags    
;;


let parse_msg_test_request_data msg = (
    check_duplicate_tags msg   @@ fun () ->
    req msg "112" parse_string @@ fun msg test_req_id -> 
    ParseSuccess
    { test_req_id 
    } , msg
    ) |> check_unknown_tags    
;;


let parse_msg_business_reject_data msg = (
    check_duplicate_tags msg                       @@ fun () ->
    req msg "45"  parse_int                        @@ fun msg br_ref_seq_num            -> 
    req msg "372" parse_full_msg_tag               @@ fun msg br_ref_msg_type           -> 
    opt msg "379" parse_full_field_tag             @@ fun msg br_ref_field_id           -> 
    req msg "380" parse_business_reject_reason     @@ fun msg br_business_reject_reason -> 
    opt msg "58"  parse_string                     @@ fun msg br_text                   -> 
    opt msg "354" parse_int                        @@ fun msg br_encoded_text_len       -> 
    opt msg "354" parse_string                     @@ fun msg br_encoded_text           -> 
    ParseSuccess
    { br_ref_seq_num           
    ; br_ref_msg_type          
    ; br_ref_field_id          
    ; br_business_reject_reason 
    ; br_text                  
    ; br_encoded_text_len      
    ; br_encoded_text          
    } , msg
    ) |> check_unknown_tags    
;;


let parse_admin_msg_data msg_tag msg = 
    match msg_tag with
    | Full_Msg_Heartbeat_Tag        -> parse_msg_heartbeat_data       msg >>= fun x -> ParseSuccess ( Full_Msg_Heartbeat       x )    
    | Full_Msg_Test_Request_Tag     -> parse_msg_test_request_data    msg >>= fun x -> ParseSuccess ( Full_Msg_Test_Request    x )  
    | Full_Msg_Resend_Request_Tag   -> parse_msg_resend_request_data  msg >>= fun x -> ParseSuccess ( Full_Msg_Resend_Request  x )
    | Full_Msg_Reject_Tag           -> parse_msg_reject_data          msg >>= fun x -> ParseSuccess ( Full_Msg_Reject          x )       
    | Full_Msg_Sequence_Reset_Tag   -> parse_msg_sequence_reset_data  msg >>= fun x -> ParseSuccess ( Full_Msg_Sequence_Reset  x )
    | Full_Msg_Logoff_Tag           -> parse_msg_logoff_data          msg >>= fun x -> ParseSuccess ( Full_Msg_Logoff          x )        
    | Full_Msg_Logon_Tag            -> parse_msg_logon_data           msg >>= fun x -> ParseSuccess ( Full_Msg_Logon           x )       
    | Full_Msg_Business_Reject_Tag  -> parse_msg_business_reject_data msg >>= fun x -> ParseSuccess ( Full_Msg_Business_Reject x )
;;
