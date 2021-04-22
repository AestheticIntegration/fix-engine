open Full_messages_decoder
open Full_messages_json
open Test_cache_utils
module D = Decoders_yojson.Basic.Decode;;


let () =
  let orig = make_fix_msg (Z.of_int 1)  in
  let json = full_valid_msg_to_json orig |> Yojson.Basic.to_string in
  D.decode_string full_valid_msg_decoder json |>
  function
  | Ok rt ->
    if rt = orig
    then failwith "Roundtrip successful"
    else failwith "Roundtrip failed"
  | Error r ->
    failwith (D.pp_error Format.std_formatter r; failwith "decoding of full message failed")
;;
