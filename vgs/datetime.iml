(* Basic Datetime VGs *)

open Datetime;;

theorem utc_gt_transitive (x,y,z) =
 utctimestamp_GreaterThan x y 
 && utctimestamp_GreaterThan y z 
 ==>
 utctimestamp_GreaterThan x z 
;;

theorem utc_gt_irreflexive (x) =
 not(utctimestamp_GreaterThan x x )
;;

theorem utc_gt_total (x,y) =
 x = y
 || utctimestamp_GreaterThan x y 
 || utctimestamp_GreaterThan y x 
;;

theorem normalise_id (x) =
 is_valid_utctimestamp x
 ==>
 normalise_timestamp x = x
;;

theorem utctimeonly_GT_EQ_elim (x,y) =
  utctimeonly_GreaterThan x y  ==> utctimeonly_Equal x y  = false
;;


theorem utctimeonly_GT_arith_elim_hour (x,y) =
  x.utc_timeonly_hour > y.utc_timeonly_hour ==> utctimeonly_GreaterThan x y 
;;

theorem utctimeonly_GT_arith_elim_min (x,y) =
  x.utc_timeonly_hour = y.utc_timeonly_hour
  && x.utc_timeonly_minute > y.utc_timeonly_minute
   ==> utctimeonly_GreaterThan x y 
;;

theorem utctimeonly_GT_arith_elim_sec (x,y) =
  x.utc_timeonly_hour = y.utc_timeonly_hour
  && x.utc_timeonly_minute = y.utc_timeonly_minute
  && x.utc_timeonly_second > y.utc_timeonly_second
   ==> utctimeonly_GreaterThan x y
;;


