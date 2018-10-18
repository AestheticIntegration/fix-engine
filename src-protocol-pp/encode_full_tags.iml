(** Parser for full message tags. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_full_tags.ml

*)

open Full_message_tags;;
open Encode_app_tags;; 
open Encode_admin_tags;;


let encode_full_msg_tag tag =
    match tag with
        | Full_Admin_Msg_Tag tag -> encode_admin_msg_tag tag
        | Full_App_Msg_Tag   tag -> encode_app_msg_tag   tag
;; 


let encode_full_field_tag tag = 
    match tag with 
        | Full_Admin_Field_Tag tag -> encode_admin_field_tag tag
        | Full_App_Field_Tag   tag -> encode_app_field_tag tag
;;
