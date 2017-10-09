(** Numeric types and operations. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017
    
    numeric.ml

*)

(* @meta[imandra_ignore] on @end *)
open Imandra_utils;;
(* @meta[imandra_ignore] off @end *)


let int_Add ( x , y : int * int ) : int = x + y;;


let int_Sub ( x , y : int * int ) : int = x - y;;


let int_Neg ( x : int ) : int = -x;;


let int_Mult ( x, y : int * int ) : int = x * y;;


let int_Div ( x, y : int * int ) : int = x / y;;


let int_GreaterThan (x, y : int * int ) : bool = x > y;;


let int_GreaterThanEqual ( x, y : int * int ) : bool = x >= y;;


let int_LessThan ( x, y : int * int ) : bool =  x < y;;


let int_LessThanEqual ( x, y : int * int ) : bool = x <= y;;

(** To keep track of the floating point precision, the floating point data
    type encodes a number of decimal places used.*)

type precision = Dec0 | Dec1 | Dec2 | Dec3 | Dec4;;

type fix_float =
  { precision : precision
  ; value     : int }
;;

let float_Create ( value, precision : int * precision ) =
  { precision
  ; value }
;;

let float_GetDecs ( f : fix_float ) =
  f.precision
;;

(** Result of promoting over the other. *)
type promotion_result = {
    f1 : fix_float;
    f2 : fix_float;
}
;;

let base_pow (p : precision) =
  match p with
    Dec0 -> 1
  | Dec1 -> 10
  | Dec2 -> 100
  | Dec3 -> 1000
  | Dec4 -> 10000
;;

let int_of_precision (p : precision) =
  match p with
    Dec0 -> 0
  | Dec1 -> 1
  | Dec2 -> 2
  | Dec3 -> 3
  | Dec4 -> 4
;;

let precision_of_int (i : int) =
  match i with
    0 -> Dec0
  | 1 -> Dec1
  | 2 -> Dec2
  | 3 -> Dec3
  | _ -> Dec4
;;

let promote ( b, d, v : int * int * int ) =
  let v = precision_of_int (v + b) in
  { precision = v
  ; value     = d * base_pow (v) }
;;

let promote_float ( f, num_decs : fix_float * int ) =
  promote (int_of_precision f.precision, f.value, num_decs)
;;

(* Type-case both floats to match. *)
let promote_floats ( f1, f2 : fix_float * fix_float ) =
  let prec1 = f1.precision in
  let prec2 = f2.precision in
  if prec1 = prec2 then
    { f1; f2 }
  else
    let decs1 = int_of_precision prec1 in
    let decs2 = int_of_precision prec2 in
    let max_decs = max(decs1, decs2) in
    let new_f1 = promote_float(f1, max_decs - decs1) in
    let new_f2 = promote_float(f2, max_decs - decs2) in
    {
        f1 = new_f1;
        f2 = new_f2;
    }
;;

(** float1 + float2 *)
let float_Add' (f1, f2) =
  { precision = f1.precision
  ; value     = f1.value + f2.value }
;;

let float_Add (fOne, fTwo : fix_float * fix_float) =
  if fOne.precision = fTwo.precision then
    float_Add' (fOne, fTwo)
  else
    let pres = promote_floats(fOne, fTwo) in
      float_Add' (pres.f1, pres.f2)
;;

(** float1 - float2 *)
let float_Sub' (f1, f2) =
  { precision = f1.precision
  ; value     = f1.value - f2.value }
;;

let float_Sub (fOne, fTwo : fix_float * fix_float) =
  if fOne.precision = fTwo.precision then
    float_Sub' (fOne, fTwo)
  else
    let pres = promote_floats(fOne, fTwo) in
      float_Sub' (pres.f1, pres.f2)
;;

(** -float1 *)
let float_Neg (fOne : fix_float) =
  { fOne with
    value = (-fOne.value) }
;;

(** float1 / float2 *)
let float_Div' ( fOne, fTwo : fix_float * fix_float ) =
  { precision = fOne.precision
  ; value     = (fOne.value * base_pow (fOne.precision)) / fTwo.value }
;;

let float_Div (fOne, fTwo : fix_float * fix_float) =
  if fOne.precision = fTwo.precision then
    float_Div' (fOne, fTwo)
  else
    let pres = promote_floats(fOne, fTwo) in
      float_Div' (pres.f1, pres.f2)
;;

(** float1 * float2 *)
let float_Mult' ( fOne, fTwo : fix_float * fix_float ) =
  { precision = fOne.precision
  ; value     = (fOne.value * (fTwo.value / base_pow (fOne.precision))) }
;;

let float_Mult (fOne, fTwo : fix_float * fix_float) =
  if fOne.precision = fTwo.precision then
    float_Mult' (fOne, fTwo)
  else
    let pres = promote_floats(fOne, fTwo) in
      float_Mult' (pres.f1, pres.f2)
;;

(** float1 > float2 *)
let float_GreaterThan ( fOne, fTwo : fix_float * fix_float ) =
  if fOne.precision = fTwo.precision then
    fOne.value > fTwo.value
  else
    let pres = promote_floats(fOne, fTwo) in
    pres.f1.value > pres.f2.value
;;

(** float 1 < float 2 *)
let float_LessThan ( fOne, fTwo : fix_float * fix_float ) =
  if fOne.precision = fTwo.precision then
    fOne.value < fTwo.value
  else
    let pres = promote_floats(fOne, fTwo) in
    pres.f1.value < pres.f2.value
;;

(** float1 >= float2 *)
let float_GreaterThanEqual ( fOne, fTwo : fix_float * fix_float ) =
    not (float_LessThan (fOne, fTwo))
;;

(** float1 == float2 *)
let float_Equal ( fOne, fTwo : fix_float * fix_float ) =
  fOne = fTwo
  || let pres = promote_floats(fOne, fTwo) in
  pres.f1 = pres.f2
;;

(** float1 <= float2 *)
let float_LessThanEqual ( fOne, fTwo : fix_float * fix_float ) =
    float_LessThan (fOne, fTwo) || float_Equal (fOne, fTwo)
;;

let f1_zero = { precision = Dec1; value = 0 };;

instance _ (x1_order_qty, x2_fill_price, x2_fill_qty) =
float_Equal(float_Sub(x1_order_qty, x2_fill_qty), f1_zero) 
&& float_GreaterThan(x2_fill_price, f1_zero)
&& float_GreaterThan(x2_fill_qty, f1_zero)
&& float_GreaterThan(x1_order_qty, f1_zero)
&& float_LessThanEqual(x2_fill_qty, x1_order_qty)
;;
