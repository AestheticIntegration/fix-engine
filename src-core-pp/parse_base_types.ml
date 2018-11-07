(** Parsers for base types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    datetime_json.ml 
*)

open Numeric;;

let parse_string (str : string) : string option = 
   Some str
;; 

let parse_symbol (str : string) : string option = 
    Some str
;;

let parse_char (str: string) : string option =
    Some str

let parse_int ( str : string ) : int option = 
    if String.get str 0 = '+' then None else
    try 
        Some(int_of_string str) 
    with _ -> None
;;

let parse_bool ( str : string) : bool option = 
    match str with 
    | "Y" -> Some true 
    | "N" -> Some false 
    | _ -> None
;;

let rec pow10 n =
    if n <= 0 then 1 else 10 * pow10 (n-1)

let parse_float (str: string) : Numeric.fix_float_6 option =
    if String.get str 0 = '+' then None else
    let whole, tail = Scanf.sscanf str "%d%s" (fun w f -> (w,f)) in
    if (tail = "") || (tail = ".") then Some (Float_6 ( whole * 1000000 )) else
    if String.get tail 0 != '.' then None else
    let fraction = Scanf.sscanf tail ".%d" (fun t -> t) in
    let frlen = String.length tail - 1 in
    if frlen <= 6 then
    Some (Float_6 (whole * 1000000 + fraction * pow10 (6 - frlen)))
    else None
;;

