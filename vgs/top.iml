(**

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    Implementation of the FIX 4.4 protocol.

    Toplevel model load file for Imandra.
*)

#validate false;;

let src = 
  [ "src-core/datetime.ml"
  ; "src-core/numeric.ml"
  ; "src-protocol/full_admin_tags.ml"
  ; "src-protocol-exts-vg/full_app_tags.ml"
  ; "src-protocol/full_message_tags.ml"
  ; "src-protocol/full_admin_enums.ml"
  ; "src-protocol/full_admin_messages.ml"
  ; "src-protocol-exts-vg/full_app_enums.ml"
  ; "src-protocol-exts-vg/full_app_records.ml"
  ; "src-protocol-exts-vg/full_app_messages.ml"
  ; "src-protocol/full_messages.ml"
  ; "src/fix_engine_state.ml"
  ; "src/fix_engine_utils.ml"
  ; "src/fix_engine_transitions.ml"
  ; "src/fix_engine.ml"
  ] in
Caml.List.iter System.mod_use src
;;

