(** Parsers for datetime types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_datetime.ml
    
*)

open Datetime;;


let parse_UTCDateOnly str =
    if String.length str != 8 then None else
    let year, month, day = Scanf.sscanf str "%04u%02u%02u" 
        ( fun y m d -> (y,m,d) ) in
    Some {
        utc_dateonly_year  = year;
        utc_dateonly_month = month;
        utc_dateonly_day   = day
    }
;;


let parse_LocalMktDate str =
    if String.length str != 8 then None else
    let year, month, day = Scanf.sscanf str "%04u%02u%02u" 
        ( fun y m d -> (y,m,d) ) in
    Some {
        localmktdate_year  = year;
        localmktdate_month = month;
        localmktdate_day   = day
    }
;;


let parse_UTCTimeOnly_milli str = 
    let length = String.length str in
    if (length != 8) && (length != 12) then None else
    let hours, minutes, seconds, mseconds = 
        Scanf.sscanf str "%02u:%02u:%02u%s" 
        ( fun h m s ms -> (
            let mseconds = if(ms = "") then None 
                else ( Scanf.sscanf ms ".%03d" (fun x -> Some x) ) in
            (h,m,s,mseconds) ) ) in
    Some {
        utc_timeonly_hour    = hours;
        utc_timeonly_minute  = minutes;
        utc_timeonly_second  = seconds;
        utc_timeonly_millisec = mseconds
    }
;;

let parse_UTCTimeOnly_micro str = 
    let length = String.length str in
    if (length != 8) && (length != 15) then None else
    let hours, minutes, seconds, mseconds = 
        Scanf.sscanf str "%02u:%02u:%02u%s" 
        ( fun h m s ms -> (
            let mseconds = if(ms = "") then None 
                else ( Scanf.sscanf ms ".%06d" (fun x -> Some x) ) in
            (h,m,s,mseconds) ) ) in
    Some {
        utc_timeonly_hour    = hours;
        utc_timeonly_minute  = minutes;
        utc_timeonly_second  = seconds;
        utc_timeonly_microsec = mseconds
    }
;;

let parse_UTCTimestamp_milli str = 
    let length = String.length str in
    if (length != 17) && (length != 21) then None else
    let date, time = Scanf.sscanf str "%s@-%s" 
        ( fun d t -> (parse_UTCDateOnly d , parse_UTCTimeOnly_milli t) ) in
    match date, time with 
        | (Some date, Some time) -> Some {
            utc_timestamp_year     = date.utc_dateonly_year;
            utc_timestamp_month    = date.utc_dateonly_month;
            utc_timestamp_day      = date.utc_dateonly_day;
            utc_timestamp_hour     = time.utc_timeonly_hour;
            utc_timestamp_minute   = time.utc_timeonly_minute;
            utc_timestamp_second   = time.utc_timeonly_second;
            utc_timestamp_millisec = time.utc_timeonly_millisec }
        | _ -> None
;;

let parse_UTCTimestamp_micro str = 
    let length = String.length str in
    if (length != 17) && (length != 24) then None else
    let date, time = Scanf.sscanf str "%s@-%s" 
        ( fun d t -> (parse_UTCDateOnly d , parse_UTCTimeOnly_micro t) ) in
    match date, time with 
        | (Some date, Some time) -> Some {
            utc_timestamp_year     = date.utc_dateonly_year;
            utc_timestamp_month    = date.utc_dateonly_month;
            utc_timestamp_day      = date.utc_dateonly_day;
            utc_timestamp_hour     = time.utc_timeonly_hour;
            utc_timestamp_minute   = time.utc_timeonly_minute;
            utc_timestamp_second   = time.utc_timeonly_second;
            utc_timestamp_microsec = time.utc_timeonly_microsec }
        | _ -> None
;;

let parse_MonthYear str =
    let length = String.length str in
    if (length < 6) then None else
    let year, month, tail = Scanf.sscanf str "%04u%02u%s" (fun y m t -> (y,m,t)) in
    let day, week = match tail with
        | "w1" -> None, Some Week_1
        | "w2" -> None, Some Week_2
        | "w3" -> None, Some Week_3
        | "w4" -> None, Some Week_4
        | "w5" -> None, Some Week_5       
        | ""   -> None, None
        | day  -> Some (int_of_string day), None
        in
    Some {
        monthyear_year  = year;
        monthyear_month = month;
        monthyear_day   = day;
        monthyear_week  = week;
    }
;;


let parse_Duration str =
    let parse_int ( str : string ) : int option = 
        try  Some(int_of_string str) 
        with _ -> None
    in
    match parse_int str with None -> None | Some seconds ->
    Some (seconds_to_duration seconds)
;;
