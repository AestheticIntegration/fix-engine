(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
 open Imandra_utils;;
 open Model_tags;;
(* @meta[imandra_ignore] off @end *)

exception Ipl_rg_exception 
type rg_reject_type =
    | RG_Failure of m_field_tag
    | RG_Success 
;;

let rec cap_length ( d , x , h ) =
    (match d with
        | [] -> (min (x,h))
        | _ :: t -> (cap_length (t,x+1,h))
    )
;;
