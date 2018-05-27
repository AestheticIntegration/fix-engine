(** FIX 4.4 engine client implementation. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    client.ml
    
*)
module Json_to_action = struct
  let json_to_fix_action x = None 
end;;

let (>>=) = Lwt.(>>=);;

let ctime = Fix_connection.get_current_utctimstamp;;

let zmq_publish socket msg =
    let msg = Model_messages_json.json_of_model_msg msg in
    let rtime = Fix_connection.get_last_received_utctimestamp () in
    let ztime = Fix_connection.get_current_utctimstamp () in
    let stime = Fix_connection.get_last_received_sendingtime () in
    let rtime = rtime |> Datetime_json.utctimestamp_to_json in
    let ztime = ztime |> Datetime_json.utctimestamp_to_json in
    let stime = stime |> Datetime_json.utctimestamp_to_json in
    let msg = match msg with
        | `Assoc pairs -> `Assoc (
	    ( "received_fix" , rtime ) :: 
            ( "sent_zmq"     , ztime ) :: 
            ( "SendingTime"  , stime ) :: pairs )
        | other -> other in
    let msg = Yojson.to_string msg in
    Lwt_zmq.Socket.send socket msg  
;;

let rec zmq_rep_loop (socket, mailbox) =
    Lwt_zmq.Socket.(recv socket) >>= fun msg ->
    if msg = "LOGOUT" then 
        Lwt_mvar.put mailbox Fix_global_state.Terminate  >>= fun () ->
        Lwt_zmq.Socket.(send socket "ACKED")
    else if msg = "STATUS" then
        Lwt_zmq.Socket.(send socket "UP") >>= fun () ->
        zmq_rep_loop (socket, mailbox) 
    else
    let action =
        try  
            Json_to_action.json_to_fix_action (Yojson.Basic.from_string msg)
        with 
            ex -> None
        in
    match action with 
    | None -> (
        Lwt_zmq.Socket.(send socket "REJECTED") >>= fun () ->
        zmq_rep_loop (socket, mailbox) )   
    | Some action -> (
        Lwt_mvar.put mailbox (Fix_global_state.ModelAction action) >>= fun () ->
        Lwt_zmq.Socket.(send socket "ACKED") >>= fun () ->
        zmq_rep_loop (socket, mailbox) )
;;

let f config (zmqrep, zmqpub) (inch, outch) =
    let close_channels () = 
        Lwt_io.printl "Connection closed, shutting down." >>= fun () ->
        Lwt_io.close inch >>= fun () ->
        Lwt_io.close outch
        in
    let open Fix_connection in
    let config = { config with pub_callback = Some (zmq_publish zmqpub) } in
    let connection = create config (inch, outch) in 
    let mailbox = get_input_mailbox connection in  
    let initmsg = Fix_global_state.Internal_Message ( create_session_msg connection ) in
    Lwt.catch ( fun () ->
        Lwt_mvar.put mailbox initmsg >>= fun () -> 
        Lwt.choose [
            get_heartbeat_thread connection;
            get_fix_thread connection;
            zmq_rep_loop (zmqrep, mailbox)
        ]
    ) ( fun _ -> close_channels () )
;;


let run_client fixhost fixport config zmqpub zmqrep = 
    (* Bringing up a ZMQ sockets *)
    let zmqcontext = ZMQ.Context.create () in
    let zmqpubsocket = ZMQ.Socket.(create zmqcontext pub) in
    let () = ZMQ.Socket.bind zmqpubsocket zmqpub in
    let zmqpubsocket = Lwt_zmq.Socket.of_socket zmqpubsocket in
    let zmqrepsocket = ZMQ.Socket.(create zmqcontext rep) in
    let () = ZMQ.Socket.bind zmqrepsocket zmqrep in    
    let zmqrepsocket = Lwt_zmq.Socket.of_socket zmqrepsocket in
    (* Creating the address *)
    let addr = Unix.( (gethostbyname fixhost).h_addr_list.(0) ) in      
    let addr = Unix.( ADDR_INET( addr , fixport ) ) in
    (**)
    let () = [
        "(*********                   FIX Engine Client                           *********)";
        "(*********  (c)Copyright Aesthetic Integration Limited., 2014 - 2018     *********)\n";
        Printf.sprintf " - FIX client connecting to %s:%d" fixhost fixport;
        Printf.sprintf " - FIX session %s -> %s" config.Fix_connection.comp_id config.Fix_connection.target_id;
        Printf.sprintf " - Internal messages are published on ZMQ socket %s" zmqpub;
        Printf.sprintf " - Model actions are received on ZMQ socket %s" zmqrep;
        "\n(*********************************************************************************)\n";
        ] |> String.concat "\n" |> print_endline in
    let client_thread = Lwt_io.with_connection addr ( f config (zmqrepsocket, zmqpubsocket) ) in
    Lwt_main.run client_thread
;;

let mkconfig compid hostid targetid reset =
    Fix_connection.{
        comp_id = compid;
        host_id = Some hostid;
        on_behalf_id = Some hostid; 
        target_id = targetid;
        pub_callback = None;
        reset_seq = reset;
        timer = 1.0;
    }
;;

let () =
    let open Cmdliner in
    let fixhost = let doc = "FIX host address" in
        Arg.(value & opt string "localhost" & info ["fix-host"] ~docv:"FIXHOST" ~doc)
        in
    let fixport = let doc = "Port for the FIX connection" in 
        Arg.(value & opt int 9880 & info ["fix-port"] ~docv:"FIXPORT" ~doc)
        in
    let compid = let doc = "FIX Client ID" in
        Arg.(value & opt string "IMANDRA" & info ["compid"] ~docv:"COMPID" ~doc)
        in
    let hostid = let doc = "Host ID (will be sent as SenderLocationID<142>)" in
        Arg.(value & opt string "LOGIN" & info ["hostid"] ~docv:"HOSTID" ~doc)
        in
    let targetid = let doc = "FIX Target ID" in
        Arg.(value & opt string "TARGET" & info ["targetid"] ~docv:"TARGETID" ~doc)
        in
    let zmqpub =
        let doc = "ZMQ PUB socket adress" in
        Arg.(value & opt string "tcp://*:5000" & info ["zmq-pub"] ~docv:"ZMQPUBADDR" ~doc)
        in
    let zmqrep =
        let doc = "ZMQ REP socket adress" in
        Arg.(value & opt string "tcp://*:5001" & info ["zmq-rep"] ~docv:"ZMQREPADDR" ~doc)
        in
    let reset = 
        let doc = "Whether we shall send ResetSeqNum with the logon" in
        Arg.(value & flag & info ["reset-seq"] ~doc)
        in        
    let info = let doc = "FIX engine client, publishing all internal messages on ZMQ socket." in
        Term.info "server" ~version:"%%VERSION%%" ~doc ~exits:Term.default_exits 
        in
    let config = Term.(const mkconfig $ compid $ hostid $ targetid $ reset ) in
    Term.exit @@ Term.eval (Term. (const run_client $ fixhost $ fixport $ config $ zmqpub $ zmqrep ), info)
;;
