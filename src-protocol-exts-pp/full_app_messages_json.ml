(* Aesthetic Integration copyright 2018 *)
open Base_types_json;;
open Datetime_json;;
open Full_app_enums_json;;
open Full_app_messages;;
open Full_app_records_json;;
open Json_generator_utils;;
open Yojson;;

let executionreport_to_json (x)  : json =
    assoc_filter_nulls (("Instrument",instrument_to_json x.f_ExecutionReport_Instrument) :: (("FinancingDetails",financingdetails_to_json x.f_ExecutionReport_FinancingDetails) :: (("OrderQtyData",orderqtydata_to_json x.f_ExecutionReport_OrderQtyData) :: (("PegInstructions",peginstructions_to_json x.f_ExecutionReport_PegInstructions) :: (("DiscretionInstructions",discretioninstructions_to_json x.f_ExecutionReport_DiscretionInstructions) :: (("CommissionData",commissiondata_to_json x.f_ExecutionReport_CommissionData) :: (("SpreadOrBenchmarkCurveData",spreadorbenchmarkcurvedata_to_json x.f_ExecutionReport_SpreadOrBenchmarkCurveData) :: (("YieldData",yielddata_to_json x.f_ExecutionReport_YieldData) :: (("OrderID",string_opt_to_json x.f_ExecutionReport_OrderID) :: (("SecondaryOrderID",string_opt_to_json x.f_ExecutionReport_SecondaryOrderID) :: (("SecondaryClOrdID",string_opt_to_json x.f_ExecutionReport_SecondaryClOrdID) :: (("SecondaryExecID",string_opt_to_json x.f_ExecutionReport_SecondaryExecID) :: (("ClOrdID",string_opt_to_json x.f_ExecutionReport_ClOrdID) :: (("OrigClOrdID",string_opt_to_json x.f_ExecutionReport_OrigClOrdID) :: (("ClOrdLinkID",string_opt_to_json x.f_ExecutionReport_ClOrdLinkID) :: (("QuoteRespID",string_opt_to_json x.f_ExecutionReport_QuoteRespID) :: (("OrdStatusReqID",string_opt_to_json x.f_ExecutionReport_OrdStatusReqID) :: (("MassStatusReqID",string_opt_to_json x.f_ExecutionReport_MassStatusReqID) :: (("TotNumReports",int_opt_to_json x.f_ExecutionReport_TotNumReports) :: (("LastRptRequested",bool_opt_to_json x.f_ExecutionReport_LastRptRequested) :: (("TradeOriginationDate",localmktdate_opt_to_json x.f_ExecutionReport_TradeOriginationDate) :: (("ListID",string_opt_to_json x.f_ExecutionReport_ListID) :: (("CrossID",string_opt_to_json x.f_ExecutionReport_CrossID) :: (("OrigCrossID",string_opt_to_json x.f_ExecutionReport_OrigCrossID) :: (("CrossType",crosstype_opt_to_json x.f_ExecutionReport_CrossType) :: (("ExecID",string_opt_to_json x.f_ExecutionReport_ExecID) :: (("ExecRefID",string_opt_to_json x.f_ExecutionReport_ExecRefID) :: (("ExecType",exectype_opt_to_json x.f_ExecutionReport_ExecType) :: (("OrdStatus",ordstatus_opt_to_json x.f_ExecutionReport_OrdStatus) :: (("WorkingIndicator",workingindicator_opt_to_json x.f_ExecutionReport_WorkingIndicator) :: (("OrdRejReason",ordrejreason_opt_to_json x.f_ExecutionReport_OrdRejReason) :: (("ExecRestatementReason",execrestatementreason_opt_to_json x.f_ExecutionReport_ExecRestatementReason) :: (("Account",string_opt_to_json x.f_ExecutionReport_Account) :: (("AcctIDSource",acctidsource_opt_to_json x.f_ExecutionReport_AcctIDSource) :: (("AccountType",accounttype_opt_to_json x.f_ExecutionReport_AccountType) :: (("DayBookingInst",daybookinginst_opt_to_json x.f_ExecutionReport_DayBookingInst) :: (("BookingUnit",bookingunit_opt_to_json x.f_ExecutionReport_BookingUnit) :: (("PreallocMethod",preallocmethod_opt_to_json x.f_ExecutionReport_PreallocMethod) :: (("SettlType",settltype_opt_to_json x.f_ExecutionReport_SettlType) :: (("SettlDate",localmktdate_opt_to_json x.f_ExecutionReport_SettlDate) :: (("CashMargin",cashmargin_opt_to_json x.f_ExecutionReport_CashMargin) :: (("ClearingFeeIndicator",clearingfeeindicator_opt_to_json x.f_ExecutionReport_ClearingFeeIndicator) :: (("Side",side_opt_to_json x.f_ExecutionReport_Side) :: (("QtyType",qtytype_opt_to_json x.f_ExecutionReport_QtyType) :: (("OrdType",ordtype_opt_to_json x.f_ExecutionReport_OrdType) :: (("PriceType",pricetype_opt_to_json x.f_ExecutionReport_PriceType) :: (("Price",float_6_opt_to_json x.f_ExecutionReport_Price) :: (("StopPx",float_6_opt_to_json x.f_ExecutionReport_StopPx) :: (("PeggedPrice",float_6_opt_to_json x.f_ExecutionReport_PeggedPrice) :: (("DiscretionPrice",float_6_opt_to_json x.f_ExecutionReport_DiscretionPrice) :: (("TargetStrategy",targetstrategy_opt_to_json x.f_ExecutionReport_TargetStrategy) :: (("TargetStrategyParameters",string_opt_to_json x.f_ExecutionReport_TargetStrategyParameters) :: (("ParticipationRate",float_6_opt_to_json x.f_ExecutionReport_ParticipationRate) :: (("TargetStrategyPerformance",float_opt_to_json x.f_ExecutionReport_TargetStrategyPerformance) :: (("Currency",currency_opt_to_json x.f_ExecutionReport_Currency) :: (("ComplianceID",string_opt_to_json x.f_ExecutionReport_ComplianceID) :: (("SolicitedFlag",solicitedflag_opt_to_json x.f_ExecutionReport_SolicitedFlag) :: (("TimeInForce",timeinforce_opt_to_json x.f_ExecutionReport_TimeInForce) :: (("EffectiveTime",utctimestamp_opt_to_json x.f_ExecutionReport_EffectiveTime) :: (("ExpireDate",localmktdate_opt_to_json x.f_ExecutionReport_ExpireDate) :: (("ExpireTime",utctimestamp_opt_to_json x.f_ExecutionReport_ExpireTime) :: (("ExecInst",execinst_opt_to_json x.f_ExecutionReport_ExecInst) :: (("OrderCapacity",ordercapacity_opt_to_json x.f_ExecutionReport_OrderCapacity) :: (("OrderRestrictions",orderrestrictions_opt_to_json x.f_ExecutionReport_OrderRestrictions) :: (("CustOrderCapacity",custordercapacity_opt_to_json x.f_ExecutionReport_CustOrderCapacity) :: (("LastQty",float_6_opt_to_json x.f_ExecutionReport_LastQty) :: (("UnderlyingLastQty",float_6_opt_to_json x.f_ExecutionReport_UnderlyingLastQty) :: (("LastPx",float_6_opt_to_json x.f_ExecutionReport_LastPx) :: (("UnderlyingLastPx",float_6_opt_to_json x.f_ExecutionReport_UnderlyingLastPx) :: (("LastParPx",float_6_opt_to_json x.f_ExecutionReport_LastParPx) :: (("LastSpotRate",float_6_opt_to_json x.f_ExecutionReport_LastSpotRate) :: (("LastForwardPoints",float_6_opt_to_json x.f_ExecutionReport_LastForwardPoints) :: (("LastMkt",exchange_opt_to_json x.f_ExecutionReport_LastMkt) :: (("TradingSessionID",string_opt_to_json x.f_ExecutionReport_TradingSessionID) :: (("TradingSessionSubID",string_opt_to_json x.f_ExecutionReport_TradingSessionSubID) :: (("TimeBracket",string_opt_to_json x.f_ExecutionReport_TimeBracket) :: (("LastCapacity",lastcapacity_opt_to_json x.f_ExecutionReport_LastCapacity) :: (("LeavesQty",float_6_opt_to_json x.f_ExecutionReport_LeavesQty) :: (("CumQty",float_6_opt_to_json x.f_ExecutionReport_CumQty) :: (("AvgPx",float_6_opt_to_json x.f_ExecutionReport_AvgPx) :: (("DayOrderQty",float_6_opt_to_json x.f_ExecutionReport_DayOrderQty) :: (("DayCumQty",float_6_opt_to_json x.f_ExecutionReport_DayCumQty) :: (("DayAvgPx",float_6_opt_to_json x.f_ExecutionReport_DayAvgPx) :: (("GTBookingInst",gtbookinginst_opt_to_json x.f_ExecutionReport_GTBookingInst) :: (("TradeDate",localmktdate_opt_to_json x.f_ExecutionReport_TradeDate) :: (("TransactTime",utctimestamp_opt_to_json x.f_ExecutionReport_TransactTime) :: (("ReportToExch",reporttoexch_opt_to_json x.f_ExecutionReport_ReportToExch) :: (("GrossTradeAmt",float_6_opt_to_json x.f_ExecutionReport_GrossTradeAmt) :: (("NumDaysInterest",int_opt_to_json x.f_ExecutionReport_NumDaysInterest) :: (("ExDate",localmktdate_opt_to_json x.f_ExecutionReport_ExDate) :: (("AccruedInterestRate",float_6_opt_to_json x.f_ExecutionReport_AccruedInterestRate) :: (("AccruedInterestAmt",float_6_opt_to_json x.f_ExecutionReport_AccruedInterestAmt) :: (("InterestAtMaturity",float_6_opt_to_json x.f_ExecutionReport_InterestAtMaturity) :: (("EndAccruedInterestAmt",float_6_opt_to_json x.f_ExecutionReport_EndAccruedInterestAmt) :: (("StartCash",float_6_opt_to_json x.f_ExecutionReport_StartCash) :: (("EndCash",float_6_opt_to_json x.f_ExecutionReport_EndCash) :: (("TradedFlatSwitch",tradedflatswitch_opt_to_json x.f_ExecutionReport_TradedFlatSwitch) :: (("BasisFeatureDate",localmktdate_opt_to_json x.f_ExecutionReport_BasisFeatureDate) :: (("BasisFeaturePrice",float_6_opt_to_json x.f_ExecutionReport_BasisFeaturePrice) :: (("Concession",float_6_opt_to_json x.f_ExecutionReport_Concession) :: (("TotalTakedown",float_6_opt_to_json x.f_ExecutionReport_TotalTakedown) :: (("NetMoney",float_6_opt_to_json x.f_ExecutionReport_NetMoney) :: (("SettlCurrAmt",float_6_opt_to_json x.f_ExecutionReport_SettlCurrAmt) :: (("SettlCurrency",currency_opt_to_json x.f_ExecutionReport_SettlCurrency) :: (("SettlCurrFxRate",float_opt_to_json x.f_ExecutionReport_SettlCurrFxRate) :: (("SettlCurrFxRateCalc",settlcurrfxratecalc_opt_to_json x.f_ExecutionReport_SettlCurrFxRateCalc) :: (("HandlInst",handlinst_opt_to_json x.f_ExecutionReport_HandlInst) :: (("MinQty",float_6_opt_to_json x.f_ExecutionReport_MinQty) :: (("MaxFloor",float_6_opt_to_json x.f_ExecutionReport_MaxFloor) :: (("PositionEffect",positioneffect_opt_to_json x.f_ExecutionReport_PositionEffect) :: (("MaxShow",float_6_opt_to_json x.f_ExecutionReport_MaxShow) :: (("BookingType",bookingtype_opt_to_json x.f_ExecutionReport_BookingType) :: (("Text",string_opt_to_json x.f_ExecutionReport_Text) :: (("EncodedTextLen",int_opt_to_json x.f_ExecutionReport_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_ExecutionReport_EncodedText) :: (("SettlDate2",localmktdate_opt_to_json x.f_ExecutionReport_SettlDate2) :: (("OrderQty2",float_6_opt_to_json x.f_ExecutionReport_OrderQty2) :: (("LastForwardPoints2",float_6_opt_to_json x.f_ExecutionReport_LastForwardPoints2) :: (("MultiLegReportingType",multilegreportingtype_opt_to_json x.f_ExecutionReport_MultiLegReportingType) :: (("CancellationRights",cancellationrights_opt_to_json x.f_ExecutionReport_CancellationRights) :: (("MoneyLaunderingStatus",moneylaunderingstatus_opt_to_json x.f_ExecutionReport_MoneyLaunderingStatus) :: (("RegistID",string_opt_to_json x.f_ExecutionReport_RegistID) :: (("Designation",string_opt_to_json x.f_ExecutionReport_Designation) :: (("TransBkdTime",utctimestamp_opt_to_json x.f_ExecutionReport_TransBkdTime) :: (("ExecValuationPoint",utctimestamp_opt_to_json x.f_ExecutionReport_ExecValuationPoint) :: (("ExecPriceType",execpricetype_opt_to_json x.f_ExecutionReport_ExecPriceType) :: (("ExecPriceAdjustment",float_opt_to_json x.f_ExecutionReport_ExecPriceAdjustment) :: (("PriorityIndicator",priorityindicator_opt_to_json x.f_ExecutionReport_PriorityIndicator) :: (("PriceImprovement",float_6_opt_to_json x.f_ExecutionReport_PriceImprovement) :: (("LastLiquidityInd",lastliquidityind_opt_to_json x.f_ExecutionReport_LastLiquidityInd) :: (("CopyMsgIndicator",bool_opt_to_json x.f_ExecutionReport_CopyMsgIndicator) :: (("Parties",rg_for_json parties_to_json x.f_ExecutionReport_Parties) :: (("ContraGrp",rg_for_json contragrp_to_json x.f_ExecutionReport_ContraGrp) :: (("UndInstrmtGrp",rg_for_json undinstrmtgrp_to_json x.f_ExecutionReport_UndInstrmtGrp) :: (("Stipulations",rg_for_json stipulations_to_json x.f_ExecutionReport_Stipulations) :: (("ContAmtGrp",rg_for_json contamtgrp_to_json x.f_ExecutionReport_ContAmtGrp) :: (("InstrmtLegExecGrp",rg_for_json instrmtlegexecgrp_to_json x.f_ExecutionReport_InstrmtLegExecGrp) :: (("MiscFeesGrp",rg_for_json miscfeesgrp_to_json x.f_ExecutionReport_MiscFeesGrp) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
;;

let newordersingle_to_json (x)  : json =
    assoc_filter_nulls (("Instrument",instrument_to_json x.f_NewOrderSingle_Instrument) :: (("FinancingDetails",financingdetails_to_json x.f_NewOrderSingle_FinancingDetails) :: (("OrderQtyData",orderqtydata_to_json x.f_NewOrderSingle_OrderQtyData) :: (("SpreadOrBenchmarkCurveData",spreadorbenchmarkcurvedata_to_json x.f_NewOrderSingle_SpreadOrBenchmarkCurveData) :: (("YieldData",yielddata_to_json x.f_NewOrderSingle_YieldData) :: (("CommissionData",commissiondata_to_json x.f_NewOrderSingle_CommissionData) :: (("PegInstructions",peginstructions_to_json x.f_NewOrderSingle_PegInstructions) :: (("DiscretionInstructions",discretioninstructions_to_json x.f_NewOrderSingle_DiscretionInstructions) :: (("ClOrdID",string_opt_to_json x.f_NewOrderSingle_ClOrdID) :: (("SecondaryClOrdID",string_opt_to_json x.f_NewOrderSingle_SecondaryClOrdID) :: (("ClOrdLinkID",string_opt_to_json x.f_NewOrderSingle_ClOrdLinkID) :: (("TradeOriginationDate",localmktdate_opt_to_json x.f_NewOrderSingle_TradeOriginationDate) :: (("TradeDate",localmktdate_opt_to_json x.f_NewOrderSingle_TradeDate) :: (("Account",string_opt_to_json x.f_NewOrderSingle_Account) :: (("AcctIDSource",acctidsource_opt_to_json x.f_NewOrderSingle_AcctIDSource) :: (("AccountType",accounttype_opt_to_json x.f_NewOrderSingle_AccountType) :: (("DayBookingInst",daybookinginst_opt_to_json x.f_NewOrderSingle_DayBookingInst) :: (("BookingUnit",bookingunit_opt_to_json x.f_NewOrderSingle_BookingUnit) :: (("PreallocMethod",preallocmethod_opt_to_json x.f_NewOrderSingle_PreallocMethod) :: (("AllocID",string_opt_to_json x.f_NewOrderSingle_AllocID) :: (("SettlType",settltype_opt_to_json x.f_NewOrderSingle_SettlType) :: (("SettlDate",localmktdate_opt_to_json x.f_NewOrderSingle_SettlDate) :: (("CashMargin",cashmargin_opt_to_json x.f_NewOrderSingle_CashMargin) :: (("ClearingFeeIndicator",clearingfeeindicator_opt_to_json x.f_NewOrderSingle_ClearingFeeIndicator) :: (("HandlInst",handlinst_opt_to_json x.f_NewOrderSingle_HandlInst) :: (("ExecInst",execinst_opt_to_json x.f_NewOrderSingle_ExecInst) :: (("MinQty",float_6_opt_to_json x.f_NewOrderSingle_MinQty) :: (("MaxFloor",float_6_opt_to_json x.f_NewOrderSingle_MaxFloor) :: (("ExDestination",exchange_opt_to_json x.f_NewOrderSingle_ExDestination) :: (("ProcessCode",processcode_opt_to_json x.f_NewOrderSingle_ProcessCode) :: (("PrevClosePx",float_6_opt_to_json x.f_NewOrderSingle_PrevClosePx) :: (("Side",side_opt_to_json x.f_NewOrderSingle_Side) :: (("LocateReqd",locatereqd_opt_to_json x.f_NewOrderSingle_LocateReqd) :: (("TransactTime",utctimestamp_opt_to_json x.f_NewOrderSingle_TransactTime) :: (("QtyType",qtytype_opt_to_json x.f_NewOrderSingle_QtyType) :: (("OrdType",ordtype_opt_to_json x.f_NewOrderSingle_OrdType) :: (("PriceType",pricetype_opt_to_json x.f_NewOrderSingle_PriceType) :: (("Price",float_6_opt_to_json x.f_NewOrderSingle_Price) :: (("StopPx",float_6_opt_to_json x.f_NewOrderSingle_StopPx) :: (("Currency",currency_opt_to_json x.f_NewOrderSingle_Currency) :: (("ComplianceID",string_opt_to_json x.f_NewOrderSingle_ComplianceID) :: (("SolicitedFlag",solicitedflag_opt_to_json x.f_NewOrderSingle_SolicitedFlag) :: (("IOIID",string_opt_to_json x.f_NewOrderSingle_IOIID) :: (("QuoteID",string_opt_to_json x.f_NewOrderSingle_QuoteID) :: (("TimeInForce",timeinforce_opt_to_json x.f_NewOrderSingle_TimeInForce) :: (("EffectiveTime",utctimestamp_opt_to_json x.f_NewOrderSingle_EffectiveTime) :: (("ExpireDate",localmktdate_opt_to_json x.f_NewOrderSingle_ExpireDate) :: (("ExpireTime",utctimestamp_opt_to_json x.f_NewOrderSingle_ExpireTime) :: (("GTBookingInst",gtbookinginst_opt_to_json x.f_NewOrderSingle_GTBookingInst) :: (("OrderCapacity",ordercapacity_opt_to_json x.f_NewOrderSingle_OrderCapacity) :: (("OrderRestrictions",orderrestrictions_opt_to_json x.f_NewOrderSingle_OrderRestrictions) :: (("CustOrderCapacity",custordercapacity_opt_to_json x.f_NewOrderSingle_CustOrderCapacity) :: (("ForexReq",forexreq_opt_to_json x.f_NewOrderSingle_ForexReq) :: (("SettlCurrency",currency_opt_to_json x.f_NewOrderSingle_SettlCurrency) :: (("BookingType",bookingtype_opt_to_json x.f_NewOrderSingle_BookingType) :: (("Text",string_opt_to_json x.f_NewOrderSingle_Text) :: (("EncodedTextLen",int_opt_to_json x.f_NewOrderSingle_EncodedTextLen) :: (("EncodedText",string_opt_to_json x.f_NewOrderSingle_EncodedText) :: (("SettlDate2",localmktdate_opt_to_json x.f_NewOrderSingle_SettlDate2) :: (("OrderQty2",float_6_opt_to_json x.f_NewOrderSingle_OrderQty2) :: (("Price2",float_6_opt_to_json x.f_NewOrderSingle_Price2) :: (("PositionEffect",positioneffect_opt_to_json x.f_NewOrderSingle_PositionEffect) :: (("CoveredOrUncovered",coveredoruncovered_opt_to_json x.f_NewOrderSingle_CoveredOrUncovered) :: (("MaxShow",float_6_opt_to_json x.f_NewOrderSingle_MaxShow) :: (("TargetStrategy",targetstrategy_opt_to_json x.f_NewOrderSingle_TargetStrategy) :: (("TargetStrategyParameters",string_opt_to_json x.f_NewOrderSingle_TargetStrategyParameters) :: (("ParticipationRate",float_6_opt_to_json x.f_NewOrderSingle_ParticipationRate) :: (("CancellationRights",cancellationrights_opt_to_json x.f_NewOrderSingle_CancellationRights) :: (("MoneyLaunderingStatus",moneylaunderingstatus_opt_to_json x.f_NewOrderSingle_MoneyLaunderingStatus) :: (("RegistID",string_opt_to_json x.f_NewOrderSingle_RegistID) :: (("Designation",string_opt_to_json x.f_NewOrderSingle_Designation) :: (("Parties",rg_for_json parties_to_json x.f_NewOrderSingle_Parties) :: (("PreAllocGrp",rg_for_json preallocgrp_to_json x.f_NewOrderSingle_PreAllocGrp) :: (("TrdgSesGrp",rg_for_json trdgsesgrp_to_json x.f_NewOrderSingle_TrdgSesGrp) :: (("UndInstrmtGrp",rg_for_json undinstrmtgrp_to_json x.f_NewOrderSingle_UndInstrmtGrp) :: (("Stipulations",rg_for_json stipulations_to_json x.f_NewOrderSingle_Stipulations) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
;;

let full_app_msg_to_json (x)  : json =
    (match x with
        | FIX_Full_Msg_ExecutionReport x -> (`Assoc (("ExecutionReport",executionreport_to_json x) :: []))
        | FIX_Full_Msg_NewOrderSingle x -> (`Assoc (("NewOrderSingle",newordersingle_to_json x) :: []))
    )
;;
