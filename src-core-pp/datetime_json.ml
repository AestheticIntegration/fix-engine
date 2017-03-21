(** JSON printers/parsers for datetime types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    datetime_json.ml 
*)

(* @meta[imandra_ignore] on @end *)
open Yojson;;
open Datetime;;
open Base_types_json;;
(* @meta[imandra_ignore] off @end *)

let filter_nulls =
    List.filter (function ( _, `Null ) -> false | _ -> true )
;;

let utctimestamp_to_json ( ts : fix_utctimestamp ) =
    let list_assoc = [
        ( "utc_timestamp_year"                          , `Int ts.utc_timestamp_year                     );
        ( "utc_timestamp_month"                         , `Int ts.utc_timestamp_month                    );
        ( "utc_timestamp_day"                           , `Int ts.utc_timestamp_day                      );
        ( "utc_timestamp_hour"                          , `Int ts.utc_timestamp_hour                     );
        ( "utc_timestamp_minute"                        , `Int ts.utc_timestamp_minute                   );
        ( "utc_timestamp_second"                        , `Int ts.utc_timestamp_second                   );
        ( "utc_timestamp_millisec"                      , intopt_to_json ts.utc_timestamp_millisec       );
    ] |> filter_nulls in
    `Assoc list_assoc
;;

let utctimestamp_opt_to_json = function
    | None                                              -> `Null
    | Some x                                            -> utctimestamp_to_json x
;;

let utcduration_to_json ( d : fix_duration ) = 
    let list_assoc = [
        ( "dur_years"                                   , intopt_to_json d.dur_years                     );
        ( "dur_months"                                  , intopt_to_json d.dur_months                    );
        ( "dur_days"                                    , intopt_to_json d.dur_days                      );
        ( "dur_hours"                                   , intopt_to_json d.dur_hours                     );
        ( "dur_minutes"                                 , intopt_to_json d.dur_minutes                   );
        ( "dur_seconds"                                 , intopt_to_json d.dur_seconds                   );
    ] |> filter_nulls in 
    `Assoc list_assoc
;;
