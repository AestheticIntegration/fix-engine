open Numeric;;

theorem float_LT_GT_elim (x,y) =
  float_LessThan_4_4 x y  ==> float_GreaterThan_4_4 x y  = false ;;

theorem float_LT_GT_equiv (x,y) =
  float_LessThan_4_4 x y  ==> float_GreaterThan_4_4 y x  ;;

theorem float_GT_LT_elim (x,y) =
  float_GreaterThan_4_4 x y  ==> float_LessThan_4_4 x y  = false ;;

theorem float_GT_LT_equiv (x,y) =
  float_GreaterThan_4_4 x y  ==> float_LessThan_4_4 y x  ;;

theorem float_GT_LTE_equiv (x,y) =
  float_GreaterThan_4_4 x y  ==> not ( float_LessThanEqual_4_4 x y ) ;;

theorem float_GTE_LT_equiv (x,y) =
  float_GreaterThanEqual_4_4 x y  ==> not ( float_LessThan_4_4 x y ) ;;

(* ADDITION *)

theorem float_Add_commutative (x,y) =
  float_Equal_4_4 ( float_Add_4_4  x y ) ( float_Add_4_4  y x ) ;;


theorem float_Add_left_identity (x, zero) =
  float_is_zero_4 zero ==>
  float_Equal_4_4 (float_Add_4_4 zero x) x
;;

theorem float_Add_right_identity (x, zero) =
  float_is_zero_4 zero ==>
  float_Equal_4_4 (float_Add_4_4 x zero) x 
;;

theorem float_Add_associative (x, y, z) =
  let a = float_Add_4_4 (float_Add_4_4 x y) z in
  let b = float_Add_4_4 x (float_Add_4_4 y z) in
  float_Equal_4_4 a b
;;



(*
????

theorem float_Add_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Add(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Add(x, y), y))
;;
*)

(* SUBTRACTION *)

theorem float_Sub_anticommutative (x, y) =
  float_Equal_4_4
    ( float_Sub_4_4 x y) 
    ( float_Neg_4 (float_Sub_4_4 y x))
    
;;

theorem float_Sub_right_identity (x, zero) =
  float_is_zero_4 zero ==>
  float_Equal_4_4 ( float_Sub_4_4 x zero) x
;;

theorem float_Sub_self_is_zero (x) =
  float_is_zero_4 (float_Sub_4_4 x x)
;;

(*
?????
theorem float_Sub_4_4_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Sub_4_4(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Sub_4_4(x, y), y))
;;
*)

(* MULTIPLICATION *)

theorem float_Mult_commutative (x,y) =
 float_Equal_4_4 ( float_Mult_4_4 x y ) ( float_Mult_4_4 y x )
;;

theorem float_Mult_left_identity (x, one) =
  float_is_one_4 one ==>
  float_Equal_4_4 ( float_Mult_4_4 one x) x
;;

theorem float_Mult_right_identity (x, one) =
  float_is_one_4 one ==>
  float_Equal_4_4 (float_Mult_4_4 x one) x
;;

theorem float_Mult_left_zero (x, zero) =
  float_is_zero_4 zero ==>
  float_Equal_4_4 ( float_Mult_4_4 zero x) zero
;;

theorem float_Mult_right_zero (x, zero) =
  float_is_zero_4 zero ==>
  float_Equal_4_4 ( float_Mult_4_4 x zero ) zero
;;

(*
??????
theorem float_Mult_4_4_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Mult_4_4(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Mult_4_4(x, y), y))
;;
*)

(* Not true. *)
theorem float_Mult_4_4_associative (x, y, z) =
  let a = float_Mult_4_4 (float_Mult_4_4 x y) z in
  let b = float_Mult_4_4 x (float_Mult_4_4 y z) in
  float_Equal_4_4 a b
;; 

(* Not true. *)
theorem float_Add_Mult_left_distributive (x, y, z) =
  let a = float_Mult_4_4 x (float_Add_4_4 y z) in
  let b = float_Add_4_4 (float_Mult_4_4 x y) (float_Mult_4_4 x z) in
  float_Equal_4_4 a b
;; 

(* Not proved. *)
theorem float_Add_Mult_right_distributive (x, y, z) =
  let a = float_Mult_4_4 (float_Add_4_4 x y) z in
  let b = float_Add_4_4 (float_Mult_4_4 x y) (float_Mult_4_4 y z) in
  float_Equal_4_4 a b
;; 

(* NEGATION *)
theorem float_double_Neg (x) =
  float_Equal_4_4 (float_Neg_4 (float_Neg_4 x)) x
;;

(*
????
theorem float_Neg_preserves_precision (x, y) =
   float_equal_precision (float_Neg_4(x), x)
;;
*)


(* DIVISION *)

theorem float_Div_identity (x, one) =
  float_is_one_4 one ==>
  float_Equal_4_4 ( float_Div_4_4 x one) x
;;

theorem float_Div_zero_by_x (zero, x) =
  not (float_is_zero_4 x) ==>
  float_is_zero_4 zero ==>
  float_is_zero_4 (float_Div_4_4 zero x) 
;;

theorem float_Div_x_by_x (x) =
  not (float_is_zero_4 x) ==>
  float_is_one_4 ( float_Div_4_4 x x )
;;

(*
?????
theorem float_Div_4_4_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Div_4_4(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Div_4_4(x, y), y))
;;
*)

(* Not true. *)
theorem float_Add_Div_right_distributive (x, y, z) =
  let a = float_Div_4_4 (float_Add_4_4 x y) z in
  let b = float_Add_4_4 (float_Div_4_4 x y) (float_Div_4_4 y z) in
  float_Equal_4_4 a b
;; 

