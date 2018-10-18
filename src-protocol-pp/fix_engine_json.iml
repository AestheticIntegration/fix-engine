(** JSON printers for engine model state. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    fix_engine_json.ml

*)

open Yojson
open Fix_engine_state
open Datetime_json
open Base_types_json
open Full_app_messages_json
open Full_messages_json
open TimeDefaults_json


let fix_engine_mode_to_string = function
    | NoActiveSession                                   -> "NoActiveSession"
    | LogonInitiated                                    -> "LogonInitiated"
    | ActiveSession                                     -> "ActiveSession"
    | GapDetected                                       -> "GapDetected"
    | ShuttingDown                                      -> "ShuttingDown"
    | Recovery                                          -> "Recovery"
    | Retransmit                                        -> "Retransmit"
    | ShutdownInitiated                                 -> "ShutdownInitiated"
    | Error                                             -> "Error"
    | CacheReplay                                       -> "CacheReplay"
    | WaitingForHeartbeat                               -> "WaitingForHeartbeat"
;;

(** These are the messages going in/out of the engine to the owner. *)
let int_inc_msg_to_json x : json = match x with
    | IncIntMsg_TimeChange t                            -> `Assoc [ ( "TimeChange",         `Assoc [ ( "new_time"       , utctimestamp_to_json t )]             )]
    | IncIntMsg_CreateSession cs                        -> `Assoc [ ( "CreateSession",      `Assoc [ ( "dest_comp_id"   , `String cs.dest_comp_id )])]
    | IncIntMsg_EndSession                              -> `String "EndSession"
    | IncIntMsg_ApplicationData d                       -> `Assoc [ ( "ApplicationData",    `Assoc [ ( "msg"            , ( full_app_msg_to_json d) )] )]
    | IncIntMsg_ManualIntervention m                    -> `Assoc [ ( "ManualIntervention", `Assoc [ ( "reset"          , `Bool m.session_reset )]              )]
;;

let int_out_msg_to_json x : json = match x with
    | OutIntMsg_ResendApplicationData d                 -> `Assoc [ ( "ResendApplicationData", `Assoc [ ( "msg"            , ( full_app_msg_to_json d) )] )]
    | OutIntMsg_ApplicationData d                       -> `Assoc [ ( "ApplicationData",       `Assoc [ ( "msg"            , ( full_app_msg_to_json d) )] )]
    | OutIntMsg_Reject                                  -> `String "Reject"
;;

let int_inc_msg_to_str i = 
    Yojson.pretty_to_string (int_inc_msg_to_json i)
;;

let int_out_msg_to_str i = 
    Yojson.pretty_to_string (int_out_msg_to_json i)
;;


let int_inc_msg_opt_to_json : ( fix_engine_int_inc_msg option -> Yojson.json) = 
    function None -> `Null | Some i -> int_inc_msg_to_json (i)
;;

let int_out_msg_opt_to_json : ( fix_engine_int_out_msg option -> Yojson.json) = 
    function None -> `Null | Some i -> int_out_msg_to_json (i)
;;


let fix_engine_state_to_json s = 
    `Assoc [ 
        ( "curr_mode"                                   , `String (fix_engine_mode_to_string s.fe_curr_mode)    );
        ( "initiator"                                   , bool_opt_to_json s.fe_initiator                       );
        ( "curr_time"                                   , utctimestamp_to_json s.fe_curr_time                   );
        ( "comp_id"                                     , `String s.fe_comp_id                                  );
        ( "target_comp_id"                              , `String s.fe_target_comp_id                           );
        ( "incoming_int_msgs"                           , int_inc_msg_opt_to_json s.incoming_int_msg            );
        ( "outgoing_int_msgs"                           , int_out_msg_opt_to_json s.outgoing_int_msg            );
        ( "incoming_seq_num"                            , `Int s.incoming_seq_num                               );
        ( "outgoing_seq_num"                            , `Int s.outgoing_seq_num                               );
        ( "incoming_fix_msgs"                           , full_top_level_msg_opt_to_json s.incoming_fix_msg     );
        ( "outgoing_fix_msgs"                           , full_top_level_msg_opt_to_json s.outgoing_fix_msg     );
        ( "cache"                                       , full_msg_list_to_json s.fe_cache                      );
        ( "history"                                     , full_msg_list_to_json s.fe_history                    );
        ( "last_hearbeat_received"                      , utctimestamp_to_json s.fe_last_data_received          );
        ( "heartbeat_interval"                          , duration_to_json s.fe_heartbeat_interval              );
        ( "history_to_send"                             , full_msg_list_to_json s.fe_history_to_send            );
        ( "application_up"                              , `Bool s.fe_application_up                             );
    ]
;;


let engine_state_to_str s =
    Yojson.pretty_to_string (fix_engine_state_to_json s)
;;


let print_states states = 
    String.concat "\n" (List.map engine_state_to_str states)
;;
