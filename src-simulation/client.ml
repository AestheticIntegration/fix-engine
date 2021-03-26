open Simulation_utils

module Blocking = Make(Blocking_IO)

module Client = struct
  open Blocking
  open IO

  type client_config =
    { fixhost      : string
    ; fixport      : int
    ; zmqpub       : string
    ; zmqrep       : string
    ; comp_id      : string
    ; host_id      : string option
    ; on_behalf_id : string option
    ; target_id    : string
    }

  let make_client_config fixhost fixport zmqpub zmqrep comp_id host_id target_id =
    { fixhost
    ; fixport
    ; zmqpub
    ; zmqrep
    ; comp_id
    ; host_id      = Some host_id
    ; on_behalf_id = None
    ; target_id
    }

  let make_engine_config client_config =
    let { comp_id ; host_id ; target_id ; on_behalf_id ; _ } = client_config in
    let open Engine in
    { comp_id
    ; host_id
    ; on_behalf_id
    ; target_id
    }

  let init_socket addr port =
    let inet_addr = (Unix.gethostbyname addr).Unix.h_addr_list.(0) in
    let sockaddr = Unix.ADDR_INET (inet_addr, port) in
    let sock = Unix.socket Unix.PF_INET Unix.SOCK_STREAM 0 in
    Unix.connect sock sockaddr;
    let outchan = Unix.out_channel_of_descr sock in
    let inchan = Unix.in_channel_of_descr sock in
    (inchan, outchan)

  let banner client_config () =
    [ "(*********                   FIX Engine Client                           *********)"
    ; "(*********  (c)Copyright Aesthetic Integration Limited., 2014 - 2020     *********)\n"
    ; Printf.sprintf " - FIX client connecting to %s:%d" client_config.fixhost client_config.fixport
    ; Printf.sprintf " - FIX session %s -> %s" client_config.comp_id client_config.target_id
    ; Printf.sprintf " - Internal messages are published on ZMQ socket %s" client_config.zmqpub
    ; Printf.sprintf " - Model actions are received on ZMQ socket %s" client_config.zmqrep
    ; "\n(*********************************************************************************)\n"
    ] |> String.concat "\n" |> print_endline

  let session_folder config =
    let open Engine in
    let hostid = match config.host_id with None -> "NoHostid" | Some host_id -> host_id in
    Printf.sprintf "%s.%s.%s.session" config.comp_id config.target_id hostid

  exception Exit

  let try_zmq_read zmqrepsocket =
    let rec loop () =
      let open Zmq in
      let module J = Yojson.Basic in
      let module D = Decoders_yojson.Basic.Decode in
      match Socket.recv ~block:false zmqrepsocket with
      | exception Unix.Unix_error (Unix.EAGAIN, _, _) ->
        None
      | "STATUS" ->
        Socket.send zmqrepsocket "UP";
        loop ()
      | "LOGOUT" ->
        Socket.send zmqrepsocket "ACKED";
        raise Exit
      | msg ->
        let json = J.from_string msg in
        match D.decode_value Json_to_action.fix_action_decoder json with
        | Error _ ->
          Socket.send zmqrepsocket "REJECTED";
          None
        | Ok action ->
          Socket.send zmqrepsocket "ACKED";
          Some action
    in
    loop ()

  let last_received_utctimestamp = ref (Time_defaults_current_time.get_current_utctimestamp ())
  let get_last_received_utctimestamp () = ! last_received_utctimestamp

  let last_received_sendingtime = ref (Time_defaults_current_time.get_current_utctimestamp ())
  let get_last_received_sendingtime () = ! last_received_sendingtime

  let update_times msg =
    match msg with
    | Full_messages.ValidMsg msg -> begin
        last_received_sendingtime := msg.full_msg_header.h_sending_time;
        last_received_utctimestamp := Time_defaults_current_time.get_current_utctimestamp ();
      end
    | _ -> ()

  let zmq_publish socket msg ~sending =
    let msg = Model_messages_json.json_of_model_msg msg in
    let rtime = get_last_received_utctimestamp () in
    let ztime = Time_defaults_current_time.get_current_utctimestamp () in
    let stime = get_last_received_sendingtime () in
    let rtime = rtime |> Time_defaults_json.utctimestamp_to_json in
    let ztime = ztime |> Time_defaults_json.utctimestamp_to_json in
    let stime = stime |> Time_defaults_json.utctimestamp_to_json in
    let tpair = if sending then ( "sent_fix" , ztime ) else ( "received_fix" , rtime ) in
    let msg = match msg with
      | `Assoc pairs -> `Assoc ( tpair :: ( "sent_zmq" , ztime ) :: ( "SendingTime" , stime ) :: pairs )
      | other -> other
    in
    let msg = Yojson.Basic.to_string msg in
    Zmq.Socket.send socket msg

  module SQ = struct
    type 'a t = {
      q: 'a Queue.t;
      mutex: Mutex.t;
    }

    let make () : _ t =
      { q=Queue.create(); mutex=Mutex.create(); }

    let with_lock mutex f =
      Mutex.lock mutex;
      CCFun.finally ~h:(fun () -> Mutex.unlock mutex) ~f

    let push q x : unit =
      with_lock q.mutex (fun () -> Queue.push x q.q;)

    let try_take q : _ option =
      if Mutex.try_lock q.mutex then (
        if Queue.is_empty q.q then (
          Mutex.unlock q.mutex;
          None
        ) else (
          let x = Queue.pop q.q in
          Mutex.unlock q.mutex;
          Some x
        )
      ) else None

  end

  type state =
    { sessn  : Session_manager.t
    ; zmqrepsocket : [`Rep] Zmq.Socket.t
    ; zmqpubsocket : [`Pub] Zmq.Socket.t
    ; inch : in_channel
    ; outch : out_channel
    ; logdir : string
    ; model_state : State.model_state
    ; engine_state : Fix_engine_state.fix_engine_state
    ; sq : Fix_IO.message SQ.t
    }

  let fix_read_thread state =
    Thread.create (fun () ->
        let rec loop () =
          let msg = Fix_IO.get_message ~inch:state.inch [] in
          SQ.push state.sq msg;
          loop ()
        in
        loop ()
      )

  let save_state_seqns state =
    let engine_state = state.engine_state in
    let sessn = state.sessn in
    let seqin  = engine_state.Fix_engine_state.incoming_seq_num in
    let seqout = engine_state.Fix_engine_state.outgoing_seq_num in
    Session_manager.save sessn (seqin, seqout)

  let loop init state () =

    let msg_pub = zmq_publish state.zmqpubsocket in

    let handle_model_ev, engine_handle = handlers ~msg_pub ~outch:state.outch () in

    let model_state, engine_state = engine_handle (state.model_state, {state.engine_state with incoming_int_msg = Some init }) in

    let state = { state with model_state; engine_state } in

    let rec loop state ~tick () =
      (* inbound actions from test manager *)
      match try_zmq_read state.zmqrepsocket with
      | Some act ->
        let model_state, engine_state = handle_model_ev (state.model_state, state.engine_state) (Action act) in
        loop ~tick { state with model_state; engine_state } ()
      | None ->
        (* inbound messages from FIX *)
        match SQ.try_take state.sq with
        | Some msg ->

          let msg = Parse_full_messages.parse_top_level_msg msg in
          let () = update_times msg in

          let engine_state = { state.engine_state with incoming_fix_msg = Some msg } in
          let (model_state, engine_state) = engine_handle (state.model_state, engine_state) in
          let state = { state with model_state; engine_state } in

          let () = save_state_seqns state in

          loop state ~tick:0.0 ()
        | None ->
          (try Thread.delay 0.001 with Unix.Unix_error (Unix.EINTR,_,_)->());
          if tick > 2.0 then (
            (* nothing to process, just do a timeupdate *)
            let (model_state, engine_state) = engine_handle (state.model_state, state.engine_state) in
            let state = { state with model_state; engine_state } in
            let () = save_state_seqns state in
            loop state ~tick:0.0 ()
          ) else
            loop state ~tick:(tick +. 0.002) ()
    in
    loop state ~tick:0.0 ()

  let run config (zmqrepsocket, zmqpubsocket) (inch, outch) =
    let dir = session_folder config in
    let () = Fix_IO.set_logfile dir "fix.log" in
    let init = Fix_engine_state.(IncIntMsg_CreateSession {dest_comp_id=config.target_id ; reset_seq_num=false} ) in
    let model_state = State.init_model_state in
    let sq = SQ.make () in
    let sessn = Session_manager.create ~reset:false ~dir in
    let seqns = Session_manager.get sessn in
    let engine_state = Engine.make_engine_state seqns config in
    let state = { sessn; zmqrepsocket; zmqpubsocket; inch; outch; logdir = dir; model_state; sq; engine_state } in
    let _thread = fix_read_thread state () in
    loop init state ()

  let run_client client_config =
    (* Bringing up a ZMQ sockets *)
    let zmqcontext = Zmq.Context.create () in

    let zmqpubsocket = Zmq.Socket.(create zmqcontext pub) in
    let () = Zmq.Socket.bind zmqpubsocket client_config.zmqpub in

    let zmqrepsocket = Zmq.Socket.(create zmqcontext rep) in
    let () = Zmq.Socket.bind zmqrepsocket client_config.zmqrep in

    (* Connect to fix engine *)
    let chans = init_socket client_config.fixhost client_config.fixport in

    let config = make_engine_config client_config in

    let () = banner client_config () in

    try run config (zmqrepsocket, zmqpubsocket) chans with Exit -> ()

