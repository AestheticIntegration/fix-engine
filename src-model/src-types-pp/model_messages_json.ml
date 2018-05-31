(* Aesthetic Integration copyright 2018 *)
open Base_types_json;;
open Datetime_json;;
open Json_generator_utils;;
open Model_enums_json;;
open Model_messages;;
open Model_repeating_groups_json;;
open Yojson;;

let mod_ordersingle_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_to_json x.mod_f_OrderSingle_ClOrdID) :: (("Symbol",string_to_json x.mod_f_OrderSingle_Symbol) :: (("Side",mod_side_to_json x.mod_f_OrderSingle_Side) :: (("OrdType",mod_ordtype_to_json x.mod_f_OrderSingle_OrdType) :: (("TimeInForce",mod_timeinforce_opt_to_json x.mod_f_OrderSingle_TimeInForce) :: (("ExecInst",mod_execinst_opt_to_json x.mod_f_OrderSingle_ExecInst) :: (("Price",float_4_opt_to_json x.mod_f_OrderSingle_Price) :: (("OrderQty",float_6_to_json x.mod_f_OrderSingle_OrderQty) :: (("BookIndicator",mod_bookindicator_opt_to_json x.mod_f_OrderSingle_BookIndicator) :: (("MinQty",float_6_opt_to_json x.mod_f_OrderSingle_MinQty) :: (("PegDifference",float_6_opt_to_json x.mod_f_OrderSingle_PegDifference) :: (("TransactTime",utctimestamp_to_json x.mod_f_OrderSingle_TransactTime) :: (("Currency",mod_currency_opt_to_json x.mod_f_OrderSingle_Currency) :: (("HandlInst",mod_handlinst_to_json x.mod_f_OrderSingle_HandlInst) :: (("TechnicalOrdType",mod_technicalordtype_to_json x.mod_f_OrderSingle_TechnicalOrdType) :: (("MIC",string_to_json x.mod_f_OrderSingle_MIC) :: (("BrokerPrioritization",mod_brokerprioritization_to_json x.mod_f_OrderSingle_BrokerPrioritization) :: (("DEAIndicator",int_to_json x.mod_f_OrderSingle_DEAIndicator) :: (("Parties",mod_parties_to_json x.mod_f_OrderSingle_Parties) :: (("ClearingEntries",mod_clearingentries_to_json x.mod_f_OrderSingle_ClearingEntries) :: (("OrderAttributeTypes",mod_orderattributetypes_opt_to_json x.mod_f_OrderSingle_OrderAttributeTypes) :: [])))))))))))))))))))))
;;

let mod_ordercancelreplacerequest_to_json (x)  : json =
    assoc_filter_nulls (("OrderID",string_opt_to_json x.mod_f_OrderCancelReplaceRequest_OrderID) :: (("ClOrdID",string_to_json x.mod_f_OrderCancelReplaceRequest_ClOrdID) :: (("OrigClOrdID",string_to_json x.mod_f_OrderCancelReplaceRequest_OrigClOrdID) :: (("Symbol",string_to_json x.mod_f_OrderCancelReplaceRequest_Symbol) :: (("Side",mod_side_to_json x.mod_f_OrderCancelReplaceRequest_Side) :: (("OrdType",mod_ordtype_to_json x.mod_f_OrderCancelReplaceRequest_OrdType) :: (("TimeInForce",mod_timeinforce_opt_to_json x.mod_f_OrderCancelReplaceRequest_TimeInForce) :: (("ExecInst",mod_execinst_opt_to_json x.mod_f_OrderCancelReplaceRequest_ExecInst) :: (("Price",float_4_opt_to_json x.mod_f_OrderCancelReplaceRequest_Price) :: (("OrderQty",float_6_to_json x.mod_f_OrderCancelReplaceRequest_OrderQty) :: (("PegDifference",float_6_opt_to_json x.mod_f_OrderCancelReplaceRequest_PegDifference) :: (("TechnicalOrdType",mod_technicalordtype_opt_to_json x.mod_f_OrderCancelReplaceRequest_TechnicalOrdType) :: (("Rule80A",mod_rule80a_to_json x.mod_f_OrderCancelReplaceRequest_Rule80A) :: (("Account",string_opt_to_json x.mod_f_OrderCancelReplaceRequest_Account) :: (("ClientID",string_opt_to_json x.mod_f_OrderCancelReplaceRequest_ClientID) :: (("FreeText",string_opt_to_json x.mod_f_OrderCancelReplaceRequest_FreeText) :: (("ClearingFirm",string_opt_to_json x.mod_f_OrderCancelReplaceRequest_ClearingFirm) :: (("OpenClose",mod_openclose_opt_to_json x.mod_f_OrderCancelReplaceRequest_OpenClose) :: (("ClearingHandlingType",mod_clearinghandlingtype_opt_to_json x.mod_f_OrderCancelReplaceRequest_ClearingHandlingType) :: (("MIC",string_opt_to_json x.mod_f_OrderCancelReplaceRequest_MIC) :: (("Currency",mod_currency_opt_to_json x.mod_f_OrderCancelReplaceRequest_Currency) :: [])))))))))))))))))))))
