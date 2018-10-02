(* Aesthetic Integration copyright 2018 *)
open Act_process;;
open Model_messages;;
open Msg_process;;
open State;;

let one_step (m_state : model_state)  =
    (match m_state.incoming_action with
        | Some act -> let s' = receive_action m_state act in
        { s' with
            incoming_action = None
        }
        | None -> ((match m_state.incoming_msg with
            | FIX_TL_None -> m_state
            | msg -> let s' = process_msg m_state msg in
            { s' with
                incoming_msg = FIX_TL_None
            }
        )
        )
    )
;;