end


let () =
  let open Cmdliner in
  let fixhost = let doc = "FIX host address" in
    Arg.(value & opt string "localhost" & info ["fix-host"] ~docv:"FIXHOST" ~doc)
  in
  let fixport = let doc = "Port for the FIX connection" in
    Arg.(value & opt int 9880 & info ["fix-port"] ~docv:"FIXPORT" ~doc)
  in
  let compid = let doc = "FIX Client ID" in
    Arg.(value & opt string "CLIENT" & info ["compid"] ~docv:"COMPID" ~doc)
  in
  let hostid = let doc = "Host ID (will be sent as SenderLocationID<142>)" in
    Arg.(value & opt string "LOGIN" & info ["hostid"] ~docv:"HOSTID" ~doc)
  in
  let targetid = let doc = "FIX Target ID" in
    Arg.(value & opt string "IMANDRA" & info ["targetid"] ~docv:"TARGETID" ~doc)
  in
  let zmqpub =
    let doc = "ZMQ PUB socket adress" in
    Arg.(value & opt string "tcp://*:5000" & info ["zmq-pub"] ~docv:"ZMQPUBADDR" ~doc)
  in
  let zmqrep =
    let doc = "ZMQ REP socket adress" in
    Arg.(value & opt string "tcp://*:5001" & info ["zmq-rep"] ~docv:"ZMQREPADDR" ~doc)
  in
  let info = let doc = "FIX engine client, publishing all internal messages on ZMQ socket." in
    Term.info "server" ~version:"%%VERSION%%" ~doc ~exits:Term.default_exits
  in
  let open Client in
  let config = Term.(const make_client_config $ fixhost $ fixport $ zmqpub $ zmqrep $ compid $ hostid $ targetid ) in
  Term.exit @@ Term.eval (Term. (const run_client $ config ), info)
;;
