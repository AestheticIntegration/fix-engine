(* Aesthetic Integration copyright 2018 *)
open Model_tags;;

exception Ipl_rg_exception 
type rg_reject_type =
    | RG_Failure of m_field_tag
    | RG_Success 
;;

let rec cap_length (d) (x) (h)  =
    (match d with
        | [] -> (min x h)
        | _ :: t -> (cap_length t ((+) x 1) h)
    )
;;
