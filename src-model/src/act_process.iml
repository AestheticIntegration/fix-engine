(* Aesthetic Integration copyright 2018 *)
open Act_checks;;
open Actions;;
open State;;

let receive_action_x (m_state : model_state) (_action_data : m_action_fix_x)  =
    m_state
;;

let receive_action (m_state : model_state) (action : fix_action)  =
    if (is_action_valid action m_state) then
        ((match action with
            | FIX_Action_x d -> (receive_action_x m_state d)
        )
        )
    else
        m_state
;;
