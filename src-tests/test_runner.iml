open Config_parser
open Datetime

let (>>=) = Lwt.(>>=);;


let get_current_utctimstamp ?offset:(offset=0) () =    
    let open Datetime in
    let dtime = Unix.gettimeofday () in 
    let dtime = dtime +. (1000. *. float_of_int offset) in
    let tm = Unix.gmtime dtime in
    let msec = int_of_float (1000. *. (dtime -. floor dtime)) in
    {   utc_timestamp_year   = tm.Unix.tm_year + 1900
    ;   utc_timestamp_month  = tm.Unix.tm_mon + 1
    ;   utc_timestamp_day    = tm.Unix.tm_mday
    ;   utc_timestamp_hour   = tm.Unix.tm_hour
    ;   utc_timestamp_minute = tm.Unix.tm_min
    ;   utc_timestamp_second = tm.Unix.tm_sec
    ;   utc_timestamp_millisec = Some (msec)
    }
;;

let msg_to_string msg =
    msg |> List.map (fun (a,b) -> a ^ "=" ^ b)
        |> List.fold_left ( fun a s -> a ^ s ^ "\001" ) ""
;;


let prepare_packet msg =
    let msg_body = msg 
        |> List.filter ( function "8",_ |"9",_ |"10",_ -> false| _ -> true) in
    (* Getting current values from the mesage *)
    let begin_string = try List.assoc "8" msg with _ -> "FIX.4.4" in
    let body_length  = try List.assoc "9" msg with _ -> "0" in
    let checksum     = try List.assoc "10"msg with _ -> "0" in
    (* Computing body length if zero *)
    let body_length = match body_length with
        | "0" -> Encode_full_messages.get_body_length msg_body
              |> Encode_base_types.encode_int 
        |  _  -> body_length 
        in
    let msg = [ ( "8"   , begin_string )
              ; ( "9"   , body_length  )
              ] @ msg_body
              in             
    (* Computing checksum if zero *)
    let checksum = match checksum with
        | "0" -> Encode_full_messages.get_checksum msg
              |> Printf.sprintf "%03u"
        |  _  -> checksum
        in
    msg @ [ ( "10" ,  checksum )] 
;;



let prepare_message msg (src, tagret)=
    let id x = x in
    let time = get_current_utctimstamp () in
    let fill_placeholder (k,v) = 
        if String.length v < 5 then (k,v) else
        if String.sub v 0 5 <> "<TIME" then (k,v) else 
        begin
            let adds = Scanf.sscanf v "<TIME%s@>" id in
            let adds = if adds = "" then 0 else Scanf.sscanf adds "%d" id in
            let time = get_current_utctimstamp ~offset:adds () 
                       |> normalise_utctimestamp_milli in
            ( k , Core_printer.fix_utctimestamp_to_string time ) 
        end in
    let fill_empty_ts (k,v) =
        if v <> "00000000-00:00:00.000" then (k,v) else
        ( k , Core_printer.fix_utctimestamp_to_string time ) 
        in
    let set_comp_ids = function
        | "49", _ -> "49", src
        | "56", _ -> "56", tagret
        | (k,v) -> (k,v)
        in
    msg |> List.map fill_placeholder
        |> List.map fill_empty_ts
        |> List.map set_comp_ids        
        |> prepare_packet 
        |> msg_to_string
;;

let check_expected_compatible received expected =
    if not (List.mem_assoc "35" received) then 
        Lwt_io.printf "  Error: received message doesn't have \"35\" key.\n"
    else 
    let rv , ev = List.assoc "35" received , List.assoc "35" expected in
    if rv <> ev then
        Lwt_io.printf "  Error: received a wrong message type \"%s\" instead of expected \"%s\".\n" rv ev
    else
    expected |> Lwt_list.iter_s (fun (ek, ev) ->
        if (ek = "9") || (ek = "10") then Lwt.return_unit else
        if (ek = "58") then Lwt.return_unit else (* NOTE: Ignoring Text<58> tag for now *)
        if not ( List.mem_assoc ek received ) then
            Lwt_io.printf "  Error: expected key \"%s\" not present in the received message.\n" ek
        else begin
            let rv = List.assoc ek received in  
            if rv = ev then Lwt.return_unit else
            match Parse_datetime.parse_UTCTimestamp_milli rv, Parse_datetime.parse_UTCTimestamp_milli ev  with
            | Some _rt, Some _et -> Lwt.return_unit 
            | _, _ -> Lwt_io.printf "  Error: for the key \"%s\" expected value was \"%s\", got \"%s\" instead.\n" ek ev rv           
        end
    ) >>= fun () ->
    received |> Lwt_list.iter_s (fun (rk, _rv) ->
        if not ( List.mem_assoc rk expected ) then    
           Lwt_io.printf "  Error: received a key \"%s\" not present in the expected message.\n" rk
        else Lwt.return_unit
    )
