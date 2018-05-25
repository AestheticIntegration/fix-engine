(* Aesthetic Integration copyright 2018 *)
open String_assoc_common;;

module StringAssoc = struct

  type t = (string, string) Hashtbl.t

  exception No_match of string

  let h = ref (None : t option)

  
  let init_tbl () =
    let h' = (Hashtbl.create (List.length string_pairs) : t) in
    let () = List.iter (fun (k,v) -> (Hashtbl.add h') k v) 
    string_pairs in
    h := Some h'

  let rec get s =
    match !h with
      None   -> init_tbl ();
                get s
    | Some h ->
       try
         Hashtbl.find h s
       with Not_found -> raise (No_match s)

end;;
