(* Aesthetic Integration copyright 2018 *)
open Model_enum_names;;
open Yojson;;

let mod_ordstatus_to_json (d)  : json =
    `String (mod_ordstatus_to_string d)
;;

let mod_ordtype_to_json (d)  : json =
    `String (mod_ordtype_to_string d)
;;

let mod_exectype_to_json (d)  : json =
    `String (mod_exectype_to_string d)
;;

let mod_side_to_json (d)  : json =
    `String (mod_side_to_string d)
;;

let mod_ordstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mod_ordstatus_to_json d)
    )
;;

let mod_ordtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mod_ordtype_to_json d)
    )
;;

let mod_exectype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mod_exectype_to_json d)
    )
;;

let mod_side_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mod_side_to_json d)
    )
;;
