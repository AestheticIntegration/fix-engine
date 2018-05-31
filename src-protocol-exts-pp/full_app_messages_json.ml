(* Aesthetic Integration copyright 2018 *)
open Base_types_json;;
open Datetime_json;;
open Full_app_enums_json;;
open Full_app_messages;;
open Full_app_records_json;;
open Json_generator_utils;;
open Yojson;;

let ordersingle_to_json (x)  : json =
    assoc_filter_nulls (("ClOrdID",string_opt_to_json x.f_OrderSingle_ClOrdID) :: (("ClientID",string_opt_to_json x.f_OrderSingle_ClientID) :: (("ExecBroker",string_opt_to_json x.f_OrderSingle_ExecBroker) :: (("Account",string_opt_to_json x.f_OrderSingle_Account) :: (("SettlmntTyp",settlmnttyp_opt_to_json x.f_OrderSingle_SettlmntTyp) :: (("FutSettDate",localmktdate_opt_to_json x.f_OrderSingle_FutSettDate) :: (("HandlInst",handlinst_opt_to_json x.f_OrderSingle_HandlInst) :: (("ExecInst",execinst_opt_to_json x.f_OrderSingle_ExecInst) :: (("MinQty",float_6_opt_to_json x.f_OrderSingle_MinQty) :: (("MaxFloor",float_6_opt_to_json x.f_OrderSingle_MaxFloor) :: (("ExDestination",exchange_opt_to_json x.f_OrderSingle_ExDestination) :: (("ProcessCode",processcode_opt_to_json x.f_OrderSingle_ProcessCode) :: (("Symbol",string_opt_to_json x.f_OrderSingle_Symbol) :: (("SymbolSfx",string_opt_to_json x.f_OrderSingle_SymbolSfx) :: (("SecurityID",string_opt_to_json x.f_OrderSingle_SecurityID) :: (("IDSource",idsource_opt_to_json x.f_OrderSingle_IDSource) :: (("SecurityType",securitytype_opt_to_json x.f_OrderSingle_SecurityType) :: (("MaturityMonthYear",monthyear_opt_to_json x.f_OrderSingle_MaturityMonthYear) :: (("MaturityDay",int_opt_to_json x.f_OrderSingle_MaturityDay) :: (("PutOrCall",putorcall_opt_to_json x.f_OrderSingle_PutOrCall) :: (("StrikePrice",float_4_opt_to_json x.f_OrderSingle_StrikePrice) :: (("OptAttribute",char_opt_to_json x.f_OrderSingle_OptAttribute) :: (("ContractMultiplier",float_opt_to_json x.f_OrderSingle_ContractMultiplier) :: (("CouponRate",float_opt_to_json x.f_OrderSingle_CouponRate) :: (("SecurityExchange",exchange_opt_to_json x.f_OrderSingle_SecurityExchange) :: (("Issuer",string_opt_to_json x.f_OrderSingle_Issuer) :: (("EncodedIssuerLen",int_opt_to_json x.f_OrderSingle_EncodedIssuerLen) :: (("EncodedIssuer",string_opt_to_json x.f_OrderSingle_EncodedIssuer) :: (("SecurityDesc",string_opt_to_json x.f_OrderSingle_SecurityDesc) :: (("EncodedSecurityDescLen",int_opt_to_json x.f_OrderSingle_EncodedSecurityDescLen) :: (("EncodedSecurityDesc",string_opt_to_json x.f_OrderSingle_EncodedSecurityDesc) :: (("PrevClosePx",float_4_opt_to_json x.f_OrderSingle_PrevClosePx) :: (("Side",side_opt_to_json x.f_OrderSingle_Side) :: (("LocateReqd",locatereqd_opt_to_json x.f_OrderSingle_LocateReqd) :: (("TransactTime",utctimestamp_opt_to_json x.f_OrderSingle_TransactTime) :: (("OrderQty",float_6_opt_to_json x.f_OrderSingle_OrderQty) :: (("CashOrderQty",float_6_opt_to_json x.f_OrderSingle_CashOrderQty) :: (("OrdType",ordtype_opt_to_json x.f_OrderSingle_OrdType) :: (("Price",float_4_opt_to_json x.f_OrderSingle_Price) :: (("StopPx",float_4_opt_to_json x.f_OrderSingle_StopPx) :: (("Currency",currency_opt_to_json x.f_OrderSingle_Currency) :: (("ComplianceID",string_opt_to_json x.f_OrderSingle_ComplianceID) :: (("SolicitedFlag",solicitedflag_opt_to_json x.f_OrderSingle_SolicitedFlag) :: (("IOIid",string_opt_to_json x.f_OrderSingle_IOIid) :: (("QuoteID",string_opt_to_json x.f_OrderSingle_QuoteID) :: (("TimeInForce",timeinforce_opt_to_json x.f_OrderSingle_TimeInForce) :: (("EffectiveTime",utctimestamp_opt_to_json x.f_OrderSingle_EffectiveTime) :: (("ExpireDate",localmktdate_opt_to_json x.f_OrderSingle_ExpireDate) :: (("ExpireTime",utctimestamp_opt_to_json x.f_OrderSingle_ExpireTime) :: (("GTBookingInst",gtbookinginst_opt_to_json x.f_OrderSingle_GTBookingInst) :: (("Commission",float_6_opt_to_json x.f_OrderSingle_Commission) :: (("CommType",commtype_opt_to_json x.f_OrderSingle_CommType) :: (("Rule80A",rule80a_opt_to_json x.f_OrderSingle_Rule80A) :: (("ForexReq",forexreq_opt_to_json x.f_OrderSingle_ForexReq) :: (("SettlCurrency",currency_opt_to_json x.f_OrderSingle_SettlCurrency) :: (("Text",string_opt_to_json x.f_OrderSingle_Text) :: (("EncodedTextLen",int_opt_to_json x.f_OrderSingle_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_OrderSingle_EncodedText) :: (("FutSettDate2",localmktdate_opt_to_json x.f_OrderSingle_FutSettDate2) :: (("OrderQty2",float_6_opt_to_json x.f_OrderSingle_OrderQty2) :: (("OpenClose",openclose_opt_to_json x.f_OrderSingle_OpenClose) :: (("CoveredOrUncovered",coveredoruncovered_opt_to_json x.f_OrderSingle_CoveredOrUncovered) :: (("CustomerOrFirm",customerorfirm_opt_to_json x.f_OrderSingle_CustomerOrFirm) :: (("MaxShow",float_6_opt_to_json x.f_OrderSingle_MaxShow) :: (("PegDifference",float_6_opt_to_json x.f_OrderSingle_PegDifference) :: (("DiscretionInst",discretioninst_opt_to_json x.f_OrderSingle_DiscretionInst) :: (("DiscretionOffset",float_6_opt_to_json x.f_OrderSingle_DiscretionOffset) :: (("ClearingFirm",string_opt_to_json x.f_OrderSingle_ClearingFirm) :: (("ClearingAccount",string_opt_to_json x.f_OrderSingle_ClearingAccount) :: (("TechnicalOrdType",technicalordtype_opt_to_json x.f_OrderSingle_TechnicalOrdType) :: (("BookIndicator",bookindicator_opt_to_json x.f_OrderSingle_BookIndicator) :: (("MIC",string_opt_to_json x.f_OrderSingle_MIC) :: (("BrokerPrioritization",brokerprioritization_opt_to_json x.f_OrderSingle_BrokerPrioritization) :: (("DEAIndicator",int_opt_to_json x.f_OrderSingle_DEAIndicator) :: (("OrderAttributeTypes",orderattributetypes_opt_to_json x.f_OrderSingle_OrderAttributeTypes) :: (("OrderSingleAllocs",rg_for_json ordersingleallocs_to_json x.f_OrderSingle_OrderSingleAllocs) :: (("OrderSingleTradingSessions",rg_for_json ordersingletradingsessions_to_json x.f_OrderSingle_OrderSingleTradingSessions) :: (("Parties",rg_for_json parties_to_json x.f_OrderSingle_Parties) :: (("ClearingEntries",rg_for_json clearingentries_to_json x.f_OrderSingle_ClearingEntries) :: [])))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
;;

let ordercancelreplacerequest_to_json (x)  : json =
    assoc_filter_nulls (("OrderID",string_opt_to_json x.f_OrderCancelReplaceRequest_OrderID) :: (("ClientID",string_opt_to_json x.f_OrderCancelReplaceRequest_ClientID) :: (("ExecBroker",string_opt_to_json x.f_OrderCancelReplaceRequest_ExecBroker) :: (("OrigClOrdID",string_opt_to_json x.f_OrderCancelReplaceRequest_OrigClOrdID) :: (("ClOrdID",string_opt_to_json x.f_OrderCancelReplaceRequest_ClOrdID) :: (("ListID",string_opt_to_json x.f_OrderCancelReplaceRequest_ListID) :: (("Account",string_opt_to_json x.f_OrderCancelReplaceRequest_Account) :: (("SettlmntTyp",settlmnttyp_opt_to_json x.f_OrderCancelReplaceRequest_SettlmntTyp) :: (("FutSettDate",localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_FutSettDate) :: (("HandlInst",handlinst_opt_to_json x.f_OrderCancelReplaceRequest_HandlInst) :: (("ExecInst",execinst_opt_to_json x.f_OrderCancelReplaceRequest_ExecInst) :: (("MinQty",float_6_opt_to_json x.f_OrderCancelReplaceRequest_MinQty) :: (("MaxFloor",float_6_opt_to_json x.f_OrderCancelReplaceRequest_MaxFloor) :: (("ExDestination",exchange_opt_to_json x.f_OrderCancelReplaceRequest_ExDestination) :: (("Symbol",string_opt_to_json x.f_OrderCancelReplaceRequest_Symbol) :: (("SymbolSfx",string_opt_to_json x.f_OrderCancelReplaceRequest_SymbolSfx) :: (("SecurityID",string_opt_to_json x.f_OrderCancelReplaceRequest_SecurityID) :: (("IDSource",idsource_opt_to_json x.f_OrderCancelReplaceRequest_IDSource) :: (("SecurityType",securitytype_opt_to_json x.f_OrderCancelReplaceRequest_SecurityType) :: (("MaturityMonthYear",monthyear_opt_to_json x.f_OrderCancelReplaceRequest_MaturityMonthYear) :: (("MaturityDay",int_opt_to_json x.f_OrderCancelReplaceRequest_MaturityDay) :: (("PutOrCall",putorcall_opt_to_json x.f_OrderCancelReplaceRequest_PutOrCall) :: (("StrikePrice",float_4_opt_to_json x.f_OrderCancelReplaceRequest_StrikePrice) :: (("OptAttribute",char_opt_to_json x.f_OrderCancelReplaceRequest_OptAttribute) :: (("ContractMultiplier",float_opt_to_json x.f_OrderCancelReplaceRequest_ContractMultiplier) :: (("CouponRate",float_opt_to_json x.f_OrderCancelReplaceRequest_CouponRate) :: (("SecurityExchange",exchange_opt_to_json x.f_OrderCancelReplaceRequest_SecurityExchange) :: (("Issuer",string_opt_to_json x.f_OrderCancelReplaceRequest_Issuer) :: (("EncodedIssuerLen",int_opt_to_json x.f_OrderCancelReplaceRequest_EncodedIssuerLen) :: (("EncodedIssuer",string_opt_to_json x.f_OrderCancelReplaceRequest_EncodedIssuer) :: (("SecurityDesc",string_opt_to_json x.f_OrderCancelReplaceRequest_SecurityDesc) :: (("EncodedSecurityDescLen",int_opt_to_json x.f_OrderCancelReplaceRequest_EncodedSecurityDescLen) :: (("EncodedSecurityDesc",string_opt_to_json x.f_OrderCancelReplaceRequest_EncodedSecurityDesc) :: (("Side",side_opt_to_json x.f_OrderCancelReplaceRequest_Side) :: (("TransactTime",utctimestamp_opt_to_json x.f_OrderCancelReplaceRequest_TransactTime) :: (("OrderQty",float_6_opt_to_json x.f_OrderCancelReplaceRequest_OrderQty) :: (("CashOrderQty",float_6_opt_to_json x.f_OrderCancelReplaceRequest_CashOrderQty) :: (("OrdType",ordtype_opt_to_json x.f_OrderCancelReplaceRequest_OrdType) :: (("Price",float_4_opt_to_json x.f_OrderCancelReplaceRequest_Price) :: (("StopPx",float_4_opt_to_json x.f_OrderCancelReplaceRequest_StopPx) :: (("PegDifference",float_6_opt_to_json x.f_OrderCancelReplaceRequest_PegDifference) :: (("DiscretionInst",discretioninst_opt_to_json x.f_OrderCancelReplaceRequest_DiscretionInst) :: (("DiscretionOffset",float_6_opt_to_json x.f_OrderCancelReplaceRequest_DiscretionOffset) :: (("ComplianceID",string_opt_to_json x.f_OrderCancelReplaceRequest_ComplianceID) :: (("SolicitedFlag",solicitedflag_opt_to_json x.f_OrderCancelReplaceRequest_SolicitedFlag) :: (("Currency",currency_opt_to_json x.f_OrderCancelReplaceRequest_Currency) :: (("TimeInForce",timeinforce_opt_to_json x.f_OrderCancelReplaceRequest_TimeInForce) :: (("EffectiveTime",utctimestamp_opt_to_json x.f_OrderCancelReplaceRequest_EffectiveTime) :: (("ExpireDate",localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_ExpireDate) :: (("ExpireTime",utctimestamp_opt_to_json x.f_OrderCancelReplaceRequest_ExpireTime) :: (("GTBookingInst",gtbookinginst_opt_to_json x.f_OrderCancelReplaceRequest_GTBookingInst) :: (("Commission",float_6_opt_to_json x.f_OrderCancelReplaceRequest_Commission) :: (("CommType",commtype_opt_to_json x.f_OrderCancelReplaceRequest_CommType) :: (("Rule80A",rule80a_opt_to_json x.f_OrderCancelReplaceRequest_Rule80A) :: (("ForexReq",forexreq_opt_to_json x.f_OrderCancelReplaceRequest_ForexReq) :: (("SettlCurrency",currency_opt_to_json x.f_OrderCancelReplaceRequest_SettlCurrency) :: (("Text",string_opt_to_json x.f_OrderCancelReplaceRequest_Text) :: (("EncodedTextLen",int_opt_to_json x.f_OrderCancelReplaceRequest_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_OrderCancelReplaceRequest_EncodedText) :: (("FutSettDate2",localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_FutSettDate2) :: (("OrderQty2",float_6_opt_to_json x.f_OrderCancelReplaceRequest_OrderQty2) :: (("OpenClose",openclose_opt_to_json x.f_OrderCancelReplaceRequest_OpenClose) :: (("CoveredOrUncovered",coveredoruncovered_opt_to_json x.f_OrderCancelReplaceRequest_CoveredOrUncovered) :: (("CustomerOrFirm",customerorfirm_opt_to_json x.f_OrderCancelReplaceRequest_CustomerOrFirm) :: (("MaxShow",float_6_opt_to_json x.f_OrderCancelReplaceRequest_MaxShow) :: (("LocateReqd",locatereqd_opt_to_json x.f_OrderCancelReplaceRequest_LocateReqd) :: (("ClearingFirm",string_opt_to_json x.f_OrderCancelReplaceRequest_ClearingFirm) :: (("ClearingAccount",string_opt_to_json x.f_OrderCancelReplaceRequest_ClearingAccount) :: (("TechnicalOrdType",technicalordtype_opt_to_json x.f_OrderCancelReplaceRequest_TechnicalOrdType) :: (("FreeText",string_opt_to_json x.f_OrderCancelReplaceRequest_FreeText) :: (("ClearingHandlingType",clearinghandlingtype_opt_to_json x.f_OrderCancelReplaceRequest_ClearingHandlingType) :: (("MIC",string_opt_to_json x.f_OrderCancelReplaceRequest_MIC) :: (("DEAIndicator",int_opt_to_json x.f_OrderCancelReplaceRequest_DEAIndicator) :: (("OrderCancelReplaceRequestAllocs",rg_for_json ordercancelreplacerequestallocs_to_json x.f_OrderCancelReplaceRequest_OrderCancelReplaceRequestAllocs) :: (("OrderCancelReplaceRequestTradingSessions",rg_for_json ordercancelreplacerequesttradingsessions_to_json x.f_OrderCancelReplaceRequest_OrderCancelReplaceRequestTradingSessions) :: (("Parties",rg_for_json parties_to_json x.f_OrderCancelReplaceRequest_Parties) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
;;

let ordercancelrequest_to_json (x)  : json =
    assoc_filter_nulls (("OrigClOrdID",string_opt_to_json x.f_OrderCancelRequest_OrigClOrdID) :: (("OrderID",string_opt_to_json x.f_OrderCancelRequest_OrderID) :: (("ClOrdID",string_opt_to_json x.f_OrderCancelRequest_ClOrdID) :: (("ListID",string_opt_to_json x.f_OrderCancelRequest_ListID) :: (("Account",string_opt_to_json x.f_OrderCancelRequest_Account) :: (("ClientID",string_opt_to_json x.f_OrderCancelRequest_ClientID) :: (("ExecBroker",string_opt_to_json x.f_OrderCancelRequest_ExecBroker) :: (("Symbol",string_opt_to_json x.f_OrderCancelRequest_Symbol) :: (("SymbolSfx",string_opt_to_json x.f_OrderCancelRequest_SymbolSfx) :: (("SecurityID",string_opt_to_json x.f_OrderCancelRequest_SecurityID) :: (("IDSource",idsource_opt_to_json x.f_OrderCancelRequest_IDSource) :: (("SecurityType",securitytype_opt_to_json x.f_OrderCancelRequest_SecurityType) :: (("MaturityMonthYear",monthyear_opt_to_json x.f_OrderCancelRequest_MaturityMonthYear) :: (("MaturityDay",int_opt_to_json x.f_OrderCancelRequest_MaturityDay) :: (("PutOrCall",putorcall_opt_to_json x.f_OrderCancelRequest_PutOrCall) :: (("StrikePrice",float_4_opt_to_json x.f_OrderCancelRequest_StrikePrice) :: (("OptAttribute",char_opt_to_json x.f_OrderCancelRequest_OptAttribute) :: (("ContractMultiplier",float_opt_to_json x.f_OrderCancelRequest_ContractMultiplier) :: (("CouponRate",float_opt_to_json x.f_OrderCancelRequest_CouponRate) :: (("SecurityExchange",exchange_opt_to_json x.f_OrderCancelRequest_SecurityExchange) :: (("Issuer",string_opt_to_json x.f_OrderCancelRequest_Issuer) :: (("EncodedIssuerLen",int_opt_to_json x.f_OrderCancelRequest_EncodedIssuerLen) :: (("EncodedIssuer",string_opt_to_json x.f_OrderCancelRequest_EncodedIssuer) :: (("SecurityDesc",string_opt_to_json x.f_OrderCancelRequest_SecurityDesc) :: (("EncodedSecurityDescLen",int_opt_to_json x.f_OrderCancelRequest_EncodedSecurityDescLen) :: (("EncodedSecurityDesc",string_opt_to_json x.f_OrderCancelRequest_EncodedSecurityDesc) :: (("Side",side_opt_to_json x.f_OrderCancelRequest_Side) :: (("TransactTime",utctimestamp_opt_to_json x.f_OrderCancelRequest_TransactTime) :: (("OrderQty",float_6_opt_to_json x.f_OrderCancelRequest_OrderQty) :: (("CashOrderQty",float_6_opt_to_json x.f_OrderCancelRequest_CashOrderQty) :: (("ComplianceID",string_opt_to_json x.f_OrderCancelRequest_ComplianceID) :: (("SolicitedFlag",solicitedflag_opt_to_json x.f_OrderCancelRequest_SolicitedFlag) :: (("Text",string_opt_to_json x.f_OrderCancelRequest_Text) :: (("EncodedTextLen",int_opt_to_json x.f_OrderCancelRequest_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_OrderCancelRequest_EncodedText) :: (("MIC",string_opt_to_json x.f_OrderCancelRequest_MIC) :: (("Currency",currency_opt_to_json x.f_OrderCancelRequest_Currency) :: [])))))))))))))))))))))))))))))))))))))
;;

let ordermasscancelrequest_to_json (x)  : json =
    assoc_filter_nulls (("Instrument",instrument_to_json x.f_OrderMassCancelRequest_Instrument) :: (("UnderlyingInstrument",underlyinginstrument_to_json x.f_OrderMassCancelRequest_UnderlyingInstrument) :: (("ClOrdID",string_opt_to_json x.f_OrderMassCancelRequest_ClOrdID) :: (("SecondaryClOrdID",string_opt_to_json x.f_OrderMassCancelRequest_SecondaryClOrdID) :: (("MassCancelRequestType",masscancelrequesttype_opt_to_json x.f_OrderMassCancelRequest_MassCancelRequestType) :: (("TradingSessionID",string_opt_to_json x.f_OrderMassCancelRequest_TradingSessionID) :: (("TradingSessionSubID",string_opt_to_json x.f_OrderMassCancelRequest_TradingSessionSubID) :: (("Side",side_opt_to_json x.f_OrderMassCancelRequest_Side) :: (("TransactTime",utctimestamp_opt_to_json x.f_OrderMassCancelRequest_TransactTime) :: (("Text",string_opt_to_json x.f_OrderMassCancelRequest_Text) :: (("EncodedTextLen",int_opt_to_json x.f_OrderMassCancelRequest_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_OrderMassCancelRequest_EncodedText) :: (("Account",string_opt_to_json x.f_OrderMassCancelRequest_Account) :: (("Symbol",string_opt_to_json x.f_OrderMassCancelRequest_Symbol) :: (("ClassID",string_opt_to_json x.f_OrderMassCancelRequest_ClassID) :: (("TechnicalOrdType",technicalordtype_opt_to_json x.f_OrderMassCancelRequest_TechnicalOrdType) :: (("Rule80A",rule80a_opt_to_json x.f_OrderMassCancelRequest_Rule80A) :: (("CancelByLocationID",string_opt_to_json x.f_OrderMassCancelRequest_CancelByLocationID) :: []))))))))))))))))))
;;

let executionreport_to_json (x)  : json =
    assoc_filter_nulls (("OrderID",string_opt_to_json x.f_ExecutionReport_OrderID) :: (("SecondaryOrderID",string_opt_to_json x.f_ExecutionReport_SecondaryOrderID) :: (("ClOrdID",string_opt_to_json x.f_ExecutionReport_ClOrdID) :: (("OrigClOrdID",string_opt_to_json x.f_ExecutionReport_OrigClOrdID) :: (("ClientID",string_opt_to_json x.f_ExecutionReport_ClientID) :: (("ExecBroker",string_opt_to_json x.f_ExecutionReport_ExecBroker) :: (("ListID",string_opt_to_json x.f_ExecutionReport_ListID) :: (("ExecID",string_opt_to_json x.f_ExecutionReport_ExecID) :: (("ExecTransType",exectranstype_opt_to_json x.f_ExecutionReport_ExecTransType) :: (("ExecRefID",string_opt_to_json x.f_ExecutionReport_ExecRefID) :: (("ExecType",exectype_opt_to_json x.f_ExecutionReport_ExecType) :: (("OrdStatus",ordstatus_opt_to_json x.f_ExecutionReport_OrdStatus) :: (("OrdRejReason",ordrejreason_opt_to_json x.f_ExecutionReport_OrdRejReason) :: (("ExecRestatementReason",execrestatementreason_opt_to_json x.f_ExecutionReport_ExecRestatementReason) :: (("Account",string_opt_to_json x.f_ExecutionReport_Account) :: (("SettlmntTyp",settlmnttyp_opt_to_json x.f_ExecutionReport_SettlmntTyp) :: (("FutSettDate",localmktdate_opt_to_json x.f_ExecutionReport_FutSettDate) :: (("Symbol",string_opt_to_json x.f_ExecutionReport_Symbol) :: (("SymbolSfx",string_opt_to_json x.f_ExecutionReport_SymbolSfx) :: (("SecurityID",string_opt_to_json x.f_ExecutionReport_SecurityID) :: (("IDSource",idsource_opt_to_json x.f_ExecutionReport_IDSource) :: (("SecurityType",securitytype_opt_to_json x.f_ExecutionReport_SecurityType) :: (("MaturityMonthYear",monthyear_opt_to_json x.f_ExecutionReport_MaturityMonthYear) :: (("MaturityDay",int_opt_to_json x.f_ExecutionReport_MaturityDay) :: (("PutOrCall",putorcall_opt_to_json x.f_ExecutionReport_PutOrCall) :: (("StrikePrice",float_4_opt_to_json x.f_ExecutionReport_StrikePrice) :: (("OptAttribute",char_opt_to_json x.f_ExecutionReport_OptAttribute) :: (("ContractMultiplier",float_opt_to_json x.f_ExecutionReport_ContractMultiplier) :: (("CouponRate",float_opt_to_json x.f_ExecutionReport_CouponRate) :: (("SecurityExchange",exchange_opt_to_json x.f_ExecutionReport_SecurityExchange) :: (("Issuer",string_opt_to_json x.f_ExecutionReport_Issuer) :: (("EncodedIssuerLen",int_opt_to_json x.f_ExecutionReport_EncodedIssuerLen) :: (("EncodedIssuer",string_opt_to_json x.f_ExecutionReport_EncodedIssuer) :: (("SecurityDesc",string_opt_to_json x.f_ExecutionReport_SecurityDesc) :: (("EncodedSecurityDescLen",int_opt_to_json x.f_ExecutionReport_EncodedSecurityDescLen) :: (("EncodedSecurityDesc",string_opt_to_json x.f_ExecutionReport_EncodedSecurityDesc) :: (("Side",side_opt_to_json x.f_ExecutionReport_Side) :: (("OrderQty",float_6_opt_to_json x.f_ExecutionReport_OrderQty) :: (("CashOrderQty",float_6_opt_to_json x.f_ExecutionReport_CashOrderQty) :: (("OrdType",ordtype_opt_to_json x.f_ExecutionReport_OrdType) :: (("Price",float_4_opt_to_json x.f_ExecutionReport_Price) :: (("StopPx",float_4_opt_to_json x.f_ExecutionReport_StopPx) :: (("PegDifference",float_6_opt_to_json x.f_ExecutionReport_PegDifference) :: (("DiscretionInst",discretioninst_opt_to_json x.f_ExecutionReport_DiscretionInst) :: (("DiscretionOffset",float_6_opt_to_json x.f_ExecutionReport_DiscretionOffset) :: (("Currency",currency_opt_to_json x.f_ExecutionReport_Currency) :: (("ComplianceID",string_opt_to_json x.f_ExecutionReport_ComplianceID) :: (("SolicitedFlag",solicitedflag_opt_to_json x.f_ExecutionReport_SolicitedFlag) :: (("TimeInForce",timeinforce_opt_to_json x.f_ExecutionReport_TimeInForce) :: (("EffectiveTime",utctimestamp_opt_to_json x.f_ExecutionReport_EffectiveTime) :: (("ExpireDate",localmktdate_opt_to_json x.f_ExecutionReport_ExpireDate) :: (("ExpireTime",utctimestamp_opt_to_json x.f_ExecutionReport_ExpireTime) :: (("ExecInst",execinst_opt_to_json x.f_ExecutionReport_ExecInst) :: (("Rule80A",rule80a_opt_to_json x.f_ExecutionReport_Rule80A) :: (("LastShares",float_6_opt_to_json x.f_ExecutionReport_LastShares) :: (("LastPx",float_4_opt_to_json x.f_ExecutionReport_LastPx) :: (("LastSpotRate",float_4_opt_to_json x.f_ExecutionReport_LastSpotRate) :: (("LastForwardPoints",float_6_opt_to_json x.f_ExecutionReport_LastForwardPoints) :: (("LastMkt",exchange_opt_to_json x.f_ExecutionReport_LastMkt) :: (("TradingSessionID",string_opt_to_json x.f_ExecutionReport_TradingSessionID) :: (("LastCapacity",lastcapacity_opt_to_json x.f_ExecutionReport_LastCapacity) :: (("LeavesQty",float_6_opt_to_json x.f_ExecutionReport_LeavesQty) :: (("CumQty",float_6_opt_to_json x.f_ExecutionReport_CumQty) :: (("AvgPx",float_4_opt_to_json x.f_ExecutionReport_AvgPx) :: (("DayOrderQty",float_6_opt_to_json x.f_ExecutionReport_DayOrderQty) :: (("DayCumQty",float_6_opt_to_json x.f_ExecutionReport_DayCumQty) :: (("DayAvgPx",float_4_opt_to_json x.f_ExecutionReport_DayAvgPx) :: (("GTBookingInst",gtbookinginst_opt_to_json x.f_ExecutionReport_GTBookingInst) :: (("TradeDate",localmktdate_opt_to_json x.f_ExecutionReport_TradeDate) :: (("TransactTime",utctimestamp_opt_to_json x.f_ExecutionReport_TransactTime) :: (("ReportToExch",reporttoexch_opt_to_json x.f_ExecutionReport_ReportToExch) :: (("Commission",float_6_opt_to_json x.f_ExecutionReport_Commission) :: (("CommType",commtype_opt_to_json x.f_ExecutionReport_CommType) :: (("GrossTradeAmt",float_6_opt_to_json x.f_ExecutionReport_GrossTradeAmt) :: (("SettlCurrAmt",float_6_opt_to_json x.f_ExecutionReport_SettlCurrAmt) :: (("SettlCurrency",currency_opt_to_json x.f_ExecutionReport_SettlCurrency) :: (("SettlCurrFxRate",float_opt_to_json x.f_ExecutionReport_SettlCurrFxRate) :: (("SettlCurrFxRateCalc",char_opt_to_json x.f_ExecutionReport_SettlCurrFxRateCalc) :: (("HandlInst",handlinst_opt_to_json x.f_ExecutionReport_HandlInst) :: (("MinQty",float_6_opt_to_json x.f_ExecutionReport_MinQty) :: (("MaxFloor",float_6_opt_to_json x.f_ExecutionReport_MaxFloor) :: (("OpenClose",openclose_opt_to_json x.f_ExecutionReport_OpenClose) :: (("MaxShow",float_6_opt_to_json x.f_ExecutionReport_MaxShow) :: (("Text",string_opt_to_json x.f_ExecutionReport_Text) :: (("EncodedTextLen",int_opt_to_json x.f_ExecutionReport_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_ExecutionReport_EncodedText) :: (("FutSettDate2",localmktdate_opt_to_json x.f_ExecutionReport_FutSettDate2) :: (("OrderQty2",float_6_opt_to_json x.f_ExecutionReport_OrderQty2) :: (("ClearingFirm",string_opt_to_json x.f_ExecutionReport_ClearingFirm) :: (("ClearingAccount",string_opt_to_json x.f_ExecutionReport_ClearingAccount) :: (("MultiLegReportingType",multilegreportingtype_opt_to_json x.f_ExecutionReport_MultiLegReportingType) :: (("CrossType",crosstype_opt_to_json x.f_ExecutionReport_CrossType) :: (("TechnicalOrdType",technicalordtype_opt_to_json x.f_ExecutionReport_TechnicalOrdType) :: (("FreeText",string_opt_to_json x.f_ExecutionReport_FreeText) :: (("ClearingHandlingType",clearinghandlingtype_opt_to_json x.f_ExecutionReport_ClearingHandlingType) :: (("UTPExID",int_opt_to_json x.f_ExecutionReport_UTPExID) :: (("LiquidityIndicator",liquidityindicator_opt_to_json x.f_ExecutionReport_LiquidityIndicator) :: (("ErrorCode",int_opt_to_json x.f_ExecutionReport_ErrorCode) :: (("MIC",string_opt_to_json x.f_ExecutionReport_MIC) :: (("BookIndicator",bookindicator_opt_to_json x.f_ExecutionReport_BookIndicator) :: (("BrokerPrioritization",brokerprioritization_opt_to_json x.f_ExecutionReport_BrokerPrioritization) :: (("IMPTimestamp",utctimeonly_opt_to_json x.f_ExecutionReport_IMPTimestamp) :: (("DEAIndicator",int_opt_to_json x.f_ExecutionReport_DEAIndicator) :: (("OrderAttributeTypes",orderattributetypes_opt_to_json x.f_ExecutionReport_OrderAttributeTypes) :: (("ExecutionReportContraBrokers",rg_for_json executionreportcontrabrokers_to_json x.f_ExecutionReport_ExecutionReportContraBrokers) :: (("Parties",rg_for_json parties_to_json x.f_ExecutionReport_Parties) :: (("ContraGrp",rg_for_json contragrp_to_json x.f_ExecutionReport_ContraGrp) :: [])))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
;;

let ordercancelreject_to_json (x)  : json =
    assoc_filter_nulls (("OrderID",string_opt_to_json x.f_OrderCancelReject_OrderID) :: (("SecondaryOrderID",string_opt_to_json x.f_OrderCancelReject_SecondaryOrderID) :: (("ClOrdID",string_opt_to_json x.f_OrderCancelReject_ClOrdID) :: (("OrigClOrdID",string_opt_to_json x.f_OrderCancelReject_OrigClOrdID) :: (("OrdStatus",ordstatus_opt_to_json x.f_OrderCancelReject_OrdStatus) :: (("ClientID",string_opt_to_json x.f_OrderCancelReject_ClientID) :: (("ExecBroker",string_opt_to_json x.f_OrderCancelReject_ExecBroker) :: (("ListID",string_opt_to_json x.f_OrderCancelReject_ListID) :: (("Account",string_opt_to_json x.f_OrderCancelReject_Account) :: (("TransactTime",utctimestamp_opt_to_json x.f_OrderCancelReject_TransactTime) :: (("CxlRejResponseTo",cxlrejresponseto_opt_to_json x.f_OrderCancelReject_CxlRejResponseTo) :: (("CxlRejReason",cxlrejreason_opt_to_json x.f_OrderCancelReject_CxlRejReason) :: (("Text",string_opt_to_json x.f_OrderCancelReject_Text) :: (("EncodedTextLen",int_opt_to_json x.f_OrderCancelReject_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_OrderCancelReject_EncodedText) :: (("ErrorCode",int_opt_to_json x.f_OrderCancelReject_ErrorCode) :: (("Symbol",string_opt_to_json x.f_OrderCancelReject_Symbol) :: (("ExecInst",execinst_opt_to_json x.f_OrderCancelReject_ExecInst) :: []))))))))))))))))))
;;

let ordermasscancelreport_to_json (x)  : json =
    assoc_filter_nulls (("Instrument",instrument_to_json x.f_OrderMassCancelReport_Instrument) :: (("UnderlyingInstrument",underlyinginstrument_to_json x.f_OrderMassCancelReport_UnderlyingInstrument) :: (("ClOrdID",string_opt_to_json x.f_OrderMassCancelReport_ClOrdID) :: (("SecondaryClOrdID",string_opt_to_json x.f_OrderMassCancelReport_SecondaryClOrdID) :: (("OrderID",string_opt_to_json x.f_OrderMassCancelReport_OrderID) :: (("SecondaryOrderID",string_opt_to_json x.f_OrderMassCancelReport_SecondaryOrderID) :: (("MassCancelRequestType",masscancelrequesttype_opt_to_json x.f_OrderMassCancelReport_MassCancelRequestType) :: (("MassCancelResponse",masscancelresponse_opt_to_json x.f_OrderMassCancelReport_MassCancelResponse) :: (("MassCancelRejectReason",masscancelrejectreason_opt_to_json x.f_OrderMassCancelReport_MassCancelRejectReason) :: (("TotalAffectedOrders",int_opt_to_json x.f_OrderMassCancelReport_TotalAffectedOrders) :: (("TradingSessionID",string_opt_to_json x.f_OrderMassCancelReport_TradingSessionID) :: (("TradingSessionSubID",string_opt_to_json x.f_OrderMassCancelReport_TradingSessionSubID) :: (("Side",side_opt_to_json x.f_OrderMassCancelReport_Side) :: (("TransactTime",utctimestamp_opt_to_json x.f_OrderMassCancelReport_TransactTime) :: (("Text",string_opt_to_json x.f_OrderMassCancelReport_Text) :: (("EncodedTextLen",int_opt_to_json x.f_OrderMassCancelReport_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_OrderMassCancelReport_EncodedText) :: (("Symbol",string_opt_to_json x.f_OrderMassCancelReport_Symbol) :: (("ClassID",string_opt_to_json x.f_OrderMassCancelReport_ClassID) :: (("TechnicalOrdType",technicalordtype_opt_to_json x.f_OrderMassCancelReport_TechnicalOrdType) :: (("Rule80A",rule80a_opt_to_json x.f_OrderMassCancelReport_Rule80A) :: (("Account",string_opt_to_json x.f_OrderMassCancelReport_Account) :: (("CancelByLocationID",string_opt_to_json x.f_OrderMassCancelReport_CancelByLocationID) :: (("MIC",string_opt_to_json x.f_OrderMassCancelReport_MIC) :: (("AffectedOrdGrp",rg_for_json affectedordgrp_to_json x.f_OrderMassCancelReport_AffectedOrdGrp) :: [])))))))))))))))))))))))))
;;

let full_app_msg_to_json (x)  : json =
    (match x with
        | FIX_Full_Msg_OrderSingle x -> (`Assoc (("OrderSingle",ordersingle_to_json x) :: []))
        | FIX_Full_Msg_OrderCancelReplaceRequest x -> (`Assoc (("OrderCancelReplaceRequest",ordercancelreplacerequest_to_json x) :: []))
        | FIX_Full_Msg_OrderCancelRequest x -> (`Assoc (("OrderCancelRequest",ordercancelrequest_to_json x) :: []))
        | FIX_Full_Msg_OrderMassCancelRequest x -> (`Assoc (("OrderMassCancelRequest",ordermasscancelrequest_to_json x) :: []))
        | FIX_Full_Msg_ExecutionReport x -> (`Assoc (("ExecutionReport",executionreport_to_json x) :: []))
        | FIX_Full_Msg_OrderCancelReject x -> (`Assoc (("OrderCancelReject",ordercancelreject_to_json x) :: []))
        | FIX_Full_Msg_OrderMassCancelReport x -> (`Assoc (("OrderMassCancelReport",ordermasscancelreport_to_json x) :: []))
    )
;;
