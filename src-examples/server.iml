(** FIX 4.4 engine server implementation. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    server.ml
    
*)

let (>>=) = Lwt.(>>=);;


(************************ Stream functions ***************************)

let split_into_key_value (spliton : char) ( stream : char Lwt_stream.t ) : (string * string) Lwt_stream.t =
    (** Converts [ '5'; '2'; '='; 'A' ] to ("52" , "A" ) *)
    let get_key_value (chlist : char list) : string * string =
        List.fold_left (fun ((k,v),f) char -> match char with
            | '=' -> ((k,v), true)
            |  c  -> if f then (( k, v ^ String.make 1 c ), f)
                          else (( k ^ String.make 1 c, v ), f)   
            ) (("", ""), false) chlist
        |> fst
        in
    let f () =
        Lwt_stream.get_while (fun c -> c <> spliton) stream >>= fun chlist ->
        Lwt_stream.junk stream >>= fun () ->
        if chlist <> [] 
        then Lwt.return_some @@ get_key_value chlist
        else Lwt.return_none
        in
    Lwt_stream.from f
;;

let split_into_messages (stream : (string * string) Lwt_stream.t) =
    let f () =
        Lwt_stream.get_while (fun (k,v) -> k <> "10") stream >>= fun msg ->
        Lwt_stream.get stream >>= function None -> Lwt.return_none | Some chsum ->
        if msg <> [] 
        then Lwt.return_some (msg @ [chsum])
        else Lwt.return_none
        in
    Lwt_stream.from f    
;;

(*************************************************************)

let get_current_utctimstamp () =    
    let open Datetime in
    let dtime = Unix.gettimeofday () in 
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

let engine_state = 
    let open Fix_engine_state in
    { init_fix_engine_state with
    fe_comp_id = String_utils.string_to_fix_string "IMANDRA";
    fe_target_comp_id = String_utils.string_to_fix_string "BANZAI";
    fe_curr_time = get_current_utctimstamp ();
    fe_max_num_logons_sent = 10;
    fe_application_up = true }
;;  


let send_msg outch msg =
    match msg with
        | Full_messages.ValidMsg msg -> begin
            let wire = Encode_full_messages.encode_full_valid_msg msg in
            Lwt_io.print ("Sending (" ^ wire ^ ") " ) >>= fun () ->
            Lwt_io.flush_all ()                       >>= fun () ->
            Lwt_io.write outch wire                   >>= fun () ->
            Lwt_io.flush outch                        >>= fun () ->
            Lwt_io.printl " done."                   
        end
        | _ ->  Lwt.return_unit
;;

let do_timechange mailbox =
    let time = get_current_utctimstamp () in
    let timechange = Fix_engine_state.IncIntMsg_TimeChange time in
    let timechange = Fix_global_state.Internal_Message timechange in
    Lwt_mvar.put mailbox timechange
;;

let rec heartbeat_thread mailbox =
    let open Fix_engine_state in
    Lwt_unix.sleep (1.0) >>= fun () -> 
    do_timechange mailbox >>= fun () -> 
    heartbeat_thread mailbox
;;

let f (inch, outch) =
    let msg_stream = Lwt_io.read_chars inch
        |> split_into_key_value '\001'
        |> split_into_messages 
        |> Lwt_stream.map Parse_full_messages.parse_top_level_msg
        in
    let close_channels () = 
        Lwt_io.printl "Connection closed, shutting down." >>= fun () ->
        Lwt_io.close inch >>= fun () ->
        Lwt_io.close outch
        in
    let mailbox, global_state = Fix_global_state.start engine_state State.init_model_state (send_msg outch) in 
    Lwt.async ( fun () -> 
    Lwt.catch ( fun () ->
        Lwt_io.printl "Received a connection." >>= fun () ->
        Lwt.join [
            heartbeat_thread mailbox;
            msg_stream |> Lwt_stream.iter_s ( fun msg ->
                do_timechange mailbox >>= fun () ->
                Lwt_mvar.put mailbox (Fix_global_state.FIX_Message msg)
            )
        ]
    ) ( fun _ -> close_channels () )
    )
;;

let server_thread =
    let addr = Unix.( ADDR_INET( inet_addr_loopback , 9880 ) ) in
    let server = Lwt_io.establish_server addr f in
    print_endline "Started server on localhost:9880 ...";
    fst (Lwt.wait ())
;;


Lwt_main.run server_thread
;;
