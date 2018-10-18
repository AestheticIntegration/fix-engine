(** JSON printers/parsers for base FIX types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    base_types_json.ml 
*)

open Numeric;;


let encode_int  = string_of_int ;;
let encode_char x = x ;;

let encode_float_0 = function Float_0 x -> Printf.sprintf "%d" x;;
let encode_float_1 = function Float_1 x -> Printf.sprintf "%.1f" ( float_of_int ( x ) /. 10.0 );;
let encode_float_2 = function Float_2 x -> Printf.sprintf "%.2f" ( float_of_int ( x ) /. 100.0 );;
let encode_float_3 = function Float_3 x -> Printf.sprintf "%.3f" ( float_of_int ( x ) /. 1000.0 );;
let encode_float_4 = function Float_4 x -> Printf.sprintf "%.4f" ( float_of_int ( x ) /. 10000.0 );;
let encode_float_5 = function Float_5 x -> Printf.sprintf "%.5f" ( float_of_int ( x ) /. 100000.0 );;
let encode_float_6 = function Float_6 x -> Printf.sprintf "%.6f" ( float_of_int ( x ) /. 1000000.0 );;
let encode_float x = encode_float_6 x;;



let encode_string x = x;;
let encode_symbol x = x;;

let encode_bool : bool -> string = function
    | true  -> "Y" 
    | false -> "N" 
;;