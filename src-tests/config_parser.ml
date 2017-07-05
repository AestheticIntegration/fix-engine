type action = 
    | Connect 
    | Disconnect

type config_entry =
    | ExpectMessage of (string * string) list
    | InitiateMessage of (string * string) list
    | ExpectAction of action
    | InitiateAction of action

let read_file filename = 
    let lines, chan = ref [], open_in filename in
    try
        while true; do
        lines := input_line chan :: !lines
    done; !lines
    with End_of_file ->
        close_in chan;
        List.rev !lines 
;;

let parse_config_line cfgstr =
    if Bytes.length cfgstr <= 1 then None else
    let payload = Bytes.sub cfgstr 1 (Bytes.length cfgstr - 1) in
    let parse_action = function
        | "CONNECT" -> Connect 
        | "DISCONNECT" -> Disconnect 
        | _ -> payload 
            |> Printf.sprintf "Error parsing action \"%s\"" 
            |> failwith 
        in
    let string_to_key_value string =
        Stream.of_string string 
            |> Parser_utils.split_into_key_value '\001'
            |> Parser_utils.split_into_messages
            |> Stream.next
        in
    match Bytes.get cfgstr 0 with
        | ' ' | '#' -> None
        | 'e' -> Some (  ExpectAction  (parse_action payload) )
        | 'i' -> Some (InitiateAction  (parse_action payload) )
        | 'E' -> Some (  ExpectMessage (string_to_key_value payload) )
        | 'I' -> Some (InitiateMessage (string_to_key_value payload) )
        | _ -> failwith ( "Error on line: " ^ cfgstr )
;;

let parse_file filename = 
    read_file filename
        |> List.map parse_config_line
        |> List.filter (fun x -> x != None)
        |> List.map (function Some x -> x | None -> failwith "Internal error in parse_file.")
;;
 
 
