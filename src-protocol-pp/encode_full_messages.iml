(** Parser for full administrative messages. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_full_messages.ml

*)

open Full_messages
open Encode_base_types
open Encode_full_tags
open TimeDefaults_pp
open Fix_version

let req f x = Some (f x);;
let opt f v = match v with Some x -> Some ( f x ) | None -> None;;


let encode_msg_data msg =
    match msg with
    | Full_FIX_Admin_Msg msg -> Encode_admin_messages.encode_admin_msg_data msg
    | Full_FIX_App_Msg   msg -> Encode_app_messages.encode_app_msg_data     msg  
;;


let encode_header msg_tag msg = 
    [ (* Tags 8 and 9 will be added in encode_full_valid_msg *)
      ( "35"  , req encode_full_msg_tag  msg_tag                          )
    ; ( "49"  , req encode_string        msg.h_sender_comp_id             )
    ; ( "56"  , req encode_string        msg.h_target_comp_id             )
    ; ( "34"  , req encode_int           msg.h_msg_seq_num                )
    ; ( "115" , opt encode_string        msg.h_on_behalf_of_comp_id       ) 
    ; ( "128" , opt encode_string        msg.h_deliver_to_comp_id         )  
    ; ( "90"  , opt encode_int           msg.h_secure_data_len            )   
    ; ( "91"  , opt encode_int           msg.h_secure_data                )   
    ; ( "50"  , opt encode_string        msg.h_sender_sub_id              )   
    ; ( "142" , opt encode_string        msg.h_sender_location_id         )  
    ; ( "57"  , opt encode_string        msg.h_target_sub_id              )   
    ; ( "143" , opt encode_string        msg.h_target_location_id         )  
    ; ( "116" , opt encode_string        msg.h_on_behalf_of_sub_id        )  
    ; ( "114" , opt encode_string        msg.h_on_behalf_of_location_id   )  
    ; ( "129" , opt encode_string        msg.h_deliver_to_sub_id          )  
    ; ( "145" , opt encode_string        msg.h_deliver_to_location_id     )  
    ; ( "43"  , opt encode_bool          msg.h_poss_dup_flag              )    
    ; ( "97"  , opt encode_bool          msg.h_poss_resend                )    
    ; ( "52"  , req encode_UTCTimestamp  msg.h_sending_time               )   
    ; ( "122" , opt encode_UTCTimestamp  msg.h_orig_sending_time          )  
    ; ( "212" , opt encode_int           msg.h_xml_data_len               )  
    ; ( "213" , opt encode_int           msg.h_xml_data                   )  
    ; ( "347" , opt encode_int           msg.h_message_enconding          )  
    ; ( "369" , opt encode_int           msg.h_last_msg_seq_num_processed )  
    ; ( "627" , opt encode_int           msg.h_no_hops                    ) 
    ] 
;;


let encode_trailer msg =  
    [ ( "93" , opt encode_int msg.signature_length )
    ; ( "89" , opt encode_int msg.signature        )
    ]
;;


let get_body_length msg =
    let rec scan n msg = match msg with
        | ( "8", _ )::tl 
        | ( "9", _ )::tl -> scan n tl
        | ("10", _ )::_tl -> n
        | (  k , v )::tl -> n + scan String.(length k + length v + 2) tl
        | [] -> n in 
    scan 0 msg 
;;

let get_checksum msg =
    let checksum s = 
        let rec chsum i v =
            if i < 0 then v else chsum (i - 1) (Char.code s.[i] + v)  in
        chsum (String.length s - 1) 0 
    in
    let rec scan n msg = match msg with
        | ("10", _v )::_tl -> n mod 256
        | (  k , v )::tl -> scan (checksum k + checksum v + 62 + n) tl
        | [] -> n mod 256 in 
    scan 0 msg 
;;

let prepare_packet msg_body =
    let encode_checksum = Printf.sprintf "%03u" in
    let msg = [ ( "8"   , default_session_details.constant_begin_string )
              ; ( "9"   , get_body_length msg_body |> encode_int )
              ] @ msg_body
              in             
    msg @ [ ( "10" , get_checksum msg |> encode_checksum )] 
;;

let encode_full_valid_msg x =
    let msgtag = get_full_msg_tag x.full_msg_data in
    let msg_body = 
        encode_header msgtag x.full_msg_header @
        encode_msg_data      x.full_msg_data   @
        encode_trailer       x.full_msg_trailer
        in
    let msg_body = msg_body
        |> List.filter (fun (_k,v) -> v <> None )
        |> List.map    (fun (k,v) -> (k, match v with Some v -> v | None -> ""))
        in
    msg_body |> prepare_packet
             |> List.map ( fun(k,v) -> k^"="^v )
             |> List.fold_left ( fun a s -> a ^ s ^ "\001" ) ""
;;
