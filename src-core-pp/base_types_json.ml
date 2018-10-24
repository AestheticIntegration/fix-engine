(** JSON printers/parsers for base FIX types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    base_types_json.ml 
*)

open Yojson;;
open Numeric;;
module JU = Yojson.Basic.Util;;
module D = Decoders_yojson.Basic.Decode;; 
open D.Infix;;

(**
  *  Int
*)

let int_to_json x : json = `Int x ;;

let int_opt_to_json : int option -> json = function
  | None   -> `Null
  | Some x -> int_to_json x
;;

let int_decoder : int Decoders_yojson.Basic.Decode.decoder = 
  D.int;;


(**
  *  Char
*)

let char_to_json x = `String x ;;
let char_opt_to_json = function 
  | None -> `Null
  | Some x -> `String x;;

let char_decoder : string Decoders_yojson.Basic.Decode.decoder =
  D.string;;


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

let float_0_decoder : Numeric.fix_float_0 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 0) then 
    D.fail "Precision must be 0 in float_0 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_0 x);;

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

let float_1_decoder : Numeric.fix_float_1 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 1) then 
    D.fail "Precision must be 1 in float_1 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_1 x);;

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

let float_2_decoder : Numeric.fix_float_2 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 2) then 
    D.fail "Precision must be 2 in float_2 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_2 x);;


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

let float_3_decoder : Numeric.fix_float_3 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 3) then 
    D.fail "Precision must be 3 in float_3 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_3 x);;


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

let float_4_decoder : Numeric.fix_float_4 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 4) then 
    D.fail "Precision must be 4 in float_4 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_4 x);;


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

let float_5_decoder : Numeric.fix_float_5 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 5) then 
    D.fail "Precision must be 5 in float_5 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_5 x);;


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

let float_6_decoder : Numeric.fix_float_6 Decoders_yojson.Basic.Decode.decoder =
  D.field "Precision" D.int >>= fun p ->
  if (p <> 6) then 
    D.fail "Precision must be 6 in float_6 json encoding." else 
    D.field "Number" D.int >>= fun x -> 
    D.succeed 
      Numeric.(float_Create_6 x);;


let float_to_json x = float_6_to_json x;;

let float_opt_to_json x = float_6_opt_to_json x;;


let float_decoder = float_6_decoder;;
(*
  FIX_String
*)

let string_to_json x : json = 
  `String  x  
;;

let string_opt_to_json = function 
  | None   -> `Null
  | Some x -> string_to_json x
;;

let string_decoder : string Decoders_yojson.Basic.Decode.decoder =
  D.string
;;


(**
  *  FIX_Symbol
*)

let symbol_to_json x : json = 
  `String x  
;;

let symbol_opt_to_json = function 
  | None   -> `Null
  | Some x -> symbol_to_json x
;;

let symbol_decoder : string Decoders_yojson.Basic.Decode.decoder =
  D.string
;;


(**
  *  FIX_Bool
*)

let bool_to_json : bool -> json = function
  | true  -> `String "true" 
  | false -> `String "false" 
;;

let bool_decoder : bool Decoders_yojson.Basic.Decode.decoder =
  D.bool;;

let bool_opt_to_json : bool option -> json = function
  | None   -> `Null
  | Some x -> bool_to_json x 
;;

