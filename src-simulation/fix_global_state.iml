let (>>=) = Lwt.(>>=)


type incoming_event =
    | FIX_Message      of Full_messages.full_top_level_msg
    | Internal_Message of Fix_engine_state.fix_engine_int_inc_msg
    | ModelAction      of Actions.fix_action
    | Terminate

(** Global state contains a fix_engine state and model_state *)
type fix_global_state = {
         incoming : incoming_event Lwt_mvar.t;
     pub_callback : (Model_messages.model_msg -> unit Lwt.t) option;    
     engine_state : Fix_engine_state.fix_engine_state;
      model_state : State.model_state;
     fix_callback : Full_messages.full_top_level_msg -> unit Lwt.t 
}

let _pp_incoming = function
  | FIX_Message ( ValidMsg             m ) -> 
      "FIX_Message (ValidMsg): " 
      ^ "\n - " ^ Yojson.pretty_to_string (Full_messages_json.full_msg_to_json m.full_msg_data)
  | FIX_Message ( SessionRejectedMsg   m ) -> 
      "FIX_Message (SessionRejectedMsg): " 
      ^ "\n - " ^ Yojson.pretty_to_string (Full_messages_json.session_rejected_msg_to_json m)
  | FIX_Message ( BusinessRejectedMsg  m ) -> 
      "FIX_Message (BusinessRejectedMsg): "
      ^ "\n - " ^ Yojson.pretty_to_string (Full_messages_json.biz_rejected_msg_to_json m) 
  | FIX_Message ( Garbled                ) -> "FIX_Message (Garbled)" 
  | Internal_Message _ -> "Internal_Message"
  | ModelAction      _ -> "ModelAction"
  | Terminate          -> "Terminate"


(** Running Fix_engine.one_step while there are outgoing messages and 
    calling the fix_callback function for each *)
let rec send_all_outgoing_fix engine_state fix_callback =
    let open Fix_engine_state in
    match engine_state.outgoing_fix_msg with 
    | None -> Lwt.return engine_state   
    | Some msg -> begin 
        fix_callback msg >>= fun () -> 
        let engine_state = { engine_state with outgoing_fix_msg = None } in (* NOTE: I'm cleaning the out slot here *)
        let engine_state = Fix_engine.one_step engine_state in
        send_all_outgoing_fix engine_state fix_callback 
    end
;;

(** Iterating over a list of model messages, pass each into fix_eigine and
    send anything that fix_engine produces *)
let rec send_messages_list messages engine_state fix_callback pub_callback =
    let open Fix_engine_state in
    match messages with 
    | [] -> Lwt.return engine_state 
    | hd::tl -> (
        ( match pub_callback with None -> Lwt.return_unit | Some f -> f hd ) >>= fun () ->
        let data = Type_converter.convert_model_to_full_fix hd in
        let msg = IncIntMsg_ApplicationData data in
        let engine_state = { engine_state with incoming_int_msg = Some msg } in
        let engine_state = Fix_engine.one_step engine_state in
        send_all_outgoing_fix engine_state fix_callback >>= fun engine_state ->
        send_messages_list tl engine_state fix_callback pub_callback
    )
;;

let rec while_busy_loop state =
    let engine_state = state.engine_state in
    let engine_state = Fix_engine.one_step engine_state in
    (* THEOREM : after one_step we can get either ontgoing internal
        or outgoing FIX message *)
    begin match ( engine_state.outgoing_fix_msg , engine_state.outgoing_int_msg) with
        (* On outgoing FIX message we send it and clean outgoing slot.*)
        | Some msg, None -> begin  
            state.fix_callback msg >>= fun () -> 
            let engine_state = { engine_state with outgoing_fix_msg = None } in
            Lwt.return { state with engine_state = engine_state } 
        end
        | None, Some _msg -> begin
            let model_state = state.model_state in
            let model_state = match engine_state.outgoing_int_msg with
                | Some ( OutIntMsg_ApplicationData data ) ->
                    let model_message = Type_converter.convert_full_to_model_fix data in
                    let model_state = { model_state with State.incoming_msg = model_message } in
                    Venue.one_step model_state
                | Some ( OutIntMsg_ResendApplicationData data ) ->
                    let model_message = Type_converter.convert_full_to_model_fix data in
                    let model_message = match model_message with
                    | Model_messages.FIX_TL_Normal m -> Model_messages.FIX_TL_PossibleResend m | m -> m in
                    let model_state = { model_state with State.incoming_msg = model_message } in
                    Venue.one_step model_state
                | _ -> model_state (* TODO -- see what to do with other messages *)
                in
            let engine_state = { engine_state with outgoing_int_msg = None } in
            send_messages_list 
                model_state.State.outgoing_msgs 
                engine_state 
                state.fix_callback 
                state.pub_callback >>= fun engine_state ->
            Lwt.return { state with 
                engine_state = engine_state ;
                model_state  = { model_state  with State.outgoing_msgs = [] } } 
        end
        | None, None -> Lwt.return { state with engine_state = engine_state }
        |  _ -> Lwt.fail_with "Critical internal error in fix_engine model" 
    end >>= fun state ->
    if Fix_engine_state.engine_state_busy state.engine_state then
        while_busy_loop state
    else Lwt.return state
;;

let rec main_loop state =
    let open Fix_engine_state in
    Lwt_mvar.take state.incoming >>= fun incoming ->
(*    Lwt_io.printf "Main_loop received incoming : %s\n" (pp_incoming incoming) >>= fun () -> *)
    Lwt_io.flush_all () >>= fun () ->
    match incoming with 
        | Terminate -> Lwt.return_unit
        | Internal_Message msg -> 
            let state = { state with engine_state = { state.engine_state with incoming_int_msg = Some msg } } in
            while_busy_loop state >>= fun state ->
            main_loop state
        | FIX_Message msg ->
            let state = { state with engine_state = { state.engine_state with incoming_fix_msg = Some msg } } in
            while_busy_loop state >>= fun state ->
            main_loop state
        | ModelAction act ->
            let model_state = {state.model_state with State.incoming_action = Some act }  in
            let model_state = Venue.one_step model_state in
            let engine_state = { state.engine_state with outgoing_int_msg = None } in
            send_messages_list 
                model_state.State.outgoing_msgs 
                engine_state 
                state.fix_callback 
                state.pub_callback >>= fun engine_state ->
            Lwt.return { state with 
                engine_state = engine_state ;
                model_state  = { model_state  with State.outgoing_msgs = [] } } >>= fun state ->
            main_loop state
;;

let start ?pub:(pub_callback=None) init_engine init_model fix_callback =
    let state = {
        incoming     = Lwt_mvar.create_empty (); 
        engine_state = init_engine;
        model_state  = init_model;
        fix_callback = fix_callback;
        pub_callback = pub_callback   
    } in
    ( state.incoming , main_loop state )
;;
