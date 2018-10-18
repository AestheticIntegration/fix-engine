(** Parser for full message tags. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_full_tags.ml

*)

open Full_message_tags;;
open Parse_app_tags;; 
open Parse_admin_tags;;


let parse_full_msg_tag str = 
    match parse_admin_msg_tag str with
    | Some x -> Some (Full_Admin_Msg_Tag x)
    | None   -> begin 
        match parse_app_msg_tag str with
        | Some x -> Some (Full_App_Msg_Tag x)
        | None   -> None 
    end
;;


let parse_full_field_tag str = 
    match parse_admin_field_tag str with 
        | Some x -> Some (Full_Admin_Field_Tag x)  
        | None  -> begin
            match parse_app_field_tag str with
            | Some x -> Some (Full_App_Field_Tag x) 
            | None   -> None 
        end
;;
