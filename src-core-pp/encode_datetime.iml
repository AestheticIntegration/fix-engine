(** Parsers for datetime types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_datetime.ml
    
*)

open Datetime;;
open Encode_base_types;;


let encode_UTCDateOnly x : string =
    Printf.sprintf "%04u%02u%02u" 
        x.utc_dateonly_year
        x.utc_dateonly_month
        x.utc_dateonly_day
;;


let encode_LocalMktDate x : string =
    Printf.sprintf "%04u%02u%02u" 
        x.localmktdate_year  
        x.localmktdate_month 
        x.localmktdate_day   
;;


let encode_UTCTimeOnly_milli (x:fix_utctimeonly_milli ) : string = 
    let hms = Printf.sprintf "%02u:%02u:%02u" 
                x.utc_timeonly_hour  
                x.utc_timeonly_minute
                x.utc_timeonly_second
    in
    match x.utc_timeonly_millisec with
        | None -> hms 
        | Some ms -> hms ^ Printf.sprintf ".%03d" ms
;;

let encode_UTCTimeOnly_micro (x:fix_utctimeonly_micro ) : string = 
    let hms = Printf.sprintf "%02u:%02u:%02u" 
                x.utc_timeonly_hour  
                x.utc_timeonly_minute
                x.utc_timeonly_second
    in
    match x.utc_timeonly_microsec with
        | None -> hms 
        | Some ms -> hms ^ Printf.sprintf ".%06d" ms
;;

let encode_UTCTimestamp_milli (x:fix_utctimestamp_milli ) : string = 
    let ymdhms = Printf.sprintf "%04u%02u%02u-%02u:%02u:%02u" 
            x.utc_timestamp_year     
            x.utc_timestamp_month    
            x.utc_timestamp_day      
            x.utc_timestamp_hour     
            x.utc_timestamp_minute   
            x.utc_timestamp_second   
    in
    match x.utc_timestamp_millisec with
        | None -> ymdhms 
        | Some ms -> ymdhms ^ Printf.sprintf ".%03d" ms
;;

let encode_UTCTimestamp_micro (x:fix_utctimestamp_micro ) : string = 
    let ymdhms = Printf.sprintf "%04u%02u%02u-%02u:%02u:%02u" 
            x.utc_timestamp_year     
            x.utc_timestamp_month    
            x.utc_timestamp_day      
            x.utc_timestamp_hour     
            x.utc_timestamp_minute   
            x.utc_timestamp_second   
    in
    match x.utc_timestamp_microsec with
        | None -> ymdhms 
        | Some ms -> ymdhms ^ Printf.sprintf ".%06d" ms
;;

let encode_MonthYear x : string =
    let ym = Printf.sprintf "%04u%02u" 
        x.monthyear_year  
        x.monthyear_month 
    in
    match x.monthyear_day with
        | Some d -> ym ^ Printf.sprintf "%02u" d
        | None -> begin
    match x.monthyear_week with
        | Some Week_1 -> ym ^ "w1"
        | Some Week_2 -> ym ^ "w2"
        | Some Week_3 -> ym ^ "w3"
        | Some Week_4 -> ym ^ "w4"
        | Some Week_5 -> ym ^ "w5"
        | None -> ym
    end
;;


let encode_Duration x : string =
    duration_to_seconds x |> encode_int
;;
