let ( >>= ) = Lwt.( >>= )

let script_file = ref ""

let log_fix_message pre msg =
  let log = Fix_io.encode ~split:'|' msg in
  Lwt_io.printlf "[%s]: %s" pre log


let fixio_to_engine engine msg =
  log_fix_message "In " msg
  >>= fun () ->
  let msg = Parse_full_messages.parse_top_level_msg msg in
  Engine.send_fix engine msg >>= fun () -> Engine.send_getstate engine


let engine_to_fixio fixio msg =
  let wire = Encode_full_messages.packet_full_valid_msg msg in
  log_fix_message "Out" wire >>= fun () -> Fix_io.send fixio wire


let save_state_seqns sessn state =
  let seqin = state.Fix_engine_state.incoming_seq_num in
  let seqout = state.Fix_engine_state.outgoing_seq_num in
  Session_manager.save sessn (seqin, seqout)


type state =
  { fixio_box : Fix_io.message Lwt_mvar.t
  ; model_box : Model.event Lwt_mvar.t
  ; engine_box : Engine.event Lwt_mvar.t
  ; fixio : Fix_io.fix_io
  ; engine : Engine.t
  ; model : Model.t
  ; sessn : Session_manager.t
  }
(* react here to the fixmessage coming in *)
let rec loop t =
  Lwt.pick
    [ ( Lwt_mvar.take t.engine_box
      >>= function
      (* this is the engine producing a message *)
      | Engine.FIXMessage (Full_messages.ValidMsg msg) ->
          engine_to_fixio t.fixio msg
      (* this is the ending sending an actual fix message *)
      | Engine.Internal msg ->
          Model.send_fix t.model msg
      (* don't need to react to this *)
      | Engine.State state ->
          save_state_seqns t.sessn state
      | _ ->
          Lwt.return_unit )
    (* this is an incoming fix message  - i.e. from client connected *)
    ; (Lwt_mvar.take t.fixio_box >>= fun msg -> fixio_to_engine t.engine msg)
    (* this is a model transition - *)
    ; ( Lwt_mvar.take t.model_box
      >>= function
      | Model.FIXMessage msg ->
          Engine.send_int t.engine msg
      | _ ->
          Lwt.return_unit )
    ]
  >>= fun () -> loop t


let config box =
  Engine.
    { comp_id = "IMANDRA"
    ; host_id = None
    ; on_behalf_id = None
    ; target_id = "CLIENT"
    ; timer = 3.0
    ; recv = Lwt_mvar.put box
    }


let session_folder config =
  let open Engine in
  let hostid =
    match config.host_id with None -> "NoHostid" | Some host_id -> host_id
  in
  Printf.sprintf "%s.%s.%s.session" config.comp_id config.target_id hostid


let established : unit Lwt_mvar.t = Lwt_mvar.create_empty ()

let with_catch_disconnect f =
  Lwt.catch f (fun _ ->
      Lwt_io.printl "Client disconnected."
      >>= fun () -> Lwt_mvar.take established )


let f _ (inch, outch) =
  if not (Lwt_mvar.is_empty established)
  then Lwt_io.printl "Connection refused. Already running."
  else
    Lwt_io.printl "Received connection, starting fix-engine."
    >>= fun () ->
    with_catch_disconnect
    @@ fun () ->
    let engine_box = Lwt_mvar.create_empty () in
    let model_box = Lwt_mvar.create_empty () in
    let fixio_box = Lwt_mvar.create_empty () in
    let config = config engine_box in
    let dir = session_folder config in
    let sessn = Session_manager.create ~reset:true ~dir in
    let seqns = Session_manager.get sessn in
    let enginethread, engine = Engine.start seqns ~config in
    let modelthread, model = Model.start ~recv:(Lwt_mvar.put model_box) in
    let iothread, fixio =
      Fix_io.start ~recv:(Lwt_mvar.put fixio_box) (inch, outch)
    in
    let state =
      { engine; engine_box; fixio; fixio_box; model; model_box; sessn }
    in
    Lwt_mvar.put established ()
    >>= fun () ->
    Lwt.pick [ loop state; enginethread; iothread; modelthread ]
    >>= fun () -> Lwt_mvar.take established


let server_thread =
  let addr = Unix.(ADDR_INET (inet_addr_loopback, 9880)) in
  let _server = Lwt_io.establish_server_with_client_address addr f in
  print_endline "Started server on localhost:9880 ..." ;
  fst (Lwt.wait ())

let usage_msg = "-s <file>"

let anon_func a =
  failwith @@ "don't know what to do with arg input "^a

let () =
  Arg.parse [("-o", Arg.Set_string script_file, "Set script file name")] anon_func usage_msg;
  Lwt_main.run @@ server_thread
