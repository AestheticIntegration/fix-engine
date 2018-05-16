(** FIX 4.4 engine server implementation. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    server.ml
    
*)

let (>>=) = Lwt.(>>=);;


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
    fe_comp_id = "IMANDRA";
    fe_target_comp_id = "BANZAI";
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

let f _ (inch, outch) =
    let close_channels () = 
        Lwt_io.printl "Connection closed, shutting down." >>= fun () ->
        Lwt_io.close inch >>= fun () ->
        Lwt_io.close outch
        in
    let mailbox, global_state = Fix_global_state.start engine_state State.init_model_state (send_msg outch) in 
    Lwt.catch ( fun () ->
        Lwt_io.printl "Received a connection." >>= fun () ->
        Lwt.join [
            heartbeat_thread mailbox;
            Message_stream.from_channel ~verbose:true inch
                |> Lwt_stream.map Parse_full_messages.parse_top_level_msg
                |> Lwt_stream.iter_s ( fun msg ->
                    do_timechange mailbox >>= fun () ->
                    Lwt_mvar.put mailbox (Fix_global_state.FIX_Message msg)
                )
        ]
    ) ( fun _ -> close_channels () )
;;

let server_thread =
    let addr = Unix.( ADDR_INET( inet_addr_loopback , 9880 ) ) in
    let server = Lwt_io.establish_server_with_client_address addr f in
    print_endline "Started server on localhost:9880 ...";
    fst (Lwt.wait ())
;;


Lwt_main.run server_thread
;;