;;

let mod_ordercancelrequest_to_json (x)  : json =
    assoc_filter_nulls (("OrderID",string_opt_to_json x.mod_f_OrderCancelRequest_OrderID) :: (("ClOrdID",string_to_json x.mod_f_OrderCancelRequest_ClOrdID) :: (("OrigClOrdID",string_to_json x.mod_f_OrderCancelRequest_OrigClOrdID) :: (("Symbol",string_to_json x.mod_f_OrderCancelRequest_Symbol) :: (("OrderQty",float_6_opt_to_json x.mod_f_OrderCancelRequest_OrderQty) :: (("TransactTime",utctimestamp_opt_to_json x.mod_f_OrderCancelRequest_TransactTime) :: (("MIC",string_opt_to_json x.mod_f_OrderCancelRequest_MIC) :: (("Currency",mod_currency_opt_to_json x.mod_f_OrderCancelRequest_Currency) :: []))))))))
;;

let mod_ordermasscancelrequest_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_opt_to_json x.mod_f_OrderMassCancelRequest_ClOrdID) :: (("Symbol",string_opt_to_json x.mod_f_OrderMassCancelRequest_Symbol) :: (("ClassID",string_opt_to_json x.mod_f_OrderMassCancelRequest_ClassID) :: (("MassCancelRequestType",mod_masscancelrequesttype_opt_to_json x.mod_f_OrderMassCancelRequest_MassCancelRequestType) :: (("Side",mod_side_opt_to_json x.mod_f_OrderMassCancelRequest_Side) :: (("TechnicalOrdType",mod_technicalordtype_opt_to_json x.mod_f_OrderMassCancelRequest_TechnicalOrdType) :: (("Rule80A",mod_rule80a_opt_to_json x.mod_f_OrderMassCancelRequest_Rule80A) :: (("Account",string_opt_to_json x.mod_f_OrderMassCancelRequest_Account) :: (("CancelByLocationID",string_opt_to_json x.mod_f_OrderMassCancelRequest_CancelByLocationID) :: (("TransactTime",utctimestamp_opt_to_json x.mod_f_OrderMassCancelRequest_TransactTime) :: []))))))))))
;;

