(** JSON printers/parsers for datetime types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    datetime_json.ml 
*)

open Yojson;;
open Datetime;;
open Base_types_json;;
module JU = Yojson.Basic.Util ;;


let filter_nulls =
  List.filter (function ( _, `Null ) -> false | _ -> true )
;;

let utctimestamp_milli_to_json ( ts : fix_utctimestamp_milli ) : json =
  let list_assoc = [
    ( "utc_timestamp_year"     , `Int ts.utc_timestamp_year                     );
    ( "utc_timestamp_month"    , `Int ts.utc_timestamp_month                    );
    ( "utc_timestamp_day"      , `Int ts.utc_timestamp_day                      );
    ( "utc_timestamp_hour"     , `Int ts.utc_timestamp_hour                     );
    ( "utc_timestamp_minute"   , `Int ts.utc_timestamp_minute                   );
    ( "utc_timestamp_second"   , `Int ts.utc_timestamp_second                   );
    ( "utc_timestamp_millisec" , int_opt_to_json ts.utc_timestamp_millisec      );
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_utctimestamp_milli_opt json = 
  match JU.(json |> member "utc_timestamp_year"   |> to_int_option ) with None -> None | Some utc_timestamp_year    ->
  match JU.(json |> member "utc_timestamp_month"  |> to_int_option ) with None -> None | Some utc_timestamp_month   ->
  match JU.(json |> member "utc_timestamp_day"    |> to_int_option ) with None -> None | Some utc_timestamp_day     ->
  match JU.(json |> member "utc_timestamp_hour"   |> to_int_option ) with None -> None | Some utc_timestamp_hour    ->
  match JU.(json |> member "utc_timestamp_minute" |> to_int_option ) with None -> None | Some utc_timestamp_minute  ->
  match JU.(json |> member "utc_timestamp_second" |> to_int_option ) with None -> None | Some utc_timestamp_second  ->
    let utc_timestamp_millisec = JU.(json |> member "utc_timestamp_millisec" |> to_int_option ) in 
    Some { utc_timestamp_year   
         ; utc_timestamp_month  
         ; utc_timestamp_day    
         ; utc_timestamp_hour   
         ; utc_timestamp_minute 
         ; utc_timestamp_second 
         ; utc_timestamp_millisec
         }
;;

let utctimestamp_micro_to_json ( ts : fix_utctimestamp_micro ) : json =
  let list_assoc = [
    ( "utc_timestamp_year"     , `Int ts.utc_timestamp_year                     );
    ( "utc_timestamp_month"    , `Int ts.utc_timestamp_month                    );
    ( "utc_timestamp_day"      , `Int ts.utc_timestamp_day                      );
    ( "utc_timestamp_hour"     , `Int ts.utc_timestamp_hour                     );
    ( "utc_timestamp_minute"   , `Int ts.utc_timestamp_minute                   );
    ( "utc_timestamp_second"   , `Int ts.utc_timestamp_second                   );
    ( "utc_timestamp_microsec" , int_opt_to_json ts.utc_timestamp_microsec      );
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_utctimestamp_micro_opt json = 
  match JU.(json |> member "utc_timestamp_year"   |> to_int_option ) with None -> None | Some utc_timestamp_year    ->
  match JU.(json |> member "utc_timestamp_month"  |> to_int_option ) with None -> None | Some utc_timestamp_month   ->
  match JU.(json |> member "utc_timestamp_day"    |> to_int_option ) with None -> None | Some utc_timestamp_day     ->
  match JU.(json |> member "utc_timestamp_hour"   |> to_int_option ) with None -> None | Some utc_timestamp_hour    ->
  match JU.(json |> member "utc_timestamp_minute" |> to_int_option ) with None -> None | Some utc_timestamp_minute  ->
  match JU.(json |> member "utc_timestamp_second" |> to_int_option ) with None -> None | Some utc_timestamp_second  ->
    let utc_timestamp_microsec = JU.(json |> member "utc_timestamp_microsec" |> to_int_option ) in 
    Some { utc_timestamp_year   
         ; utc_timestamp_month  
         ; utc_timestamp_day    
         ; utc_timestamp_hour   
         ; utc_timestamp_minute 
         ; utc_timestamp_second 
         ; utc_timestamp_microsec
         }
;;

let utctimestamp_milli_opt_to_json = function
  | None    -> `Null
  | Some x  -> utctimestamp_milli_to_json x
;;

let utctimestamp_micro_opt_to_json = function
  | None    -> `Null
  | Some x  -> utctimestamp_micro_to_json x
;;

let duration_to_json ( d : fix_duration ) = 
  let list_assoc = [
    ( "dur_years"   , int_to_json d.dur_years   );
    ( "dur_months"  , int_to_json d.dur_months  );
    ( "dur_days"    , int_to_json d.dur_days    );
    ( "dur_hours"   , int_to_json d.dur_hours   );
    ( "dur_minutes" , int_to_json d.dur_minutes );
    ( "dur_seconds" , int_to_json d.dur_seconds );
  ] |> filter_nulls in 
  `Assoc list_assoc
;;

let json_to_duration_opt json = 
  match JU.(json |> member "dur_years"   |> to_int_option ) with None -> None | Some dur_years    ->
  match JU.(json |> member "dur_months"  |> to_int_option ) with None -> None | Some dur_months   ->
  match JU.(json |> member "dur_days"    |> to_int_option ) with None -> None | Some dur_days     ->
  match JU.(json |> member "dur_hours"   |> to_int_option ) with None -> None | Some dur_hours    ->
  match JU.(json |> member "dur_minutes" |> to_int_option ) with None -> None | Some dur_minutes  ->
  match JU.(json |> member "dur_seconds" |> to_int_option ) with None -> None | Some dur_seconds  ->
    Some { dur_years   
         ; dur_months 
         ; dur_days
         ; dur_hours
         ; dur_minutes
         ; dur_seconds
         }
;;

let duration_opt_to_json = function
  | None   -> `Null
  | Some x -> duration_to_json x
;;

let localmktdate_to_json ( d : fix_localmktdate ) =
  let list_assoc = [
    ( "localmktdate_year"  , int_to_json d.localmktdate_year  );
    ( "localmktdate_month" , int_to_json d.localmktdate_month );
    ( "localmktdate_day"   , int_to_json d.localmktdate_day   );
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_localmktdate_opt json = 
  match JU.(json |> member "localmktdate_year"   |> to_int_option ) with None -> None | Some localmktdate_year    ->
  match JU.(json |> member "localmktdate_month"  |> to_int_option ) with None -> None | Some localmktdate_month   ->
  match JU.(json |> member "localmktdate_day"    |> to_int_option ) with None -> None | Some localmktdate_day     ->
    Some { localmktdate_year;
           localmktdate_month;
           localmktdate_day
         }
;;

let localmktdate_opt_to_json = function
  | None    -> `Null
  | Some x  -> localmktdate_to_json x
;;


let utcdateonly_to_json ( d : fix_utcdateonly ) =  
  let list_assoc = [
    ( "utc_dateonly_year"  , int_to_json d.utc_dateonly_year  );
    ( "utc_dateonly_month" , int_to_json d.utc_dateonly_month );
    ( "utc_dateonly_day"   , int_to_json d.utc_dateonly_day   )
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_utcdateonly_opt json = 
  match JU.(json |> member "utc_dateonly_year"   |> to_int_option ) with None -> None | Some utc_dateonly_year    ->
  match JU.(json |> member "utc_dateonly_month"  |> to_int_option ) with None -> None | Some utc_dateonly_month   ->
  match JU.(json |> member "utc_dateonly_day"    |> to_int_option ) with None -> None | Some utc_dateonly_day     ->
    Some { utc_dateonly_year;
           utc_dateonly_month;
           utc_dateonly_day
         }
;;

let utcdateonly_opt_to_json = function  
  | None    -> `Null
  | Some x  -> utcdateonly_to_json x
;;

(** UTC Timeonly *)
let utctimeonly_milli_to_json ( d : fix_utctimeonly_milli ) = 
  let list_assoc = [
    ( "utc_timeonly_hour"     ,  int_to_json d.utc_timeonly_hour          );    
    ( "utc_timeonly_minute"   ,  int_to_json d.utc_timeonly_minute        );
    ( "utc_timeonly_second"   ,  int_to_json d.utc_timeonly_second        );
    ( "utc_timeonly_millisec" ,  int_opt_to_json d.utc_timeonly_millisec  ) 
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_utctimeonly_milli_opt json = 
  match JU.(json |> member "utc_timesonly_hour"   |> to_int_option ) with None -> None | Some utc_timeonly_hour    ->
  match JU.(json |> member "utc_timesonly_minute" |> to_int_option ) with None -> None | Some utc_timeonly_minute  ->
  match JU.(json |> member "utc_timesonly_second" |> to_int_option ) with None -> None | Some utc_timeonly_second  ->
    let utc_timeonly_millisec = JU.(json |> member "utc_timeonly_millisec" |> to_int_option ) in 
    Some { utc_timeonly_hour   
         ; utc_timeonly_minute 
         ; utc_timeonly_second 
         ; utc_timeonly_millisec
         }
;;

let utctimeonly_milli_opt_to_json  = function
  | None    -> `Null
  | Some x  -> utctimeonly_milli_to_json x
;;

let utctimeonly_micro_to_json ( d : fix_utctimeonly_micro ) = 
  let list_assoc = [
    ( "utc_timeonly_hour"     ,  int_to_json d.utc_timeonly_hour          );    
    ( "utc_timeonly_minute"   ,  int_to_json d.utc_timeonly_minute        );
    ( "utc_timeonly_second"   ,  int_to_json d.utc_timeonly_second        );
    ( "utc_timeonly_microsec" ,  int_opt_to_json d.utc_timeonly_microsec  ) 
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_utctimeonly_micro_opt json = 
  match JU.(json |> member "utc_timesonly_hour"   |> to_int_option ) with None -> None | Some utc_timeonly_hour    ->
  match JU.(json |> member "utc_timesonly_minute" |> to_int_option ) with None -> None | Some utc_timeonly_minute  ->
  match JU.(json |> member "utc_timesonly_second" |> to_int_option ) with None -> None | Some utc_timeonly_second  ->
    let utc_timeonly_microsec = JU.(json |> member "utc_timeonly_microsec" |> to_int_option ) in 
    Some { utc_timeonly_hour   
         ; utc_timeonly_minute 
         ; utc_timeonly_second 
         ; utc_timeonly_microsec
         }
;;

let utctimeonly_micro_opt_to_json  = function
  | None    -> `Null
  | Some x  -> utctimeonly_micro_to_json x
;;

let week_to_json = function
  | Week_1 -> `String "Week1"
  | Week_2 -> `String "Week2"
  | Week_3 -> `String "Week3"
  | Week_4 -> `String "Week4"
  | Week_5 -> `String "Week5"
;;

let json_to_week_opt json = 
  match JU.(json |> to_string_option ) with None -> None | Some w ->
    (match w with
     | "Week1" -> Some Week_1
     | "Week2" -> Some Week_2
     | "Week3" -> Some Week_3
     | "Week4" -> Some Week_4
     | "Week5" -> Some Week_5
     | _ -> None)
;;

let week_opt_to_json = function
  | None    -> `Null
  | Some x  -> week_to_json x
;;


let monthyear_to_json ( d : fix_monthyear) = 
  let list_assoc = [
    ( "monthyear_year"  , int_to_json       d.monthyear_year  );
    ( "monthyear_month" , int_to_json       d.monthyear_month );
    ( "monthyear_day"   , int_opt_to_json   d.monthyear_day   );
    ( "monthyear_week"  , week_opt_to_json  d.monthyear_week  );
  ] |> filter_nulls in
  `Assoc list_assoc
;;

let json_to_monthyear_opt json = 
  match JU.(json |> member "monthyear_year"   |> to_int_option ) with None -> None | Some monthyear_year    ->
  match JU.(json |> member "monthyear_month"  |> to_int_option ) with None -> None | Some monthyear_month   ->
    let monthyear_day =  JU.(json |> member "monthyear_day"    |> to_int_option ) in
    let monthyear_week =  JU.(json |> member "monthyear_week"    |> json_to_week_opt )in
    Some {monthyear_year;
          monthyear_month;
          monthyear_day;
          monthyear_week
         }
;;

let monthyear_opt_to_json = function
  | None    -> `Null
  | Some x  -> monthyear_to_json x
;;

