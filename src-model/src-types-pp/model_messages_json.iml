(* Aesthetic Integration copyright 2018 *)
open Base_types_json;;
open Json_generator_utils;;
open Model_enums_json;;
open Model_messages;;
open Yojson;;
open TimeDefaults_json;;

let mod_executionreport_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_to_json x.mod_f_ExecutionReport_ClOrdID) :: (("OrderID",string_to_json x.mod_f_ExecutionReport_OrderID) :: (("ExecID",string_to_json x.mod_f_ExecutionReport_ExecID) :: (("ExecType",mod_exectype_to_json x.mod_f_ExecutionReport_ExecType) :: (("AvgPx",float_6_to_json x.mod_f_ExecutionReport_AvgPx) :: (("Side",mod_side_to_json x.mod_f_ExecutionReport_Side) :: (("LeavesQty",float_6_to_json x.mod_f_ExecutionReport_LeavesQty) :: (("CumQty",float_6_to_json x.mod_f_ExecutionReport_CumQty) :: (("OrdStatus",mod_ordstatus_to_json x.mod_f_ExecutionReport_OrdStatus) :: (("Instrument.Symbol",string_to_json x.mod_f_ExecutionReport_Instrument_Symbol) :: (("Text",string_opt_to_json x.mod_f_ExecutionReport_Text) :: [])))))))))))
;;

let mod_newordersingle_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_to_json x.mod_f_NewOrderSingle_ClOrdID) :: (("Side",mod_side_to_json x.mod_f_NewOrderSingle_Side) :: (("TransactTime",utctimestamp_to_json x.mod_f_NewOrderSingle_TransactTime) :: (("OrdType",mod_ordtype_to_json x.mod_f_NewOrderSingle_OrdType) :: (("Instrument.Symbol",string_to_json x.mod_f_NewOrderSingle_Instrument_Symbol) :: [])))))
;;

let json_of_model_msg (x)  : json =
    (match x with
        | FIX_Msg_ExecutionReport x -> (`Assoc (("tag",`String "8") :: (("data",mod_executionreport_to_json x) :: [])))
        | FIX_Msg_NewOrderSingle x -> (`Assoc (("tag",`String "D") :: (("data",mod_newordersingle_to_json x) :: [])))
    )
;;
