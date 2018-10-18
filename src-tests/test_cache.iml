(** Tests for caching logic. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    test_cache.ml
    
*)
open Full_admin_messages
open Full_messages
open Fix_engine_transitions
open Fix_engine_utils
open TimeDefaults



let pe = print_endline;;

let make_fix_msg i =
    let msg = Full_FIX_Admin_Msg ( 
        Full_Msg_Heartbeat { hb_test_req_id = Some "123" }
    ) in
    create_outbound_fix_msg (i - 1, 
        "IMANDRA",     
        "TARGET", 
        make_utctimestamp 2017 1 1 0 1 0 None,
        msg, false
    )
;;

let cache = [
    make_fix_msg (1);
    make_fix_msg (10);
    make_fix_msg (15);
];;

print_string "The old cache:\n";;
print_string ( Yojson.pretty_to_string ( Full_messages_json.full_msg_list_to_json (cache) ));;

print_string "\n\nThe new cache\n";;
let new_cache = add_to_cache (make_fix_msg (12), cache);;
print_string ( Yojson.pretty_to_string ( Full_messages_json.full_msg_list_to_json (new_cache) ));;

(** Can we transition correctly? *)
let check_cache (c, idx) = 
    if is_cache_complete (c, idx) then
        print_endline "\nCache complete"
    else
        print_endline "\nCache incomplete"
;;

pe "\nShould be fine - since 0th we have everything";;
check_cache([
    make_fix_msg (1);
    make_fix_msg (2);
    make_fix_msg (3);
    make_fix_msg (4);
], 0);;

pe "\nFails - missing 5-9";;
check_cache([
    make_fix_msg (1);
    make_fix_msg (2);
    make_fix_msg (3);
    make_fix_msg (4);
    make_fix_msg (10);
], 0);;

pe "\nFails - missing 1st";; 
check_cache([
    make_fix_msg (2);
    make_fix_msg (3);
    make_fix_msg (4);
    make_fix_msg (5);
], 0);;

