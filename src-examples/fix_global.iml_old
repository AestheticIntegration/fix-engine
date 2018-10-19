(** Utilities for running examples. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    fix_global.ml

*)

open Full_messages
open Fix_engine
open Fix_engine_json

(** We're combining these to make it easier to run simulations and demonstrate
    examples, etc. *)
type msg_to_proc = [
    | `FIX_MSG of full_top_level_msg
    | `INT_MSG of fix_engine_int_msg
];;

(** This is just the state where the input shows up. *)
let get_input_state (x, last_state) =
    match x with
    | `FIX_MSG f -> { last_state with incoming_fix_msg = Some f }
    | `INT_MSG i -> { last_state with incoming_int_msg = Some i }
;;

(** Execute a single instruction. We should not  *)
let run_single (x, last_state) =
    one_step ( get_input_state (x, last_state ))
;;

(** Run until there's nothing to do. Helpful in simulations, etc. *)
let rec run_global_step ( m, engine : msg_to_proc * fix_engine_state ) =
    let engine' = run_single (m, engine) in
    if engine' = engine then
        [ engine ]
    else
        engine :: run_global_step (m, engine')
;;

(** Given a sequence of states and a default state, return the last if
    the list contains at least 1 element, return the default otherwise. *)
let get_last_state ( def_state, state_list : fix_engine_state * fix_engine_state list ) =
    let l = List.length state_list in
    if l > 0 then List.nth state_list (l-1) else def_state
;;

(* Run through all of the messages and return a list of frames. *)
let rec run_through_msgs ( s, msgs : fix_engine_state * msg_to_proc list) =
    match msgs with
    | [] -> []
    | x::xs ->
        let input_state = get_input_state (x, s) in
        let processed_states = run_global_step (x, s) in
        let last_state = get_last_state (s, processed_states) in
        input_state :: (processed_states @ run_through_msgs ( last_state, xs ) )
;;
