(** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    VGs covering behaviour of Heartbeat message ( Vol 2, page 25 ).

    logout_vgs.ml

*)


(** **************************************************************************************** *)
(**

    Logout VG.1

    "Disconnection without the exchange of logout messages should be interpreted as an abnormal
     condition."

     Notes: See Heartbeat VG.3 where we prove behaviour of the engine when no Heartbeat message
     is received after considerable time. 'ConnTerminatedWithoutLogoff' status is used for the 
     engine state.

*)
(** **************************************************************************************** *)


(** **************************************************************************************** *)
(**

    Logout VG.2

    "Before actually closing the session, the logout initiator should wait for the opposite side 
    to respond with a confirming logout message. This gives the remote end a chance to perform 
    any Gap Fill operations that may be necessary. The session may be terminated if the remote 
    side does not respond in an appropriate timeframe."

    Notes: 'any Gap Fill operations that may be necessary' we interpret as 

*)
(** **************************************************************************************** *)



(** **************************************************************************************** *)
(**

    Logout VG.3

    "After sending the Logout message, the logout initiator should not send any messages unless 
    requested to do so by the logout acceptor via a ResendRequest."

    Notes: When we've initiated a Logout, we should only be accepting ResendRequest and Logout
    messages, everything else should be ignored.

*)
(** **************************************************************************************** *)


(** VG.3.1*)
verify transitions_to_logoff_correctly ( engine : fix_engine ) = 
    true
;;

(** VG.3.2 *)
verify cannot_send_messages_when_logoff ( engine : fix_engine ) = 
    true
;;

(** VG.3.3 *)
verify gap ( engine : fix_engine ) =
    true
;;

(** VG.3.4 *)
verify after_gap_refill_logoff ( engine : fix_engine ) = 
    true
;;