;;
    
let get_type_and_seqnum msg =
    let msgtype = try 
        let msgtype = List.assoc "35" msg in
        match Parse_full_tags.parse_full_msg_tag msgtype with None -> "?"
        | Some ( Full_message_tags.Full_Admin_Msg_Tag tag) -> Full_admin_tags_json.full_admin_msg_tag_to_string tag 
        | Some ( Full_message_tags.Full_App_Msg_Tag   tag) -> Full_app_tags_json.full_app_msg_tag_to_string tag
    with _ -> "?" in
    let seqnum = try List.assoc "34" msg with _ -> "?" in 
    msgtype , seqnum
;;
    
let perform_action  (instream, outch) act =
    begin
    match act with 
    | InitiateMessage msg -> begin
            let msgtype, seqnum = get_type_and_seqnum msg in
            let msg = prepare_message msg ("BANZAI", "IMANDRA") in
            Lwt_io.write outch msg >>= fun () ->
            Lwt_io.flush outch >>= fun () ->
            let logstring = ("Initiated #" ^ seqnum ^ " \"" ^ msgtype ^ "\"  (" ^ msg ^ ")" ) in
            Lwt_io.printl logstring
        end
    | ExpectMessage msg -> begin 
            let msg = prepare_message msg ("IMANDRA", "BANZAI") in
            Lwt_io.printl ( "Expecting: " ^ msg) >>= fun () ->
            Lwt_stream.next instream >>= fun rmsg ->
            Lwt_io.printl ( "Received: " ^ msg_to_string rmsg) >>= fun () ->
            msg |> Stream.of_string  
                |> Parser_utils.split_into_key_value '\001'
                |> Parser_utils.split_into_messages
                |> Stream.next
                |> check_expected_compatible rmsg 
        end
    | ExpectAction Disconnect -> begin
            Lwt_io.printl ( "Disconnecting" ) >>= fun () ->
            Lwt_io.close outch >>= fun () ->
            Lwt.return_unit    
        end
    | _ -> begin
            Lwt_io.printl ( "Unexpected action." ) >>= fun () ->
            Lwt_io.close outch >>= fun () ->
            Lwt.return_unit    
        end
    end >>= fun () -> Lwt_unix.sleep 0.1

let setup_client msgs =
    let addr = Unix.( ADDR_INET( inet_addr_loopback , 9880 ) ) in
    Lwt.catch begin fun () ->
        Lwt_io.printl "Starting connection" >>= fun () -> 
        let fd = Lwt_unix.(socket PF_INET SOCK_STREAM 0 ) in
        Lwt_io.with_connection ~fd:fd addr begin fun (inch, outch) ->
            Lwt_io.printl "Connnected to localhost:9880 ..." >>= fun() ->
            let instream = Message_stream.from_channel inch in
            let perform_action = perform_action (instream, outch) in
            Lwt_list.iter_s perform_action msgs        
        end
    end 
    begin fun _x -> 
        Lwt_io.printl "Unhandled exception" >>= fun () -> 
        Lwt_io.flush_all ()
    end
;;

let def_reader filename =
    begin
    let config_actions = parse_file filename in
    let rec scan = function
        | InitiateAction Connect :: tl -> setup_client tl
        | ExpectAction Connect :: _tl -> failwith "Not implemented"
        | _ :: tl -> scan tl
        | [] -> Lwt.return_unit
        in
    scan config_actions >>= fun () ->
    Lwt_io.printl "Exiting" >>= fun () -> 
    Lwt_io.flush_all () 
    end |> Lwt_main.run
;;


let () = 
    let open Cmdliner in
    let doc = "Tests a FIX server following a *.def script file." in
    let info = 
        Term.info "test_runner" ~version:"%%VERSION%%" ~doc ~exits:Term.default_exits 
        in
    let def_fname = Arg.(value & pos 0 string "" & info []) in
    Term.exit @@ Term.eval (Term. (const def_reader $ def_fname ), info)
;;
