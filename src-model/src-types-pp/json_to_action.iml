(* Aesthetic Integration copyright 2018 *)
open Actions ;;
module J  = Yojson.Basic;;
module JU = Yojson.Basic.Util ;;

let jreq json key parser f =
  let v = JU.member key json in
  if v == `Null then None else 
  match parser v with
  | Some v -> f v  
  | None -> None
;;

let jopt json key parser f =
  let v = JU.member key json in
  if v == `Null then f None else 
  match parser v with
  | Some v -> f (Some v)  
  | None -> f None
;;

let json_to_mod_act_fix_x_option json =
  jreq json "x" JU.to_int_option  @@ fun mod_f_x_x ->
  Some
  { mod_f_x_x
  }
;;

let json_to_fix_action json =
  let module JU = Yojson.Basic.Util in 
  let data =  JU.member "data" json in
  if data == `Null then None else
  match JU.member "tag" json |> JU.to_string_option with
  | Some "x" -> begin
    match json_to_mod_act_fix_x_option data with 
    | Some data -> Some ( FIX_Action_x data )
    | None -> None  
  end
  | _ -> None 
;; 
