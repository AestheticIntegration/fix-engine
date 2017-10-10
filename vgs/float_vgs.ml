theorem[rw] float_LT_GT_elim (x,y) =
  float_LessThan(x,y) ==> float_GreaterThan(x,y) = false
;;

theorem[rw] float_LT_GT_equiv (x,y) =
  float_LessThan(x,y) ==> float_GreaterThan(y,x)
;;

theorem[rw] float_GT_LT_elim (x,y) =
  float_GreaterThan(x,y) ==> float_LessThan(x,y) = false
;;

theorem[rw] float_GT_LT_equiv (x,y) =
  float_GreaterThan(x,y) ==> float_LessThan(y,x)
;;

verify float_GT_LTE_equiv (x,y) =
  float_GreaterThan(x,y) ==> not ( float_LessThanEqual (x,y))
;;

theorem[rw] float_GTE_LT_equiv (x,y) =
  float_GreaterThanEqual(x,y) ==> not ( float_LessThan (x,y))
;;

(* ADDITION *)

theorem[rw] float_Add_commutative (x,y) =
  float_Equal
    ( float_Add (x, y)
    , float_Add (y, x)
    )
;;

verify float_Add_left_identity (x, zero) =
  float_is_zero zero ==>
  float_Equal
    ( float_Add (zero, x)
    , x
    )
;;

verify float_Add_right_identity (x, zero) =
  float_is_zero zero ==>
  float_Equal
    ( float_Add (x, zero)
    , x
    )
;;

verify float_Add_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Add(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Add(x, y), y))
;;

(* TODO: verify associative with precision constraints. *)

(* SUBTRACTION *)

verify float_Sub_right_identity (x, zero) =
  float_is_zero zero ==>
  float_Equal
    ( float_Sub (x, zero)
    , x
    )
;;

theorem[rw] float_Sub_self_is_zero (x) =
  float_is_zero (float_Sub ( x , x))
;;

verify float_Sub_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Sub(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Sub(x, y), y))
;;

(* MULTIPLICATION *)

theorem float_Mult_commutative_same_precision (x,y) =
 float_Equal
   ( float_Mult (x, y)
   , float_Mult (y, x)
   )
;;

verify float_Mult_left_identity (x, one) =
  float_is_one one ==>
  float_Equal
    ( float_Mult (one, x)
    , x
    )
;;

verify float_Mult_right_identity (x, one) =
  float_is_one one ==>
  float_Equal
    ( float_Mult (x, one)
    , x
    )
;;

verify float_Mult_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Mult(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Mult(x, y), y))
;;

(* TODO: verify associative with precision constraints. *)
(* TODO: verify distributive with precision constraints. *)

(* NEGATION *)

theorem[rw] float_double_Neg (x) =
  float_Equal
    ( float_Neg (float_Neg (x)), x)
;;

theorem[rw] float_Neg_preserves_precision (x, y) =
   float_equal_precision (float_Neg(x), x)
;;


(* DIVISION *)

verify float_Div_identity (x, one) =
  float_is_one one ==>
  float_Equal
    ( float_Div (x, one), x)
;;

theorem[rw] float_Div_zero_by_x (zero, x) =
  float_is_zero zero ==>
  float_is_zero
    ( float_Div (zero, x) )
;;

verify float_Div_x_by_x (x) =
  not (float_is_zero x) ==>
  float_is_one
    ( float_Div (x, x) )
;;

verify float_Div_preserves_precision (x, y) =
  (float_higher_precision (x, y) ==>
   float_equal_precision (float_Div(x, y), x)) &&
  (float_higher_precision (y, x) ==>
   float_equal_precision (float_Div(x, y), y))
;;
