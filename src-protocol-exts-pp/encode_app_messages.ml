(* Aesthetic Integration copyright 2018 *)
open Encode_app_enums;;
open Encode_app_records;;
open Encode_base_types;;
open Encode_datetime;;
open Encode_utils;;
open Full_app_messages;;

let encode_OrderSingle (msg)  =
    (@) (("11",enc_opt encode_string msg.f_OrderSingle_ClOrdID) :: (("109",enc_opt encode_string msg.f_OrderSingle_ClientID) :: (("76",enc_opt encode_string msg.f_OrderSingle_ExecBroker) :: (("1",enc_opt encode_string msg.f_OrderSingle_Account) :: (("63",enc_opt encode_SettlmntTyp msg.f_OrderSingle_SettlmntTyp) :: (("64",enc_opt encode_LocalMktDate msg.f_OrderSingle_FutSettDate) :: (("21",enc_opt encode_HandlInst msg.f_OrderSingle_HandlInst) :: (("18",enc_opt encode_ExecInst msg.f_OrderSingle_ExecInst) :: (("110",enc_opt encode_float_6 msg.f_OrderSingle_MinQty) :: (("111",enc_opt encode_float_6 msg.f_OrderSingle_MaxFloor) :: (("100",enc_opt encode_Exchange msg.f_OrderSingle_ExDestination) :: (("81",enc_opt encode_ProcessCode msg.f_OrderSingle_ProcessCode) :: (("55",enc_opt encode_string msg.f_OrderSingle_Symbol) :: (("65",enc_opt encode_string msg.f_OrderSingle_SymbolSfx) :: (("48",enc_opt encode_string msg.f_OrderSingle_SecurityID) :: (("22",enc_opt encode_IDSource msg.f_OrderSingle_IDSource) :: (("167",enc_opt encode_SecurityType msg.f_OrderSingle_SecurityType) :: (("200",enc_opt encode_MonthYear msg.f_OrderSingle_MaturityMonthYear) :: (("205",enc_opt encode_int msg.f_OrderSingle_MaturityDay) :: (("201",enc_opt encode_PutOrCall msg.f_OrderSingle_PutOrCall) :: (("202",enc_opt encode_float_4 msg.f_OrderSingle_StrikePrice) :: (("206",enc_opt encode_char msg.f_OrderSingle_OptAttribute) :: (("231",enc_opt encode_float msg.f_OrderSingle_ContractMultiplier) :: (("223",enc_opt encode_float msg.f_OrderSingle_CouponRate) :: (("207",enc_opt encode_Exchange msg.f_OrderSingle_SecurityExchange) :: (("106",enc_opt encode_string msg.f_OrderSingle_Issuer) :: (("348",enc_opt encode_int msg.f_OrderSingle_EncodedIssuerLen) :: (("349",enc_opt encode_string msg.f_OrderSingle_EncodedIssuer) :: (("107",enc_opt encode_string msg.f_OrderSingle_SecurityDesc) :: (("350",enc_opt encode_int msg.f_OrderSingle_EncodedSecurityDescLen) :: (("351",enc_opt encode_string msg.f_OrderSingle_EncodedSecurityDesc) :: (("140",enc_opt encode_float_4 msg.f_OrderSingle_PrevClosePx) :: (("54",enc_opt encode_Side msg.f_OrderSingle_Side) :: (("114",enc_opt encode_LocateReqd msg.f_OrderSingle_LocateReqd) :: (("60",enc_opt encode_UTCTimestamp msg.f_OrderSingle_TransactTime) :: (("38",enc_opt encode_float_6 msg.f_OrderSingle_OrderQty) :: (("152",enc_opt encode_float_6 msg.f_OrderSingle_CashOrderQty) :: (("40",enc_opt encode_OrdType msg.f_OrderSingle_OrdType) :: (("44",enc_opt encode_float_4 msg.f_OrderSingle_Price) :: (("99",enc_opt encode_float_4 msg.f_OrderSingle_StopPx) :: (("15",enc_opt encode_Currency msg.f_OrderSingle_Currency) :: (("376",enc_opt encode_string msg.f_OrderSingle_ComplianceID) :: (("377",enc_opt encode_SolicitedFlag msg.f_OrderSingle_SolicitedFlag) :: (("23",enc_opt encode_string msg.f_OrderSingle_IOIid) :: (("117",enc_opt encode_string msg.f_OrderSingle_QuoteID) :: (("59",enc_opt encode_TimeInForce msg.f_OrderSingle_TimeInForce) :: (("168",enc_opt encode_UTCTimestamp msg.f_OrderSingle_EffectiveTime) :: (("432",enc_opt encode_LocalMktDate msg.f_OrderSingle_ExpireDate) :: (("126",enc_opt encode_UTCTimestamp msg.f_OrderSingle_ExpireTime) :: (("427",enc_opt encode_GTBookingInst msg.f_OrderSingle_GTBookingInst) :: (("12",enc_opt encode_float_6 msg.f_OrderSingle_Commission) :: (("13",enc_opt encode_CommType msg.f_OrderSingle_CommType) :: (("47",enc_opt encode_Rule80A msg.f_OrderSingle_Rule80A) :: (("121",enc_opt encode_ForexReq msg.f_OrderSingle_ForexReq) :: (("120",enc_opt encode_Currency msg.f_OrderSingle_SettlCurrency) :: (("58",enc_opt encode_string msg.f_OrderSingle_Text) :: (("354",enc_opt encode_int msg.f_OrderSingle_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrderSingle_EncodedText) :: (("193",enc_opt encode_LocalMktDate msg.f_OrderSingle_FutSettDate2) :: (("192",enc_opt encode_float_6 msg.f_OrderSingle_OrderQty2) :: (("77",enc_opt encode_OpenClose msg.f_OrderSingle_OpenClose) :: (("203",enc_opt encode_CoveredOrUncovered msg.f_OrderSingle_CoveredOrUncovered) :: (("204",enc_opt encode_CustomerOrFirm msg.f_OrderSingle_CustomerOrFirm) :: (("210",enc_opt encode_float_6 msg.f_OrderSingle_MaxShow) :: (("211",enc_opt encode_float_6 msg.f_OrderSingle_PegDifference) :: (("388",enc_opt encode_DiscretionInst msg.f_OrderSingle_DiscretionInst) :: (("389",enc_opt encode_float_6 msg.f_OrderSingle_DiscretionOffset) :: (("439",enc_opt encode_string msg.f_OrderSingle_ClearingFirm) :: (("440",enc_opt encode_string msg.f_OrderSingle_ClearingAccount) :: (("9941",enc_opt encode_TechnicalOrdType msg.f_OrderSingle_TechnicalOrdType) :: (("10078",enc_opt encode_BookIndicator msg.f_OrderSingle_BookIndicator) :: (("9949",enc_opt encode_string msg.f_OrderSingle_MIC) :: (("10079",enc_opt encode_BrokerPrioritization msg.f_OrderSingle_BrokerPrioritization) :: (("21017",enc_opt encode_int msg.f_OrderSingle_DEAIndicator) :: (("8015",enc_opt encode_OrderAttributeTypes msg.f_OrderSingle_OrderAttributeTypes) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_ClearingEntries "9933" msg.f_OrderSingle_ClearingEntries) ((@) (enc_repeat encode_Parties "453" msg.f_OrderSingle_Parties) ((@) (enc_repeat encode_OrderSingleTradingSessions "386" msg.f_OrderSingle_OrderSingleTradingSessions) ((@) (enc_repeat encode_OrderSingleAllocs "78" msg.f_OrderSingle_OrderSingleAllocs) []))))
;;

let encode_OrderCancelReplaceRequest (msg)  =
    (@) (("37",enc_opt encode_string msg.f_OrderCancelReplaceRequest_OrderID) :: (("109",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ClientID) :: (("76",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ExecBroker) :: (("41",enc_opt encode_string msg.f_OrderCancelReplaceRequest_OrigClOrdID) :: (("11",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ClOrdID) :: (("66",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ListID) :: (("1",enc_opt encode_string msg.f_OrderCancelReplaceRequest_Account) :: (("63",enc_opt encode_SettlmntTyp msg.f_OrderCancelReplaceRequest_SettlmntTyp) :: (("64",enc_opt encode_LocalMktDate msg.f_OrderCancelReplaceRequest_FutSettDate) :: (("21",enc_opt encode_HandlInst msg.f_OrderCancelReplaceRequest_HandlInst) :: (("18",enc_opt encode_ExecInst msg.f_OrderCancelReplaceRequest_ExecInst) :: (("110",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_MinQty) :: (("111",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_MaxFloor) :: (("100",enc_opt encode_Exchange msg.f_OrderCancelReplaceRequest_ExDestination) :: (("55",enc_opt encode_string msg.f_OrderCancelReplaceRequest_Symbol) :: (("65",enc_opt encode_string msg.f_OrderCancelReplaceRequest_SymbolSfx) :: (("48",enc_opt encode_string msg.f_OrderCancelReplaceRequest_SecurityID) :: (("22",enc_opt encode_IDSource msg.f_OrderCancelReplaceRequest_IDSource) :: (("167",enc_opt encode_SecurityType msg.f_OrderCancelReplaceRequest_SecurityType) :: (("200",enc_opt encode_MonthYear msg.f_OrderCancelReplaceRequest_MaturityMonthYear) :: (("205",enc_opt encode_int msg.f_OrderCancelReplaceRequest_MaturityDay) :: (("201",enc_opt encode_PutOrCall msg.f_OrderCancelReplaceRequest_PutOrCall) :: (("202",enc_opt encode_float_4 msg.f_OrderCancelReplaceRequest_StrikePrice) :: (("206",enc_opt encode_char msg.f_OrderCancelReplaceRequest_OptAttribute) :: (("231",enc_opt encode_float msg.f_OrderCancelReplaceRequest_ContractMultiplier) :: (("223",enc_opt encode_float msg.f_OrderCancelReplaceRequest_CouponRate) :: (("207",enc_opt encode_Exchange msg.f_OrderCancelReplaceRequest_SecurityExchange) :: (("106",enc_opt encode_string msg.f_OrderCancelReplaceRequest_Issuer) :: (("348",enc_opt encode_int msg.f_OrderCancelReplaceRequest_EncodedIssuerLen) :: (("349",enc_opt encode_string msg.f_OrderCancelReplaceRequest_EncodedIssuer) :: (("107",enc_opt encode_string msg.f_OrderCancelReplaceRequest_SecurityDesc) :: (("350",enc_opt encode_int msg.f_OrderCancelReplaceRequest_EncodedSecurityDescLen) :: (("351",enc_opt encode_string msg.f_OrderCancelReplaceRequest_EncodedSecurityDesc) :: (("54",enc_opt encode_Side msg.f_OrderCancelReplaceRequest_Side) :: (("60",enc_opt encode_UTCTimestamp msg.f_OrderCancelReplaceRequest_TransactTime) :: (("38",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_OrderQty) :: (("152",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_CashOrderQty) :: (("40",enc_opt encode_OrdType msg.f_OrderCancelReplaceRequest_OrdType) :: (("44",enc_opt encode_float_4 msg.f_OrderCancelReplaceRequest_Price) :: (("99",enc_opt encode_float_4 msg.f_OrderCancelReplaceRequest_StopPx) :: (("211",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_PegDifference) :: (("388",enc_opt encode_DiscretionInst msg.f_OrderCancelReplaceRequest_DiscretionInst) :: (("389",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_DiscretionOffset) :: (("376",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ComplianceID) :: (("377",enc_opt encode_SolicitedFlag msg.f_OrderCancelReplaceRequest_SolicitedFlag) :: (("15",enc_opt encode_Currency msg.f_OrderCancelReplaceRequest_Currency) :: (("59",enc_opt encode_TimeInForce msg.f_OrderCancelReplaceRequest_TimeInForce) :: (("168",enc_opt encode_UTCTimestamp msg.f_OrderCancelReplaceRequest_EffectiveTime) :: (("432",enc_opt encode_LocalMktDate msg.f_OrderCancelReplaceRequest_ExpireDate) :: (("126",enc_opt encode_UTCTimestamp msg.f_OrderCancelReplaceRequest_ExpireTime) :: (("427",enc_opt encode_GTBookingInst msg.f_OrderCancelReplaceRequest_GTBookingInst) :: (("12",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_Commission) :: (("13",enc_opt encode_CommType msg.f_OrderCancelReplaceRequest_CommType) :: (("47",enc_opt encode_Rule80A msg.f_OrderCancelReplaceRequest_Rule80A) :: (("121",enc_opt encode_ForexReq msg.f_OrderCancelReplaceRequest_ForexReq) :: (("120",enc_opt encode_Currency msg.f_OrderCancelReplaceRequest_SettlCurrency) :: (("58",enc_opt encode_string msg.f_OrderCancelReplaceRequest_Text) :: (("354",enc_opt encode_int msg.f_OrderCancelReplaceRequest_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrderCancelReplaceRequest_EncodedText) :: (("193",enc_opt encode_LocalMktDate msg.f_OrderCancelReplaceRequest_FutSettDate2) :: (("192",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_OrderQty2) :: (("77",enc_opt encode_OpenClose msg.f_OrderCancelReplaceRequest_OpenClose) :: (("203",enc_opt encode_CoveredOrUncovered msg.f_OrderCancelReplaceRequest_CoveredOrUncovered) :: (("204",enc_opt encode_CustomerOrFirm msg.f_OrderCancelReplaceRequest_CustomerOrFirm) :: (("210",enc_opt encode_float_6 msg.f_OrderCancelReplaceRequest_MaxShow) :: (("114",enc_opt encode_LocateReqd msg.f_OrderCancelReplaceRequest_LocateReqd) :: (("439",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ClearingFirm) :: (("440",enc_opt encode_string msg.f_OrderCancelReplaceRequest_ClearingAccount) :: (("9941",enc_opt encode_TechnicalOrdType msg.f_OrderCancelReplaceRequest_TechnicalOrdType) :: (("9952",enc_opt encode_string msg.f_OrderCancelReplaceRequest_FreeText) :: (("9938",enc_opt encode_ClearingHandlingType msg.f_OrderCancelReplaceRequest_ClearingHandlingType) :: (("9949",enc_opt encode_string msg.f_OrderCancelReplaceRequest_MIC) :: (("21017",enc_opt encode_int msg.f_OrderCancelReplaceRequest_DEAIndicator) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_OrderCancelReplaceRequest_Parties) ((@) (enc_repeat encode_OrderCancelReplaceRequestTradingSessions "386" msg.f_OrderCancelReplaceRequest_OrderCancelReplaceRequestTradingSessions) ((@) (enc_repeat encode_OrderCancelReplaceRequestAllocs "78" msg.f_OrderCancelReplaceRequest_OrderCancelReplaceRequestAllocs) [])))
;;

let encode_OrderCancelRequest (msg)  =
    (@) (("41",enc_opt encode_string msg.f_OrderCancelRequest_OrigClOrdID) :: (("37",enc_opt encode_string msg.f_OrderCancelRequest_OrderID) :: (("11",enc_opt encode_string msg.f_OrderCancelRequest_ClOrdID) :: (("66",enc_opt encode_string msg.f_OrderCancelRequest_ListID) :: (("1",enc_opt encode_string msg.f_OrderCancelRequest_Account) :: (("109",enc_opt encode_string msg.f_OrderCancelRequest_ClientID) :: (("76",enc_opt encode_string msg.f_OrderCancelRequest_ExecBroker) :: (("55",enc_opt encode_string msg.f_OrderCancelRequest_Symbol) :: (("65",enc_opt encode_string msg.f_OrderCancelRequest_SymbolSfx) :: (("48",enc_opt encode_string msg.f_OrderCancelRequest_SecurityID) :: (("22",enc_opt encode_IDSource msg.f_OrderCancelRequest_IDSource) :: (("167",enc_opt encode_SecurityType msg.f_OrderCancelRequest_SecurityType) :: (("200",enc_opt encode_MonthYear msg.f_OrderCancelRequest_MaturityMonthYear) :: (("205",enc_opt encode_int msg.f_OrderCancelRequest_MaturityDay) :: (("201",enc_opt encode_PutOrCall msg.f_OrderCancelRequest_PutOrCall) :: (("202",enc_opt encode_float_4 msg.f_OrderCancelRequest_StrikePrice) :: (("206",enc_opt encode_char msg.f_OrderCancelRequest_OptAttribute) :: (("231",enc_opt encode_float msg.f_OrderCancelRequest_ContractMultiplier) :: (("223",enc_opt encode_float msg.f_OrderCancelRequest_CouponRate) :: (("207",enc_opt encode_Exchange msg.f_OrderCancelRequest_SecurityExchange) :: (("106",enc_opt encode_string msg.f_OrderCancelRequest_Issuer) :: (("348",enc_opt encode_int msg.f_OrderCancelRequest_EncodedIssuerLen) :: (("349",enc_opt encode_string msg.f_OrderCancelRequest_EncodedIssuer) :: (("107",enc_opt encode_string msg.f_OrderCancelRequest_SecurityDesc) :: (("350",enc_opt encode_int msg.f_OrderCancelRequest_EncodedSecurityDescLen) :: (("351",enc_opt encode_string msg.f_OrderCancelRequest_EncodedSecurityDesc) :: (("54",enc_opt encode_Side msg.f_OrderCancelRequest_Side) :: (("60",enc_opt encode_UTCTimestamp msg.f_OrderCancelRequest_TransactTime) :: (("38",enc_opt encode_float_6 msg.f_OrderCancelRequest_OrderQty) :: (("152",enc_opt encode_float_6 msg.f_OrderCancelRequest_CashOrderQty) :: (("376",enc_opt encode_string msg.f_OrderCancelRequest_ComplianceID) :: (("377",enc_opt encode_SolicitedFlag msg.f_OrderCancelRequest_SolicitedFlag) :: (("58",enc_opt encode_string msg.f_OrderCancelRequest_Text) :: (("354",enc_opt encode_int msg.f_OrderCancelRequest_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrderCancelRequest_EncodedText) :: (("9949",enc_opt encode_string msg.f_OrderCancelRequest_MIC) :: (("15",enc_opt encode_Currency msg.f_OrderCancelRequest_Currency) :: []))))))))))))))))))))))))))))))))))))) []
;;

let encode_OrderMassCancelRequest (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_OrderMassCancelRequest_UnderlyingInstrument) ((@) (encode_Instrument msg.f_OrderMassCancelRequest_Instrument) ((@) (("11",enc_opt encode_string msg.f_OrderMassCancelRequest_ClOrdID) :: (("526",enc_opt encode_string msg.f_OrderMassCancelRequest_SecondaryClOrdID) :: (("530",enc_opt encode_MassCancelRequestType msg.f_OrderMassCancelRequest_MassCancelRequestType) :: (("336",enc_opt encode_string msg.f_OrderMassCancelRequest_TradingSessionID) :: (("625",enc_opt encode_string msg.f_OrderMassCancelRequest_TradingSessionSubID) :: (("54",enc_opt encode_Side msg.f_OrderMassCancelRequest_Side) :: (("60",enc_opt encode_UTCTimestamp msg.f_OrderMassCancelRequest_TransactTime) :: (("58",enc_opt encode_string msg.f_OrderMassCancelRequest_Text) :: (("354",enc_opt encode_int msg.f_OrderMassCancelRequest_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrderMassCancelRequest_EncodedText) :: (("1",enc_opt encode_string msg.f_OrderMassCancelRequest_Account) :: (("55",enc_opt encode_string msg.f_OrderMassCancelRequest_Symbol) :: (("9945",enc_opt encode_string msg.f_OrderMassCancelRequest_ClassID) :: (("9941",enc_opt encode_TechnicalOrdType msg.f_OrderMassCancelRequest_TechnicalOrdType) :: (("47",enc_opt encode_Rule80A msg.f_OrderMassCancelRequest_Rule80A) :: (("9960",enc_opt encode_string msg.f_OrderMassCancelRequest_CancelByLocationID) :: [])))))))))))))))) []))
;;

let encode_ExecutionReport (msg)  =
    (@) (("37",enc_opt encode_string msg.f_ExecutionReport_OrderID) :: (("198",enc_opt encode_string msg.f_ExecutionReport_SecondaryOrderID) :: (("11",enc_opt encode_string msg.f_ExecutionReport_ClOrdID) :: (("41",enc_opt encode_string msg.f_ExecutionReport_OrigClOrdID) :: (("109",enc_opt encode_string msg.f_ExecutionReport_ClientID) :: (("76",enc_opt encode_string msg.f_ExecutionReport_ExecBroker) :: (("66",enc_opt encode_string msg.f_ExecutionReport_ListID) :: (("17",enc_opt encode_string msg.f_ExecutionReport_ExecID) :: (("20",enc_opt encode_ExecTransType msg.f_ExecutionReport_ExecTransType) :: (("19",enc_opt encode_string msg.f_ExecutionReport_ExecRefID) :: (("150",enc_opt encode_ExecType msg.f_ExecutionReport_ExecType) :: (("39",enc_opt encode_OrdStatus msg.f_ExecutionReport_OrdStatus) :: (("103",enc_opt encode_OrdRejReason msg.f_ExecutionReport_OrdRejReason) :: (("378",enc_opt encode_ExecRestatementReason msg.f_ExecutionReport_ExecRestatementReason) :: (("1",enc_opt encode_string msg.f_ExecutionReport_Account) :: (("63",enc_opt encode_SettlmntTyp msg.f_ExecutionReport_SettlmntTyp) :: (("64",enc_opt encode_LocalMktDate msg.f_ExecutionReport_FutSettDate) :: (("55",enc_opt encode_string msg.f_ExecutionReport_Symbol) :: (("65",enc_opt encode_string msg.f_ExecutionReport_SymbolSfx) :: (("48",enc_opt encode_string msg.f_ExecutionReport_SecurityID) :: (("22",enc_opt encode_IDSource msg.f_ExecutionReport_IDSource) :: (("167",enc_opt encode_SecurityType msg.f_ExecutionReport_SecurityType) :: (("200",enc_opt encode_MonthYear msg.f_ExecutionReport_MaturityMonthYear) :: (("205",enc_opt encode_int msg.f_ExecutionReport_MaturityDay) :: (("201",enc_opt encode_PutOrCall msg.f_ExecutionReport_PutOrCall) :: (("202",enc_opt encode_float_4 msg.f_ExecutionReport_StrikePrice) :: (("206",enc_opt encode_char msg.f_ExecutionReport_OptAttribute) :: (("231",enc_opt encode_float msg.f_ExecutionReport_ContractMultiplier) :: (("223",enc_opt encode_float msg.f_ExecutionReport_CouponRate) :: (("207",enc_opt encode_Exchange msg.f_ExecutionReport_SecurityExchange) :: (("106",enc_opt encode_string msg.f_ExecutionReport_Issuer) :: (("348",enc_opt encode_int msg.f_ExecutionReport_EncodedIssuerLen) :: (("349",enc_opt encode_string msg.f_ExecutionReport_EncodedIssuer) :: (("107",enc_opt encode_string msg.f_ExecutionReport_SecurityDesc) :: (("350",enc_opt encode_int msg.f_ExecutionReport_EncodedSecurityDescLen) :: (("351",enc_opt encode_string msg.f_ExecutionReport_EncodedSecurityDesc) :: (("54",enc_opt encode_Side msg.f_ExecutionReport_Side) :: (("38",enc_opt encode_float_6 msg.f_ExecutionReport_OrderQty) :: (("152",enc_opt encode_float_6 msg.f_ExecutionReport_CashOrderQty) :: (("40",enc_opt encode_OrdType msg.f_ExecutionReport_OrdType) :: (("44",enc_opt encode_float_4 msg.f_ExecutionReport_Price) :: (("99",enc_opt encode_float_4 msg.f_ExecutionReport_StopPx) :: (("211",enc_opt encode_float_6 msg.f_ExecutionReport_PegDifference) :: (("388",enc_opt encode_DiscretionInst msg.f_ExecutionReport_DiscretionInst) :: (("389",enc_opt encode_float_6 msg.f_ExecutionReport_DiscretionOffset) :: (("15",enc_opt encode_Currency msg.f_ExecutionReport_Currency) :: (("376",enc_opt encode_string msg.f_ExecutionReport_ComplianceID) :: (("377",enc_opt encode_SolicitedFlag msg.f_ExecutionReport_SolicitedFlag) :: (("59",enc_opt encode_TimeInForce msg.f_ExecutionReport_TimeInForce) :: (("168",enc_opt encode_UTCTimestamp msg.f_ExecutionReport_EffectiveTime) :: (("432",enc_opt encode_LocalMktDate msg.f_ExecutionReport_ExpireDate) :: (("126",enc_opt encode_UTCTimestamp msg.f_ExecutionReport_ExpireTime) :: (("18",enc_opt encode_ExecInst msg.f_ExecutionReport_ExecInst) :: (("47",enc_opt encode_Rule80A msg.f_ExecutionReport_Rule80A) :: (("32",enc_opt encode_float_6 msg.f_ExecutionReport_LastShares) :: (("31",enc_opt encode_float_4 msg.f_ExecutionReport_LastPx) :: (("194",enc_opt encode_float_4 msg.f_ExecutionReport_LastSpotRate) :: (("195",enc_opt encode_float_6 msg.f_ExecutionReport_LastForwardPoints) :: (("30",enc_opt encode_Exchange msg.f_ExecutionReport_LastMkt) :: (("336",enc_opt encode_string msg.f_ExecutionReport_TradingSessionID) :: (("29",enc_opt encode_LastCapacity msg.f_ExecutionReport_LastCapacity) :: (("151",enc_opt encode_float_6 msg.f_ExecutionReport_LeavesQty) :: (("14",enc_opt encode_float_6 msg.f_ExecutionReport_CumQty) :: (("6",enc_opt encode_float_4 msg.f_ExecutionReport_AvgPx) :: (("424",enc_opt encode_float_6 msg.f_ExecutionReport_DayOrderQty) :: (("425",enc_opt encode_float_6 msg.f_ExecutionReport_DayCumQty) :: (("426",enc_opt encode_float_4 msg.f_ExecutionReport_DayAvgPx) :: (("427",enc_opt encode_GTBookingInst msg.f_ExecutionReport_GTBookingInst) :: (("75",enc_opt encode_LocalMktDate msg.f_ExecutionReport_TradeDate) :: (("60",enc_opt encode_UTCTimestamp msg.f_ExecutionReport_TransactTime) :: (("113",enc_opt encode_ReportToExch msg.f_ExecutionReport_ReportToExch) :: (("12",enc_opt encode_float_6 msg.f_ExecutionReport_Commission) :: (("13",enc_opt encode_CommType msg.f_ExecutionReport_CommType) :: (("381",enc_opt encode_float_6 msg.f_ExecutionReport_GrossTradeAmt) :: (("119",enc_opt encode_float_6 msg.f_ExecutionReport_SettlCurrAmt) :: (("120",enc_opt encode_Currency msg.f_ExecutionReport_SettlCurrency) :: (("155",enc_opt encode_float msg.f_ExecutionReport_SettlCurrFxRate) :: (("156",enc_opt encode_char msg.f_ExecutionReport_SettlCurrFxRateCalc) :: (("21",enc_opt encode_HandlInst msg.f_ExecutionReport_HandlInst) :: (("110",enc_opt encode_float_6 msg.f_ExecutionReport_MinQty) :: (("111",enc_opt encode_float_6 msg.f_ExecutionReport_MaxFloor) :: (("77",enc_opt encode_OpenClose msg.f_ExecutionReport_OpenClose) :: (("210",enc_opt encode_float_6 msg.f_ExecutionReport_MaxShow) :: (("58",enc_opt encode_string msg.f_ExecutionReport_Text) :: (("354",enc_opt encode_int msg.f_ExecutionReport_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_ExecutionReport_EncodedText) :: (("193",enc_opt encode_LocalMktDate msg.f_ExecutionReport_FutSettDate2) :: (("192",enc_opt encode_float_6 msg.f_ExecutionReport_OrderQty2) :: (("439",enc_opt encode_string msg.f_ExecutionReport_ClearingFirm) :: (("440",enc_opt encode_string msg.f_ExecutionReport_ClearingAccount) :: (("442",enc_opt encode_MultiLegReportingType msg.f_ExecutionReport_MultiLegReportingType) :: (("549",enc_opt encode_CrossType msg.f_ExecutionReport_CrossType) :: (("9941",enc_opt encode_TechnicalOrdType msg.f_ExecutionReport_TechnicalOrdType) :: (("9952",enc_opt encode_string msg.f_ExecutionReport_FreeText) :: (("9938",enc_opt encode_ClearingHandlingType msg.f_ExecutionReport_ClearingHandlingType) :: (("9731",enc_opt encode_int msg.f_ExecutionReport_UTPExID) :: (("9730",enc_opt encode_LiquidityIndicator msg.f_ExecutionReport_LiquidityIndicator) :: (("9955",enc_opt encode_int msg.f_ExecutionReport_ErrorCode) :: (("9949",enc_opt encode_string msg.f_ExecutionReport_MIC) :: (("10078",enc_opt encode_BookIndicator msg.f_ExecutionReport_BookIndicator) :: (("10079",enc_opt encode_BrokerPrioritization msg.f_ExecutionReport_BrokerPrioritization) :: (("10080",enc_opt encode_UTCTimeOnly msg.f_ExecutionReport_IMPTimestamp) :: (("21017",enc_opt encode_int msg.f_ExecutionReport_DEAIndicator) :: (("8015",enc_opt encode_OrderAttributeTypes msg.f_ExecutionReport_OrderAttributeTypes) :: [])))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_ContraGrp "382" msg.f_ExecutionReport_ContraGrp) ((@) (enc_repeat encode_Parties "453" msg.f_ExecutionReport_Parties) ((@) (enc_repeat encode_ExecutionReportContraBrokers "382" msg.f_ExecutionReport_ExecutionReportContraBrokers) [])))
;;

let encode_OrderCancelReject (msg)  =
    (@) (("37",enc_opt encode_string msg.f_OrderCancelReject_OrderID) :: (("198",enc_opt encode_string msg.f_OrderCancelReject_SecondaryOrderID) :: (("11",enc_opt encode_string msg.f_OrderCancelReject_ClOrdID) :: (("41",enc_opt encode_string msg.f_OrderCancelReject_OrigClOrdID) :: (("39",enc_opt encode_OrdStatus msg.f_OrderCancelReject_OrdStatus) :: (("109",enc_opt encode_string msg.f_OrderCancelReject_ClientID) :: (("76",enc_opt encode_string msg.f_OrderCancelReject_ExecBroker) :: (("66",enc_opt encode_string msg.f_OrderCancelReject_ListID) :: (("1",enc_opt encode_string msg.f_OrderCancelReject_Account) :: (("60",enc_opt encode_UTCTimestamp msg.f_OrderCancelReject_TransactTime) :: (("434",enc_opt encode_CxlRejResponseTo msg.f_OrderCancelReject_CxlRejResponseTo) :: (("102",enc_opt encode_CxlRejReason msg.f_OrderCancelReject_CxlRejReason) :: (("58",enc_opt encode_string msg.f_OrderCancelReject_Text) :: (("354",enc_opt encode_int msg.f_OrderCancelReject_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrderCancelReject_EncodedText) :: (("9955",enc_opt encode_int msg.f_OrderCancelReject_ErrorCode) :: (("55",enc_opt encode_string msg.f_OrderCancelReject_Symbol) :: (("18",enc_opt encode_ExecInst msg.f_OrderCancelReject_ExecInst) :: [])))))))))))))))))) []
;;

let encode_OrderMassCancelReport (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_OrderMassCancelReport_UnderlyingInstrument) ((@) (encode_Instrument msg.f_OrderMassCancelReport_Instrument) ((@) (("11",enc_opt encode_string msg.f_OrderMassCancelReport_ClOrdID) :: (("526",enc_opt encode_string msg.f_OrderMassCancelReport_SecondaryClOrdID) :: (("37",enc_opt encode_string msg.f_OrderMassCancelReport_OrderID) :: (("198",enc_opt encode_string msg.f_OrderMassCancelReport_SecondaryOrderID) :: (("530",enc_opt encode_MassCancelRequestType msg.f_OrderMassCancelReport_MassCancelRequestType) :: (("531",enc_opt encode_MassCancelResponse msg.f_OrderMassCancelReport_MassCancelResponse) :: (("532",enc_opt encode_MassCancelRejectReason msg.f_OrderMassCancelReport_MassCancelRejectReason) :: (("533",enc_opt encode_int msg.f_OrderMassCancelReport_TotalAffectedOrders) :: (("336",enc_opt encode_string msg.f_OrderMassCancelReport_TradingSessionID) :: (("625",enc_opt encode_string msg.f_OrderMassCancelReport_TradingSessionSubID) :: (("54",enc_opt encode_Side msg.f_OrderMassCancelReport_Side) :: (("60",enc_opt encode_UTCTimestamp msg.f_OrderMassCancelReport_TransactTime) :: (("58",enc_opt encode_string msg.f_OrderMassCancelReport_Text) :: (("354",enc_opt encode_int msg.f_OrderMassCancelReport_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrderMassCancelReport_EncodedText) :: (("55",enc_opt encode_string msg.f_OrderMassCancelReport_Symbol) :: (("9945",enc_opt encode_string msg.f_OrderMassCancelReport_ClassID) :: (("9941",enc_opt encode_TechnicalOrdType msg.f_OrderMassCancelReport_TechnicalOrdType) :: (("47",enc_opt encode_Rule80A msg.f_OrderMassCancelReport_Rule80A) :: (("1",enc_opt encode_string msg.f_OrderMassCancelReport_Account) :: (("9960",enc_opt encode_string msg.f_OrderMassCancelReport_CancelByLocationID) :: (("9949",enc_opt encode_string msg.f_OrderMassCancelReport_MIC) :: [])))))))))))))))))))))) ((@) (enc_repeat encode_AffectedOrdGrp "534" msg.f_OrderMassCancelReport_AffectedOrdGrp) [])))
;;

let encode_app_msg_data (msg)  =
    (match msg with
        | FIX_Full_Msg_OrderSingle msg -> (encode_OrderSingle msg)
        | FIX_Full_Msg_OrderCancelReplaceRequest msg -> (encode_OrderCancelReplaceRequest msg)
        | FIX_Full_Msg_OrderCancelRequest msg -> (encode_OrderCancelRequest msg)
        | FIX_Full_Msg_OrderMassCancelRequest msg -> (encode_OrderMassCancelRequest msg)
        | FIX_Full_Msg_ExecutionReport msg -> (encode_ExecutionReport msg)
        | FIX_Full_Msg_OrderCancelReject msg -> (encode_OrderCancelReject msg)
        | FIX_Full_Msg_OrderMassCancelReport msg -> (encode_OrderMassCancelReport msg)
    )
;;
