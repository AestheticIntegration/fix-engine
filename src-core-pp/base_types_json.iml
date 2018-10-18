(** JSON printers/parsers for base FIX types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    base_types_json.ml 
*)

open Yojson;;
open Numeric;;
module JU = Yojson.Basic.Util;;

(**
  *  Int
*)

let int_to_json x : json = `Int x ;;

let int_opt_to_json : int option -> json = function
  | None   -> `Null
  | Some x -> int_to_json x
;;

let json_to_int_opt x : int option= 
  JU.to_int_option x;;


(**
  *  Char
*)

let char_to_json x = `String x ;;
let char_opt_to_json = function 
  | None -> `Null
  | Some x -> `String x;;

let json_to_char_opt x : string option =
  JU.to_string_option x;;


(**
  *  FIX_Float
*)

let float_0_to_json : fix_float_0 -> json = function
  | Float_0 x ->
    `Assoc
      [ ( "Precision", `Int 0 )
      ; ( "Number"   , `Int x      )
      ]
;;

let float_0_opt_to_json = function 
  | None -> `Null
  | Some x -> float_0_to_json x
;;

let json_to_float_0_opt json : Numeric.fix_float_0 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 0 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_0 number);;

let float_1_to_json : fix_float_1 -> json = function
  | Float_1 x ->
    `Assoc
      [ ( "Precision", `Int 1 )
      ; ( "Number"   , `Int x      )
      ]
;;

let float_1_opt_to_json = function 
  | None -> `Null
  | Some x -> float_1_to_json x
;;

let json_to_float_1_opt json : Numeric.fix_float_1 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 1 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_1 number);;

let float_2_to_json : fix_float_2 -> json = function
  | Float_2 x ->
    `Assoc
      [ ( "Precision", `Int 2 )
      ; ( "Number"   , `Int x      )
      ]
;;

let float_2_opt_to_json = function 
  | None -> `Null
  | Some x -> float_2_to_json x
;;

let json_to_float_2_opt json : Numeric.fix_float_2 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 2 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_2 number);;

let float_3_to_json : fix_float_3 -> json = function
  | Float_3 x ->
    `Assoc
      [ ( "Precision", `Int 3 )
      ; ( "Number"   , `Int x      )
      ]
;;

let float_3_opt_to_json = function 
  | None -> `Null
  | Some x -> float_3_to_json x
;;

let json_to_float_3_opt json : Numeric.fix_float_3 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 3 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_3 number);;

let float_4_to_json : fix_float_4 -> json = function
  | Float_4 x ->
    `Assoc
      [ ( "Precision", `Int 4)
      ; ( "Number"   , `Int x      )
      ]
;;

let float_4_opt_to_json = function 
  | None -> `Null
  | Some x -> float_4_to_json x
;;

let json_to_float_4_opt json : Numeric.fix_float_4 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 4 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_4 number);;

let float_5_to_json : fix_float_5-> json = function
  | Float_5 x ->
    `Assoc
      [ ( "Precision", `Int 5)
      ; ( "Number"   , `Int x      )
      ]
;;

let float_5_opt_to_json = function 
  | None -> `Null
  | Some x -> float_5_to_json x
;;

let json_to_float_5_opt json : Numeric.fix_float_5 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 5 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_5 number);;

let float_6_to_json : fix_float_6 -> json = function
  | Float_6 x ->
    `Assoc
      [ ( "Precision", `Int 6)
      ; ( "Number"   , `Int x      )
      ]
;;

let float_6_opt_to_json = function 
  | None -> `Null
  | Some x -> float_6_to_json x
;;

let json_to_float_6_opt json : Numeric.fix_float_6 option =
  match JU.(json |> member "Precision" |> to_int_option ) with None -> None | Some precision ->
    if precision != 6 then None else
      match JU.(json |> member "Number"    |> to_int_option ) with None -> None | Some number ->
        Some Numeric.( float_Create_6 number);;


let float_to_json x = float_6_to_json x;;

let float_opt_to_json x = float_6_opt_to_json x;;


let json_to_float_opt = json_to_float_6_opt;;
(*
  FIX_String
*)

let string_to_json x : json = 
  `String  x  
;;

let json_to_string_opt x : string option =
  JU.to_string_option x
;;


let string_opt_to_json = function 
  | None   -> `Null
  | Some x -> string_to_json x
;;


(**
  *  FIX_Symbol
*)

let symbol_to_json x : json = 
  `String x  
;;

let json_to_symbol_opt x : string option =
  JU.to_string_option x
;;

let symbol_opt_to_json = function 
  | None   -> `Null
  | Some x -> symbol_to_json x
;;


(**
  *  FIX_Bool
*)

let bool_to_json : bool -> json = function
  | true  -> `String "true" 
  | false -> `String "false" 
;;

let json_to_bool_opt x : bool option = 
  match (JU.to_string_option x) with
  | None -> None
  | Some b -> (match b with
      | "true" -> Some true
      | "false" -> Some false
      | _ -> None
    )
;;

let bool_opt_to_json : bool option -> json = function
  | None   -> `Null
  | Some x -> bool_to_json x 
;;

