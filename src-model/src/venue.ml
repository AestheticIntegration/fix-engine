(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
 open Model_messages;;
 open Msg_process;;
 open State;;
(* @meta[imandra_ignore] off @end *)

let one_step ( m_state : model_state ) =
    (match m_state.incoming_msg with
        | FIX_TL_None -> m_state
        | msg -> let s' = process_msg (m_state,msg) in
        { s' with
            incoming_msg = FIX_TL_None
        }
    )
;;
