
let (>>=) = Lwt.(>>=);;

let split_into_key_value (spliton : char) ( stream : char Lwt_stream.t ) : (string * string) Lwt_stream.t =
    (** Converts [ '5'; '2'; '='; 'A' ] to ("52" , "A" ) *)
    let get_key_value (chlist : char list) : string * string =
        List.fold_left (fun ((k,v),f) char -> match char with
            | '=' -> ((k,v), true)
            |  c  -> if f then (( k, v ^ String.make 1 c ), f)
                          else (( k ^ String.make 1 c, v ), f)   
            ) (("", ""), false) chlist
        |> fst
        in
    let f () =
        Lwt_stream.get_while (fun c -> c <> spliton) stream >>= fun chlist ->
        Lwt_stream.junk stream >>= fun () ->
        if chlist <> [] 
        then (
            let k,v = get_key_value chlist in
            Lwt.return_some (k,v) 
        )
        else Lwt.return_none
        in
    Lwt_stream.from f
;;

let split_into_messages (verbose:bool) (stream : (string * string) Lwt_stream.t) =
    let f () =
        Lwt_stream.get_while (fun (k,v) -> k <> "10") stream >>= fun msg ->
        Lwt_stream.get stream >>= function None -> Lwt.return_none | Some chsum ->
        if msg <> [] 
        then (
            let msg = (msg @ [chsum]) in
            let str = msg 
                |> List.map (fun (k,v) -> k ^ "=" ^ v)
                |> String.concat "|" in
            (if verbose then Lwt_io.printl ("Receive: " ^ str ) else Lwt.return_unit) >>= fun () ->
            Lwt.return_some msg
        )
        else Lwt.return_none
        in
    Lwt_stream.from f    
;;

let from_channel ?(verbose=false) ?(spliton='\001') inch =
    Lwt_io.read_chars inch
        |> split_into_key_value spliton
        |> split_into_messages verbose
;;

