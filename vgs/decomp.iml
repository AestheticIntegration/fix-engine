(* Toplevel fix-engine decomp/testgen driver *)

:restore fix_engine
:l vgs/top.ml
:checkpoint fix_engine

:!disable
  make_utctimestamp
  is_valid_utctimestamp
  utctimestamp_GreaterThan
  utctimestamp_Equal
  utctimestamp_GreaterThanEqual
  utctimestamp_LessThan
  utctimestamp_LessThanEqual
  make_localmktdate
  is_valid_localmktdate
  make_monthyear
  is_valid_monthyear
  make_utctimeonly
  is_valid_utctimeonly
  utctimeonly_GreaterThan
  utctimeonly_Equal
  utctimeonly_LessThan
  utctimeonly_LessThanEqual
  utctimeonly_GreaterThanEqual
  make_utcdateonly
  is_valid_utcdateonly
  make_duration
  is_valid_duration
  is_leapyear
  how_many_days
  calculate_carry
  normalise_timestamp
  float_Add
  float_Sub
  float_Neg
  float_Div
  float_Mult
  float_GreaterThan
  float_LessThan
  float_GreaterThanEqual
  float_Equal
  float_LessThanEqual
  utctimestamp_duration_Add
;;

:adts restricted
:set_print testgen_invariant
:set_print region_indent
:max_region_time 1000
:max_decomp_time 1000000

:testgen one_step

