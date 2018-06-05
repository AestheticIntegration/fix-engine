(** Various parser utilities. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parser_utils.ml

*)

(** OCaml Stream processing helper functions that break a raw byte stream into 
    a stream of key=value pairs and then into a stream of messages.  
*)

(**  Splits a stream of characters into a stream of key*value pairs. *)
let split_into_key_value_inner (spliton : char) ( stream : char Stream.t ) : (string * string) Stream.t =
    let current = ref [] in
    let saved = ref [] in
    let listref_to_string lst =
        let ans = !lst |> List.rev |> String.concat "" in
        ans in
    let isValidMessageEntryOrEOL c s = 
        if !s = [] then None else
        let res = Scanf.sscanf (listref_to_string s) " %s@=%s " (fun k v -> Some (k,v)) in  
        match (Stream.peek stream) with
        None -> 
          res
        | _ -> 
            (match Scanf.sscanf (listref_to_string c) " %s@=%s " (fun k v -> Some(k,v)) with
                Some (_,"") -> None
              | _ -> 
                res)      
    in
    let rec next i =    
      try  
        let c = Stream.next stream in
          if (c = spliton) then (
              match isValidMessageEntryOrEOL current saved with
              None ->
                saved := if (!saved = []) then !current else (!current @ (Char.escaped c :: !saved));
                current := [];
                next i
             | x -> 
                saved := !current;
                current := [];
                x
          ) else (
             current := Char.escaped c :: !current;
             next i
          )
      with Stream.Failure -> None
    in
    Stream.from next
;;

let split_into_key_value (spliton : char) ( stream : char Stream.t ) : (string * string) Stream.t = 
    let result = ref [] in
    Stream.iter (fun value -> result := value :: !result) stream;
    split_into_key_value_inner spliton (Stream.of_list (List.rev (spliton::!result)))
;;

(** Splits a stream of key-value paris into stream of messages. *)
let split_into_messages (stream : (string * string) Stream.t) =
    let current = ref [] in
    let rec next i =
        try 
            let key,value = Stream.next stream in    
            if (key = "10") then (
                let message = List.rev ( (key,value)::!current ) in
                current := [];
                Some message
            ) else (
                current := (key,value) :: !current;
                next i
            )
        with Stream.Failure -> (
            if (!current != []) then (
                let message = List.rev !current in
                current := [];
                Some message
            ) else None
        ) in
    Stream.from next
;; 



(** Extract a value given a tag, returns a pair with the value and the rest of the list.*)
let take (key : string) (lst : (string * string) list ) =
    let rec take accu = function
    | (k,v) :: tl -> 
        if k = key then (Some v , List.rev accu @ tl)
        else take ((k,v)::accu) tl
    | [] -> (None, List.rev accu) in
    take [] lst
;;

(** Splits a list of (tag * value) pairs into two lists on a given tag. The tag
    itself goes into the second list.  If the tag is absent -- returnes an empty
    second list. 

    split_on_tag 4 [(1,0); (2,0); (3,0); (4,0); (5,0); (6,0)] =>
    ( [ (1,0); (2,0); (3,0) ] , 
      [ (4,0); (5,0); (6,0) ]
    )
 *)
let split_on_tag ( key : string ) ( msg : (string * string) list ) =
    let rec split accu = function
    | (k,v) :: tl -> if k = key then (List.rev accu, (k,v)::tl ) 
                                else split ((k,v)::accu) tl
    | [] -> (List.rev accu, []) in
    split [] msg
;;

(** Uses the first entry tag in the input list to split the list into a list of
    lists, each starting with the tag.
*)
let cut_on_separator ( msg : (string * string) list) =
    let rec cut accu = function
    | [] -> List.rev accu 
    | (separator,v)::tl -> 
        let current, rest = split_on_tag separator tl in
        let current = (separator,v)::current in
        cut (current::accu) rest
    in
    cut [] msg
;;