let mod_executionreport_to_json (x)  : json =
    assoc_filter_nulls (("OrderID",string_opt_to_json x.mod_f_ExecutionReport_OrderID) :: (("Symbol",string_opt_to_json x.mod_f_ExecutionReport_Symbol) :: (("ExecID",string_to_json x.mod_f_ExecutionReport_ExecID) :: (("ExecTransType",mod_exectranstype_to_json x.mod_f_ExecutionReport_ExecTransType) :: (("OrdStatus",mod_ordstatus_to_json x.mod_f_ExecutionReport_OrdStatus) :: (("ExecType",mod_exectype_to_json x.mod_f_ExecutionReport_ExecType) :: (("AvgPx",float_4_to_json x.mod_f_ExecutionReport_AvgPx) :: (("Side",mod_side_to_json x.mod_f_ExecutionReport_Side) :: (("LeavesQty",float_6_to_json x.mod_f_ExecutionReport_LeavesQty) :: (("CumQty",float_6_to_json x.mod_f_ExecutionReport_CumQty) :: (("Text",string_to_json x.mod_f_ExecutionReport_Text) :: (("FreeText",string_opt_to_json x.mod_f_ExecutionReport_FreeText) :: (("ClearingHandlingType",mod_clearinghandlingtype_opt_to_json x.mod_f_ExecutionReport_ClearingHandlingType) :: (("UTPExID",int_opt_to_json x.mod_f_ExecutionReport_UTPExID) :: (("LiquidityIndicator",mod_liquidityindicator_opt_to_json x.mod_f_ExecutionReport_LiquidityIndicator) :: (("ErrorCode",int_opt_to_json x.mod_f_ExecutionReport_ErrorCode) :: (("MIC",string_opt_to_json x.mod_f_ExecutionReport_MIC) :: (("BookIndicator",mod_bookindicator_opt_to_json x.mod_f_ExecutionReport_BookIndicator) :: (("BrokerPrioritization",mod_brokerprioritization_opt_to_json x.mod_f_ExecutionReport_BrokerPrioritization) :: (("DEAIndicator",int_opt_to_json x.mod_f_ExecutionReport_DEAIndicator) :: (("OrderAttributeTypes",mod_orderattributetypes_opt_to_json x.mod_f_ExecutionReport_OrderAttributeTypes) :: (("ClOrdID",string_opt_to_json x.mod_f_ExecutionReport_ClOrdID) :: (("OrigClOrdID",string_opt_to_json x.mod_f_ExecutionReport_OrigClOrdID) :: (("TransactTime",utctimestamp_opt_to_json x.mod_f_ExecutionReport_TransactTime) :: (("OrdRejReason",mod_ordrejreason_opt_to_json x.mod_f_ExecutionReport_OrdRejReason) :: (("ExecRefID",string_opt_to_json x.mod_f_ExecutionReport_ExecRefID) :: (("LastPx",float_4_opt_to_json x.mod_f_ExecutionReport_LastPx) :: (("LastShares",float_6_opt_to_json x.mod_f_ExecutionReport_LastShares) :: (("OrdType",mod_ordtype_opt_to_json x.mod_f_ExecutionReport_OrdType) :: (("TimeInForce",mod_timeinforce_opt_to_json x.mod_f_ExecutionReport_TimeInForce) :: (("ExecInst",mod_execinst_opt_to_json x.mod_f_ExecutionReport_ExecInst) :: (("Price",float_4_opt_to_json x.mod_f_ExecutionReport_Price) :: (("OrderQty",float_6_opt_to_json x.mod_f_ExecutionReport_OrderQty) :: (("PegDifference",float_6_opt_to_json x.mod_f_ExecutionReport_PegDifference) :: (("Account",string_opt_to_json x.mod_f_ExecutionReport_Account) :: (("ClientID",string_opt_to_json x.mod_f_ExecutionReport_ClientID) :: (("ClearingFirm",string_opt_to_json x.mod_f_ExecutionReport_ClearingFirm) :: (("OpenClose",mod_openclose_opt_to_json x.mod_f_ExecutionReport_OpenClose) :: (("Currency",mod_currency_opt_to_json x.mod_f_ExecutionReport_Currency) :: (("TechnicalOrdType",mod_technicalordtype_opt_to_json x.mod_f_ExecutionReport_TechnicalOrdType) :: (("CrossType",mod_crosstype_opt_to_json x.mod_f_ExecutionReport_CrossType) :: (("IMPTimestamp",utctimeonly_opt_to_json x.mod_f_ExecutionReport_IMPTimestamp) :: (("Parties",mod_parties_to_json x.mod_f_ExecutionReport_Parties) :: (("ContraGrp",mod_contragrp_to_json x.mod_f_ExecutionReport_ContraGrp) :: []))))))))))))))))))))))))))))))))))))))))))))
