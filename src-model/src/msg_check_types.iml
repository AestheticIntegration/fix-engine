(* Aesthetic Integration copyright 2018 *)

type field_state = {
    is_invalid : bool;
    field_text : string
}
;;

let fields_are_good = {
    is_invalid = false;
    field_text = ""
};;

let field_invalid (text : string)  =
    {
        is_invalid = true;
        field_text = text
    }
;;

type validate_reject = {
    validate_invalid : bool;
    validate_text : string
}
;;

let no_invalid_validates = {
    validate_invalid = false;
    validate_text = ""
};;

let make_cond (cond_result : bool) (text : string)  =
    {
        validate_invalid = not cond_result;
        validate_text = text
    }
;;