(** The Parser module collects an API of parser-combinators for parsing FIX
    messages into OCaml types. Each combinator takes a continuation function 
    that returns a ( 'a Parser.t * msg ) type  
 *)
module Parser = struct 

    (** Type alias for a FIX message -- we assyme it is a list of string parirs *)
    type msg = (string * string) list

    (***)
    type 'a t =
        | ParseSuccess             of 'a
        | UnknownMessageTag        of string 
        | RequiredTagMissing       of string 
        | DuplicateTag             of string 
        | WrongValueFormat         of string
        | UndefinedTag             of string
        | EmptyValue               of string
        | IncorrectNumInGroupCount of string
        | RepeatingGroupOutOfOrder of string
        | GarbledMessage
    (** A standard monadic bind operator for the Parser.t type *)
    let ( >>= ) x f = match x with
        | ParseSuccess             x -> f x   
        | UnknownMessageTag        x -> UnknownMessageTag        x
        | RequiredTagMissing       x -> RequiredTagMissing       x
        | DuplicateTag             x -> DuplicateTag             x
        | WrongValueFormat         x -> WrongValueFormat         x
        | UndefinedTag             x -> UndefinedTag             x
        | EmptyValue               x -> EmptyValue               x
        | IncorrectNumInGroupCount x -> IncorrectNumInGroupCount x
        | RepeatingGroupOutOfOrder x -> RepeatingGroupOutOfOrder x
        | GarbledMessage             -> GarbledMessage

    (** The modified bind operator that applies a function that returns ('a Parser.t , msg ) pair *)
    let ( >|>= ) x f = match x with
        | ParseSuccess             x -> f x   
        | UnknownMessageTag        x -> UnknownMessageTag        x , []
        | RequiredTagMissing       x -> RequiredTagMissing       x , []
        | DuplicateTag             x -> DuplicateTag             x , []
        | WrongValueFormat         x -> WrongValueFormat         x , []
        | UndefinedTag             x -> UndefinedTag             x , []
        | EmptyValue               x -> EmptyValue               x , []
        | IncorrectNumInGroupCount x -> IncorrectNumInGroupCount x , []
        | RepeatingGroupOutOfOrder x -> RepeatingGroupOutOfOrder x , []
        | GarbledMessage             -> GarbledMessage , []

    (** A "collect" function that convers 'a t list -> 'a list t 
        Note: Tail-recursive, but reverses the list.
    *)
    let rev_collect (lst: 'a t list) : 'a list t =
        let rec flatten acc = function
        | ParseSuccess x :: tl -> flatten (x::acc) tl
        | UnknownMessageTag        x :: tl -> UnknownMessageTag  x
        | RequiredTagMissing       x :: tl -> RequiredTagMissing x
        | DuplicateTag             x :: tl -> DuplicateTag       x
        | WrongValueFormat         x :: tl -> WrongValueFormat   x
        | UndefinedTag             x :: tl -> UndefinedTag       x
        | EmptyValue               x :: tl -> EmptyValue         x
        | IncorrectNumInGroupCount x :: tl -> IncorrectNumInGroupCount x
        | RepeatingGroupOutOfOrder x :: tl -> RepeatingGroupOutOfOrder x
        | GarbledMessage             :: tl -> GarbledMessage
        | [] -> ParseSuccess acc in
        flatten [] lst

    (** Parser combinators. *)

    (** Each combinator takes the current message as the first argument and the
        continuation function as the last argument. 
    
        A typical message parser would look like this.
        
        let parse_message msg = (
            repeating msg "1" parse_rg @@ fun msg group ->
            check_duplicate_tags msg   @@ fun () ->
            block     msg parse_blk    @@ fun msg block ->
            req msg "2" parse_int      @@ fun msg x -> 
            opt msg "3" parse_string   @@ fun msg y -> 
            req msg "4" parse_int      @@ fun msg z -> 
            ParseSuccess { block; group; x; y; z }, msg 
            ) |> check_unknown_tags 
    *)

    (** Optional field combinator, passes None into continuation if the tag is not present *)
    let opt msg tag parser f =
        let value, msg = take tag msg in
        match value with
        | None -> f msg None
        | Some "" -> EmptyValue tag, []
        | Some value -> try 
            match parser value with 
            | None   -> WrongValueFormat tag, []
            | Some t -> f msg (Some t)
        with _ -> WrongValueFormat tag, []

    (** Required field combinator, returns RequiredTagMissing if the tag is not present *)
    let req msg tag parser f =
        let value, msg = take tag msg in
        match value with
        | None ->  RequiredTagMissing tag, []
        | Some "" -> EmptyValue tag, []
        | Some value -> try 
            match parser value with 
            | None   -> WrongValueFormat tag , []
            | Some t -> f msg t
        with _ -> WrongValueFormat tag, []

    (** Block parser combinator parsers a record and passes it into the continuation *)
    let block ( msg : msg ) 
              ( block_parser : msg -> 'a t * msg )
              ( f : msg -> 'a -> 'b t * msg) =
        let value, msg = block_parser msg in
        value >|>= f msg 

    (** Repeating group parser combinator, starting from the tag that encodes
        the length of the list, identifies the subgroups and passes each of them
        into the block parser. Performs a number of consistency checks on the parsed
        results. 
    *)
    let repeating ( msg : msg ) 
                  ( tag : string )
                  ( block_parser : msg ->  'a t * msg  )
                  ( f : msg -> 'a list -> 'b t * msg ) =
        (* Finding where the repeating group starts *)
        let leading_msg, groups_msg = split_on_tag tag msg in
        (* groups_msg starts with the NumInGroup tag, we parse it *)
        opt groups_msg tag Parse_base_types.parse_int @@ fun groups_msg numInGroup ->
        match numInGroup with 
        | None -> ( ParseSuccess [] >|>= f msg )
        | Some numInGroup ->
        (* Break the list into a list of lists using the separator *)
        let groups = cut_on_separator groups_msg in
        (* Check that the length is correct *)
        if List.length groups != numInGroup then IncorrectNumInGroupCount tag >|>= f [] else
        (* Pass each list into the block parser ( reverses the list ) *)
        let groups : ('a t * (string * string) list) list = groups |> List.rev_map block_parser in
        (* Get the rest of the message from the last group entry *)
        let groups, msg = match groups with 
            | [] -> [], [] | (v, following_msg)::tl -> ( (v,[])::tl, leading_msg @ following_msg ) in
        (* Check that every group have parsed cleanly *)
        let groups = groups |> List.map 
            ( function (v, []) -> v | ( _ , (k , _ )::tl ) -> RepeatingGroupOutOfOrder k ) in
        (* "Monadic flatten" the list and pass into the continuation with the rest of the message *)
        rev_collect groups >|>= f msg 

    (** Checks for duplicate tags in messages -- should be called after all the repeating groups are porcessed *)
    let check_duplicate_tags ( msg : msg )  
                             ( f : unit -> 'a t * msg ) =
        let rec scan = function 
        | h::tl -> 
            if List.mem h tl 
            then DuplicateTag h , [] 
            else scan tl
        | [] -> f () in
        msg |> List.map fst |> scan

    (** This finalizes the message -- if there are any unplrocessed tag=value pairs left -- we return an error *)
    let check_unknown_tags (result , msg) =
        match result with 
        | ParseSuccess _ -> 
            ( match msg with 
            | [] -> result 
            | (tag,v)::tl -> UndefinedTag tag )
        | _ -> result
end