;;

let mod_ordercancelreject_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_opt_to_json x.mod_f_OrderCancelReject_ClOrdID) :: (("OrigClOrdID",string_opt_to_json x.mod_f_OrderCancelReject_OrigClOrdID) :: (("OrderID",string_opt_to_json x.mod_f_OrderCancelReject_OrderID) :: (("Symbol",string_to_json x.mod_f_OrderCancelReject_Symbol) :: (("ExecInst",mod_execinst_opt_to_json x.mod_f_OrderCancelReject_ExecInst) :: (("OrdStatus",mod_ordstatus_to_json x.mod_f_OrderCancelReject_OrdStatus) :: (("ErrorCode",int_to_json x.mod_f_OrderCancelReject_ErrorCode) :: (("Text",string_to_json x.mod_f_OrderCancelReject_Text) :: (("CxlRejReason",mod_cxlrejreason_to_json x.mod_f_OrderCancelReject_CxlRejReason) :: (("CxlRejResponseTo",mod_cxlrejresponseto_to_json x.mod_f_OrderCancelReject_CxlRejResponseTo) :: []))))))))))
;;

let mod_ordermasscancelreport_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_opt_to_json x.mod_f_OrderMassCancelReport_ClOrdID) :: (("Symbol",string_opt_to_json x.mod_f_OrderMassCancelReport_Symbol) :: (("ClassID",string_opt_to_json x.mod_f_OrderMassCancelReport_ClassID) :: (("MassCancelRequestType",mod_masscancelrequesttype_to_json x.mod_f_OrderMassCancelReport_MassCancelRequestType) :: (("Side",mod_side_opt_to_json x.mod_f_OrderMassCancelReport_Side) :: (("TechnicalOrdType",mod_technicalordtype_opt_to_json x.mod_f_OrderMassCancelReport_TechnicalOrdType) :: (("Rule80A",mod_rule80a_opt_to_json x.mod_f_OrderMassCancelReport_Rule80A) :: (("Account",string_opt_to_json x.mod_f_OrderMassCancelReport_Account) :: (("CancelByLocationID",string_opt_to_json x.mod_f_OrderMassCancelReport_CancelByLocationID) :: (("TotalAffectedOrders",int_to_json x.mod_f_OrderMassCancelReport_TotalAffectedOrders) :: (("TransactTime",utctimestamp_opt_to_json x.mod_f_OrderMassCancelReport_TransactTime) :: (("MIC",string_opt_to_json x.mod_f_OrderMassCancelReport_MIC) :: []))))))))))))
;;

let json_of_model_msg (x)  : json =
    (match x with
        | FIX_Msg_OrderSingle x -> (`Assoc (("tag",`String "D") :: (("data",mod_ordersingle_to_json x) :: [])))
        | FIX_Msg_OrderCancelReplaceRequest x -> (`Assoc (("tag",`String "G") :: (("data",mod_ordercancelreplacerequest_to_json x) :: [])))
        | FIX_Msg_OrderCancelRequest x -> (`Assoc (("tag",`String "F") :: (("data",mod_ordercancelrequest_to_json x) :: [])))
        | FIX_Msg_OrderMassCancelRequest x -> (`Assoc (("tag",`String "q") :: (("data",mod_ordermasscancelrequest_to_json x) :: [])))
        | FIX_Msg_ExecutionReport x -> (`Assoc (("tag",`String "8") :: (("data",mod_executionreport_to_json x) :: [])))
        | FIX_Msg_OrderCancelReject x -> (`Assoc (("tag",`String "9") :: (("data",mod_ordercancelreject_to_json x) :: [])))
        | FIX_Msg_OrderMassCancelReport x -> (`Assoc (("tag",`String "r") :: (("data",mod_ordermasscancelreport_to_json x) :: [])))
    )
;;
