(** Wrapper for running the included examples. *)
(***

    Usage examples.

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    example_runner.ml

*)

open Fix_engine
open Fix_engine_json
open Examples
open String

let pe = print_endline;;

let single example =
    let (title, results) = example in
    begin
        pe title;
        pe (print_states (results));
    end
;;

let print_menu () =
    begin
        pe "1. Print menu";
        pe "2. List examples";
        pe "3. Run specific example";
        pe "4. Print the messages sequence";
        pe "5. Exit";
    end
;;

let convert_id l i =
    (List.length l) - i
;;

let rec commander () =
    let () = print_string ">>" in
    let i = read_int () in

    if i = 1 then (
        let () = print_menu() in
        commander ()
    )
    else if i = 2 then (
        let () = pe "The existing examples are:" in
        let ex_names = List.map (fun (t, res) -> t) !Examples.examples in
        let () = pe (String.concat "" ex_names) in
        commander()
    ) else if i = 3 then (
        let () = print_string "example #" in
        let ex_id = read_int () in
        if (ex_id < 0) || (ex_id > ( List.length !Examples.examples)) then (
            let () =
                pe (Printf.sprintf "invalid id : min = 1; max = %i"
                    (List.length !Examples.examples))
            in
                commander()
        ) else (
            let example = (List.nth !Examples.examples (convert_id !Examples.examples ex_id)) in
            let (title, results) = example in
            let () =
            begin
                pe title;
                pe (print_states (results()));
            end in
            commander()
        )
    ) else if i = 4 then (
        let () = print_string "example #" in
        let ex_id = read_int () in
        if (ex_id < 0) || (ex_id > (List.length !Examples.examples)) then
            (
                let () = (
                    pe (Printf.sprintf "invalid id : min = 1; max = %d" (List.length !Examples.examples))
                ) in
                commander ()
            )
    ) else ()
;;

pe "Press 1 for menu:";;
commander();;
