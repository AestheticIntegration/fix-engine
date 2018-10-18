type config = {
  comp_id        : string;
  host_id        : string option;
  on_behalf_id   : string option;
  target_id      : string;
  timer          : float;
  reset_seq      : bool;  
  pub_callback   : (Model_messages.model_msg -> unit Lwt.t) option;
}

type t = {
  heartbeat : unit Lwt.t;
  fix       : unit Lwt.t;
  mailbox   : Fix_global_state.incoming_event Lwt_mvar.t;
  initmsg   : Fix_engine_state.fix_engine_int_inc_msg;
}

let get_heartbeat_thread t = t.heartbeat
let get_fix_thread       t = t.fix 
let get_input_mailbox    t = t.mailbox 
let create_session_msg   t = t.initmsg


let get_current_utctimstamp () =    
  let open Datetime in
  let dtime = Unix.gettimeofday () in 
  let tm = Unix.gmtime dtime in
  let msec = int_of_float (1000000. *. (dtime -. floor dtime)) in
  {  utc_timestamp_year   = tm.Unix.tm_year + 1900
  ;  utc_timestamp_month  = tm.Unix.tm_mon + 1
  ;  utc_timestamp_day    = tm.Unix.tm_mday
  ;  utc_timestamp_hour   = tm.Unix.tm_hour
  ;  utc_timestamp_minute = tm.Unix.tm_min
  ;  utc_timestamp_second = tm.Unix.tm_sec
  ;  utc_timestamp_millisec = Some (msec)
}

let last_received_utctimestamp = ref ( get_current_utctimstamp() )
let get_last_received_utctimestamp () = ! last_received_utctimestamp 

let last_received_sendingtime = ref ( get_current_utctimstamp() )
let get_last_received_sendingtime () = ! last_received_sendingtime

let read_int file =
  try
    let chn = open_in file in
    let num = input_line chn in
    let () = close_in chn in
    int_of_string num
  with
    _exn -> 0
;;

let read_seqns dir =
  if not(Sys.file_exists dir) then 
    let () = Unix.(mkdir dir 0o775) in (0,0)  
  else
    let seqin  = read_int Filename.(concat dir "seqin" ) in
    let seqout = read_int Filename.(concat dir "seqout") in
    (seqin, seqout)
;;

let make_engine_state session_dir config =
  let open Fix_engine_state in
  let inseq,outseq = read_seqns session_dir in
  { init_fix_engine_state with
    fe_comp_id = config.comp_id
  ; fe_sender_location_id = config.host_id
  ; fe_on_behalf_of_comp_id = config.on_behalf_id
  ; fe_target_comp_id = config.target_id
  ; fe_curr_time = get_current_utctimstamp ()
  ; fe_max_num_logons_sent = 10
  ; fe_application_up = true
  ; incoming_seq_num = inseq
  ; outgoing_seq_num = outseq    
  }
 
let (>>=) = Lwt.(>>=)

(** Timechange thread  *)

let do_timechange mailbox =
  let time = get_current_utctimstamp () in
  let timechange = Fix_engine_state.IncIntMsg_TimeChange time in
  let timechange = Fix_global_state.Internal_Message timechange in
  Lwt_mvar.put mailbox timechange
;;

(** Heartbeat thread  *)

let rec heartbeat_thread mailbox =
  Lwt_unix.sleep (1.0) >>= fun () -> 
  do_timechange mailbox >>= fun () -> 
  heartbeat_thread mailbox
;;


let write_seqn session_dir fname msg =
  let open Full_messages in
  if msg == Garbled then Lwt.return_unit else
  let seqn = match msg with 
    | ValidMsg data -> data.full_msg_header.h_msg_seq_num
    | SessionRejectedMsg data -> data.srej_msg_msg_seq_num                       
    | BusinessRejectedMsg  data -> data.brej_msg_ref_seq_num                          
    | Garbled -> 0
    in
    let filename = Filename.(concat session_dir fname) in 
    Lwt_io.(open_file ~mode:output filename) >>= fun fch ->
    Lwt_io.write fch (string_of_int seqn) >>= fun () ->
    Lwt_io.close fch
;;

let log_flags = Unix.[O_WRONLY; O_APPEND; O_CREAT];;
let store_senging_time msg = 
    let open Full_messages in
    match msg with 
        | ValidMsg data -> ( last_received_sendingtime := data.full_msg_header.h_sending_time )
        | _ -> ()
;;


let fix_thread session_dir inch mailbox = 
  let filename = Filename.(concat session_dir "fix.log") in 
  Message_stream.from_channel ~verbose:true inch
  |> Lwt_stream.iter_s ( fun msg ->
    let () = last_received_utctimestamp := (get_current_utctimstamp ()) in
    let str = msg |> List.map (fun (k,v) -> k ^ "=" ^ v)
                  |> String.concat "|" 
                  |> fun s -> s ^ "|\n"
                  in
    Lwt_io.(open_file ~flags:log_flags ~mode:output filename) >>= fun fch ->              
    Lwt_io.write fch str >>= fun () ->
    Lwt_io.close fch >>= fun () ->    
    let msg = Parse_full_messages.parse_top_level_msg msg in 
    let () = store_senging_time msg in
    write_seqn session_dir "seqin" msg >>= fun () ->  
    do_timechange mailbox >>= fun () ->
    Lwt_mvar.put mailbox (Fix_global_state.FIX_Message msg)
  )
;;

let send_msg session_dir outch fmsg =
  let filename = Filename.(concat session_dir "fix.log") in   
  match fmsg with
  | Full_messages.ValidMsg msg -> begin
    let wire = Encode_full_messages.encode_full_valid_msg msg in
    let log = String.map (function '\001' -> '|' | c -> c) wire ^ "\n" in
    Lwt_io.(open_file ~flags:log_flags ~mode:output filename) >>= fun fch ->              
    Lwt_io.write fch log                      >>= fun () ->
    Lwt_io.close fch                          >>= fun () ->    
    Lwt_io.write outch wire                   >>= fun () ->
    Lwt_io.flush outch                        >>= fun () ->
    write_seqn session_dir "seqout" fmsg 
  end
  | _ ->  Lwt.return_unit
;;

let create config (inch, outch) =
  let hostid = match config.host_id with None -> "NoHostid" | Some host_id -> host_id in
  let session_folder = Printf.sprintf "%s.%s.%s.session" config.comp_id config.target_id hostid in
  let engine_state = make_engine_state session_folder config in
  let initmsg = Fix_engine_state.(IncIntMsg_CreateSession { 
    dest_comp_id = engine_state.fe_target_comp_id;
    reset_seq_num = config.reset_seq
  } ) in  
  let mailbox, _global_state = 
    Fix_global_state.start 
      ~pub:config.pub_callback 
      engine_state 
      State.init_model_state 
      (send_msg session_folder outch) 
  in {
    heartbeat = heartbeat_thread mailbox;
    fix = fix_thread session_folder inch mailbox;
    mailbox = mailbox;
    initmsg = initmsg
  }
;;  
