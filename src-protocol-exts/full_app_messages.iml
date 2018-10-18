(* Aesthetic Integration copyright 2018 *)
open Datetime;;
open Full_app_enums;;
open Full_app_records;;
open Full_app_tags;;
open Numeric;;
open TimeDefaults;;

(** The execution report message is used to:
 1. Confirm the receipt of an order
 2. Confirm changes to an existing order (i.e. accept cancel and replace requests)
 3. Relay order status information
 4. Relay fill information on working orders
 5. Relay fill information on tradeable or restricted tradeable quotes
 6. Reject orders
 7. Report post-trade fees calculations associated with a trade*)
type full_fix_executionreport_data = {
    (* OrderID is required to be unique for each chain of orders.*)
    f_ExecutionReport_OrderID : string option;
    (** Can be used to provide order id used by exchange or executing system.*)
    f_ExecutionReport_SecondaryOrderID : string option;
    f_ExecutionReport_SecondaryClOrdID : string option;
    f_ExecutionReport_SecondaryExecID : string option;
    (** Required for executions against electronically submitted orders which were assigned an ID by the institution or intermediary. Not required for orders manually entered by the broker or fund manager (for CIV orders).*)
    f_ExecutionReport_ClOrdID : string option;
    (** Conditionally required for response to an electronic Cancel or Cancel/Replace request (ExecType=PendingCancel, Replace, or Canceled). ClOrdID of the previous accepted order (NOT the initial order of the day) when canceling or replacing an order.*)
    f_ExecutionReport_OrigClOrdID : string option;
    f_ExecutionReport_ClOrdLinkID : string option;
    (** Required if responding to a QuoteResponse message. Echo back the Initiator’s value specified in the message.*)
    f_ExecutionReport_QuoteRespID : string option;
    (** Required if responding to and if provided on the Order Status Request message. Echo back the value provided by the requester.*)
    f_ExecutionReport_OrdStatusReqID : string option;
    (** Required if responding to a Order Mass Status Request. Echo back the value provided by the requester.*)
    f_ExecutionReport_MassStatusReqID : string option;
    (** Can be used when responding to an Order Mass Status Request to identify the total number of Execution Reports which will be returned.*)
    f_ExecutionReport_TotNumReports : int option;
    (** Can be used when responding to an Order Mass Status Request to indicate that this is the last Execution Reports which will be returned as a result of the request.*)
    f_ExecutionReport_LastRptRequested : bool option;
    (** Insert here the set of "Parties" (firm identification) fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_Parties : fix_rg_parties;
    f_ExecutionReport_TradeOriginationDate : fix_localmktdate option;
    (** Number of ContraBrokers repeating group instances.*)
    f_ExecutionReport_ContraGrp : fix_rg_contragrp;
    (** Required for executions against orders which were submitted as part of a list.*)
    f_ExecutionReport_ListID : string option;
    (** CrossID for the replacement order*)
    f_ExecutionReport_CrossID : string option;
    (** Must match original cross order. Same order chaining mechanism as ClOrdID/OrigClOrdID with single order Cancel/Replace.*)
    f_ExecutionReport_OrigCrossID : string option;
    f_ExecutionReport_CrossType : fix_crosstype option;
    (** Unique identifier of execution message as assigned by sell-side (broker, exchange, ECN) (will be 0 (zero) forExecType=I (Order Status)).*)
    f_ExecutionReport_ExecID : string option;
    (** Required for Trade Cancel and Trade Correct ExecType messages*)
    f_ExecutionReport_ExecRefID : string option;
    (** Describes the purpose of the execution report.*)
    f_ExecutionReport_ExecType : fix_exectype option;
    (** Describes the current state of a CHAIN of orders, same scope as OrderQty, CumQty, LeavesQty, and AvgPx*)
    f_ExecutionReport_OrdStatus : fix_ordstatus option;
    (** For optional use with OrdStatus = 0 (New)*)
    f_ExecutionReport_WorkingIndicator : fix_workingindicator option;
    (** For optional use with ExecType = 8 (Rejected)*)
    f_ExecutionReport_OrdRejReason : fix_ordrejreason option;
    (** Required for ExecType = D (Restated).*)
    f_ExecutionReport_ExecRestatementReason : fix_execrestatementreason option;
    (** Required for executions against electronically submitted orders which were assigned an account by the institution or intermediary*)
    f_ExecutionReport_Account : string option;
    f_ExecutionReport_AcctIDSource : fix_acctidsource option;
    (** Specifies type of account*)
    f_ExecutionReport_AccountType : fix_accounttype option;
    f_ExecutionReport_DayBookingInst : fix_daybookinginst option;
    f_ExecutionReport_BookingUnit : fix_bookingunit option;
    f_ExecutionReport_PreallocMethod : fix_preallocmethod option;
    f_ExecutionReport_SettlType : fix_settltype option;
    (** Takes precedence over SettlType value and conditionally required/omitted for specific SettlType values.*)
    f_ExecutionReport_SettlDate : fix_localmktdate option;
    f_ExecutionReport_CashMargin : fix_cashmargin option;
    f_ExecutionReport_ClearingFeeIndicator : fix_clearingfeeindicator option;
    (** Insert here the set of "Instrument" (symbology) fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_Instrument : fix_instrument;
    (** Insert here the set of "FinancingDetails" (symbology) fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_FinancingDetails : fix_financingdetails;
    (** Number of underlyings*)
    f_ExecutionReport_UndInstrmtGrp : fix_rg_undinstrmtgrp;
    f_ExecutionReport_Side : fix_side option;
    (** Insert here the set of "Stipulations" (repeating group of Fixed Income stipulations) fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_Stipulations : fix_rg_stipulations;
    f_ExecutionReport_QtyType : fix_qtytype option;
    (** Insert here the set of "OrderQtyData" fields defined in "Common Components of Application Messages"
     **Note: OrderQty field is required for Single Instrument Orders unless rejecting or acknowledging an order for a CashOrderQty or PercentOrder.*)
    f_ExecutionReport_OrderQtyData : fix_orderqtydata;
    f_ExecutionReport_OrdType : fix_ordtype option;
    f_ExecutionReport_PriceType : fix_pricetype option;
    (** Required if specified on the order*)
    f_ExecutionReport_Price : fix_float_6 option;
    (** Required if specified on the order*)
    f_ExecutionReport_StopPx : fix_float_6 option;
    (** Insert here the set of "PegInstruction" fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_PegInstructions : fix_peginstructions;
    (** Insert here the set of "DiscretionInstruction" fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_DiscretionInstructions : fix_discretioninstructions;
    (** The current price the order is pegged at*)
    f_ExecutionReport_PeggedPrice : fix_float_6 option;
    (** The current discretionary price of the order*)
    f_ExecutionReport_DiscretionPrice : fix_float_6 option;
    (** The target strategy of the order*)
    f_ExecutionReport_TargetStrategy : fix_targetstrategy option;
    (** For further specification of the TargetStrategy*)
    f_ExecutionReport_TargetStrategyParameters : string option;
    (** Mandatory for a TargetStrategy=Participate order and specifies the target particpation rate.
     For other order types optionally specifies a volume limit (i.e. do not be more than this percent of the market volume)*)
    f_ExecutionReport_ParticipationRate : fix_float_6 option;
    (** For communication of the performance of the order versus the target strategy*)
    f_ExecutionReport_TargetStrategyPerformance : fix_float option;
    f_ExecutionReport_Currency : fix_currency option;
    f_ExecutionReport_ComplianceID : string option;
    f_ExecutionReport_SolicitedFlag : fix_solicitedflag option;
    (** Absence of this field indicates Day order*)
    f_ExecutionReport_TimeInForce : fix_timeinforce option;
    (** Time specified on the order at which the order should be considered valid*)
    f_ExecutionReport_EffectiveTime : fix_utctimestamp option;
    (** Conditionally required if TimeInForce = GTD and ExpireTime is not specified.*)
    f_ExecutionReport_ExpireDate : fix_localmktdate option;
    (** Conditionally required if TimeInForce = GTD and ExpireDate is not specified.*)
    f_ExecutionReport_ExpireTime : fix_utctimestamp option;
    (** Can contain multiple instructions, space delimited.*)
    f_ExecutionReport_ExecInst : fix_execinst list option;
    f_ExecutionReport_OrderCapacity : fix_ordercapacity option;
    f_ExecutionReport_OrderRestrictions : fix_orderrestrictions list option;
    f_ExecutionReport_CustOrderCapacity : fix_custordercapacity option;
    (** Quantity (e.g. shares) bought/sold on this (last) fill. Required if ExecType = Trade or Trade Correct.
     If ExecType=Stopped, represents the quantity stopped/guaranteed/protected for.*)
    f_ExecutionReport_LastQty : fix_float_6 option;
    f_ExecutionReport_UnderlyingLastQty : fix_float_6 option;
    (** Price of this (last) fill. Required if ExecType = Trade or Trade Correct.
     Should represent the "all-in" (LastSpotRate + LastForwardPoints) rate for F/X orders. ).
     If ExecType=Stopped, represents the price stopped/guaranteed/protected at.*)
    f_ExecutionReport_LastPx : fix_float_6 option;
    f_ExecutionReport_UnderlyingLastPx : fix_float_6 option;
    (** Last price expressed in percent-of-par. Conditionally required for Fixed Income trades when LastPx is expressed in Yield, Spread, Discount or any other price type that is not percent-of-par.*)
    f_ExecutionReport_LastParPx : fix_float_6 option;
    (** Applicable for F/X orders*)
    f_ExecutionReport_LastSpotRate : fix_float_6 option;
    (** Applicable for F/X orders*)
    f_ExecutionReport_LastForwardPoints : fix_float_6 option;
    (** If ExecType = Trade (F), indicates the market where the trade was executed. If ExecType = New (0), indicates the market where the order was routed.*)
    f_ExecutionReport_LastMkt : fix_exchange option;
    f_ExecutionReport_TradingSessionID : string option;
    f_ExecutionReport_TradingSessionSubID : string option;
    f_ExecutionReport_TimeBracket : string option;
    f_ExecutionReport_LastCapacity : fix_lastcapacity option;
    (** Quantity open for further execution. If the OrdStatus is Canceled, DoneForTheDay, Expired, Calculated, or Rejected (in which case the order is no longer active) then LeavesQty could be 0, otherwise LeavesQty = OrderQty - CumQty.*)
    f_ExecutionReport_LeavesQty : fix_float_6 option;
    (** Currently executed quantity for chain of orders.*)
    f_ExecutionReport_CumQty : fix_float_6 option;
    f_ExecutionReport_AvgPx : fix_float_6 option;
    (** For GT orders on days following the day of the first trade.*)
    f_ExecutionReport_DayOrderQty : fix_float_6 option;
    (** For GT orders on days following the day of the first trade.*)
    f_ExecutionReport_DayCumQty : fix_float_6 option;
    (** For GT orders on days following the day of the first trade.*)
    f_ExecutionReport_DayAvgPx : fix_float_6 option;
    (** States whether executions are booked out or accumulated on a partially filled GT order*)
    f_ExecutionReport_GTBookingInst : fix_gtbookinginst option;
    (** Used when reporting other than current day trades.*)
    f_ExecutionReport_TradeDate : fix_localmktdate option;
    (** Time the transaction represented by this ExecutionReport occurred*)
    f_ExecutionReport_TransactTime : fix_utctimestamp option;
    f_ExecutionReport_ReportToExch : fix_reporttoexch option;
    (** Insert here the set of "CommissionData" fields defined in "Common Components of Application Messages"
     Note: On a fill/partial fill messages, it represents value for that fill/partial fill. On ExecType=Calculated, it represents cumulative value for the order. Monetary commission values are expressed in the currency reflected by the Currency field.*)
    f_ExecutionReport_CommissionData : fix_commissiondata;
    (** Insert here the set of "SpreadOrBenchmarkCurveData" (Fixed Income spread or benchmark curve) fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_SpreadOrBenchmarkCurveData : fix_spreadorbenchmarkcurvedata;
    (** Insert here the set of "YieldData" (yield-related) fields defined in "Common Components of Application Messages"*)
    f_ExecutionReport_YieldData : fix_yielddata;
    f_ExecutionReport_GrossTradeAmt : fix_float_6 option;
    f_ExecutionReport_NumDaysInterest : int option;
    f_ExecutionReport_ExDate : fix_localmktdate option;
    f_ExecutionReport_AccruedInterestRate : fix_float_6 option;
    f_ExecutionReport_AccruedInterestAmt : fix_float_6 option;
    (** For fixed income products which pay lump-sum interest at maturity.*)
    f_ExecutionReport_InterestAtMaturity : fix_float_6 option;
    (** For repurchase agreements the accrued interest on termination.*)
    f_ExecutionReport_EndAccruedInterestAmt : fix_float_6 option;
    (** For repurchase agreements the start (dirty) cash consideration*)
    f_ExecutionReport_StartCash : fix_float_6 option;
    (** For repurchase agreements the end (dirty) cash consideration*)
    f_ExecutionReport_EndCash : fix_float_6 option;
    f_ExecutionReport_TradedFlatSwitch : fix_tradedflatswitch option;
    f_ExecutionReport_BasisFeatureDate : fix_localmktdate option;
    f_ExecutionReport_BasisFeaturePrice : fix_float_6 option;
    f_ExecutionReport_Concession : fix_float_6 option;
    f_ExecutionReport_TotalTakedown : fix_float_6 option;
    (** Note: On a fill/partial fill messages, it represents value for that fill/partial fill, on ExecType=Calculated, it represents cumulative value for the order. Value expressed in the currency reflected by the Currency field.*)
    f_ExecutionReport_NetMoney : fix_float_6 option;
    (** Used to report results of forex accommodation trade*)
    f_ExecutionReport_SettlCurrAmt : fix_float_6 option;
    (** Used to report results of forex accommodation trade*)
    f_ExecutionReport_SettlCurrency : fix_currency option;
    (** Foreign exchange rate used to compute SettlCurrAmt from Currency to SettlCurrency*)
    f_ExecutionReport_SettlCurrFxRate : fix_float option;
    (** Specifies whether the SettlCurrFxRate should be multiplied or divided*)
    f_ExecutionReport_SettlCurrFxRateCalc : fix_settlcurrfxratecalc option;
    f_ExecutionReport_HandlInst : fix_handlinst option;
    f_ExecutionReport_MinQty : fix_float_6 option;
    f_ExecutionReport_MaxFloor : fix_float_6 option;
    (** For use in derivatives omnibus accounting*)
    f_ExecutionReport_PositionEffect : fix_positioneffect option;
    f_ExecutionReport_MaxShow : fix_float_6 option;
    (** Method for booking out this order. Used when notifying a broker that an order to be settled by that broker is to be booked out as an OTC derivative (e.g. CFD or similar). Absence of this field implies regular booking.*)
    f_ExecutionReport_BookingType : fix_bookingtype option;
    f_ExecutionReport_Text : string option;
    (** Must be set if EncodedText field is specified and must immediately precede it.*)
    f_ExecutionReport_EncodedTextLen : int option;
    (** Encoded (non-ASCII characters) representation of the Text field in the encoded format specified via the MessageEncoding field.*)
    f_ExecutionReport_EncodedText : string option;
    (** Can be used with OrdType = "Forex - Swap" to specify the "value date" for the future portion of a F/X swap.*)
    f_ExecutionReport_SettlDate2 : fix_localmktdate option;
    (** Can be used with OrdType = "Forex - Swap" to specify the order quantity for the future portion of a F/X swap.*)
    f_ExecutionReport_OrderQty2 : fix_float_6 option;
    (** Can be used with OrdType = "Forex - Swap" to specify the forward points (added to LastSpotRate) for the future portion of a F/X swap.*)
    f_ExecutionReport_LastForwardPoints2 : fix_float_6 option;
    (** Default is a single security if not specified.*)
    f_ExecutionReport_MultiLegReportingType : fix_multilegreportingtype option;
    (** For CIV - Optional*)
    f_ExecutionReport_CancellationRights : fix_cancellationrights option;
    f_ExecutionReport_MoneyLaunderingStatus : fix_moneylaunderingstatus option;
    (** Reference to Registration Instructions message for this Order.*)
    f_ExecutionReport_RegistID : string option;
    (** Supplementary registration information for this Order*)
    f_ExecutionReport_Designation : string option;
    (** For CIV - Optional*)
    f_ExecutionReport_TransBkdTime : fix_utctimestamp option;
    (** For CIV - Optional*)
    f_ExecutionReport_ExecValuationPoint : fix_utctimestamp option;
    (** For CIV - Optional*)
    f_ExecutionReport_ExecPriceType : fix_execpricetype option;
    (** For CIV - Optional*)
    f_ExecutionReport_ExecPriceAdjustment : fix_float option;
    f_ExecutionReport_PriorityIndicator : fix_priorityindicator option;
    f_ExecutionReport_PriceImprovement : fix_float_6 option;
    (** Applicable only on OrdStatus of Partial or Filled.*)
    f_ExecutionReport_LastLiquidityInd : fix_lastliquidityind option;
    (** Number of contract details in this message (number of repeating groups to follow)*)
    f_ExecutionReport_ContAmtGrp : fix_rg_contamtgrp;
    (** Number of legs
     Identifies a Multi-leg Execution if present and non-zero.*)
    f_ExecutionReport_InstrmtLegExecGrp : fix_rg_instrmtlegexecgrp;
    f_ExecutionReport_CopyMsgIndicator : bool option;
    (** Required if any miscellaneous fees are reported. Indicates number of repeating entries. Repeating group.
     ** Nested Repeating Group follows ***)
    f_ExecutionReport_MiscFeesGrp : fix_rg_miscfeesgrp
}
;;

(** The new order message type is used by institutions wishing to electronically submit securities and forex orders to a broker for execution.*)
type full_fix_newordersingle_data = {
    (* Unique identifier of the order as assigned by institution or by the intermediary (CIV term, not a hub/service bureau) with closest association with the investor.*)
    f_NewOrderSingle_ClOrdID : string option;
    f_NewOrderSingle_SecondaryClOrdID : string option;
    f_NewOrderSingle_ClOrdLinkID : string option;
    (** Insert here the set of "Parties" (firm identification) fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_Parties : fix_rg_parties;
    f_NewOrderSingle_TradeOriginationDate : fix_localmktdate option;
    f_NewOrderSingle_TradeDate : fix_localmktdate option;
    f_NewOrderSingle_Account : string option;
    f_NewOrderSingle_AcctIDSource : fix_acctidsource option;
    (** Type of account associated with the order (Origin)*)
    f_NewOrderSingle_AccountType : fix_accounttype option;
    f_NewOrderSingle_DayBookingInst : fix_daybookinginst option;
    f_NewOrderSingle_BookingUnit : fix_bookingunit option;
    f_NewOrderSingle_PreallocMethod : fix_preallocmethod option;
    (** Used to assign an overall allocation id to the block of preallocations*)
    f_NewOrderSingle_AllocID : string option;
    (** Number of repeating groups for pre-trade allocation*)
    f_NewOrderSingle_PreAllocGrp : fix_rg_preallocgrp;
    f_NewOrderSingle_SettlType : fix_settltype option;
    (** Takes precedence over SettlType value and conditionally required/omitted for specific SettlType values.*)
    f_NewOrderSingle_SettlDate : fix_localmktdate option;
    f_NewOrderSingle_CashMargin : fix_cashmargin option;
    f_NewOrderSingle_ClearingFeeIndicator : fix_clearingfeeindicator option;
    f_NewOrderSingle_HandlInst : fix_handlinst option;
    (** Can contain multiple instructions, space delimited. If OrdType=P, exactly one of the following values (ExecInst = L, R, M, P, O, T, W, a, d) must be specified.*)
    f_NewOrderSingle_ExecInst : fix_execinst list option;
    f_NewOrderSingle_MinQty : fix_float_6 option;
    f_NewOrderSingle_MaxFloor : fix_float_6 option;
    f_NewOrderSingle_ExDestination : fix_exchange option;
    (** Specifies the number of repeating TradingSessionIDs*)
    f_NewOrderSingle_TrdgSesGrp : fix_rg_trdgsesgrp;
    (** Used to identify soft trades at order entry.*)
    f_NewOrderSingle_ProcessCode : fix_processcode option;
    (** Insert here the set of "Instrument" (symbology) fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_Instrument : fix_instrument;
    (** Insert here the set of "FinancingDetails" (symbology) fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_FinancingDetails : fix_financingdetails;
    (** Number of underlyings*)
    f_NewOrderSingle_UndInstrmtGrp : fix_rg_undinstrmtgrp;
    (** Useful for verifying security identification*)
    f_NewOrderSingle_PrevClosePx : fix_float_6 option;
    f_NewOrderSingle_Side : fix_side option;
    (** Required for short sell orders*)
    f_NewOrderSingle_LocateReqd : fix_locatereqd option;
    (** Time this order request was initiated/released by the trader, trading system, or intermediary.*)
    f_NewOrderSingle_TransactTime : fix_utctimestamp option;
    (** Insert here the set of "Stipulations" (repeating group of Fixed Income stipulations) fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_Stipulations : fix_rg_stipulations;
    f_NewOrderSingle_QtyType : fix_qtytype option;
    (** Insert here the set of "OrderQtyData" fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_OrderQtyData : fix_orderqtydata;
    f_NewOrderSingle_OrdType : fix_ordtype option;
    f_NewOrderSingle_PriceType : fix_pricetype option;
    (** Required for limit OrdTypes. For F/X orders, should be the "all-in" rate (spot rate adjusted for forward points). Can be used to specify a limit price for a pegged order, previously indicated, etc.*)
    f_NewOrderSingle_Price : fix_float_6 option;
    (** Required for OrdType = "Stop" or OrdType = "Stop limit".*)
    f_NewOrderSingle_StopPx : fix_float_6 option;
    (** Insert here the set of "SpreadOrBenchmarkCurveData" (Fixed Income spread or benchmark curve) fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_SpreadOrBenchmarkCurveData : fix_spreadorbenchmarkcurvedata;
    (** Insert here the set of "YieldData" (yield-related) fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_YieldData : fix_yielddata;
    f_NewOrderSingle_Currency : fix_currency option;
    f_NewOrderSingle_ComplianceID : string option;
    f_NewOrderSingle_SolicitedFlag : fix_solicitedflag option;
    (** Required for Previously Indicated Orders (OrdType=E)*)
    f_NewOrderSingle_IOIID : string option;
    (** Required for Previously Quoted Orders (OrdType=D)*)
    f_NewOrderSingle_QuoteID : string option;
    (** Absence of this field indicates Day order*)
    f_NewOrderSingle_TimeInForce : fix_timeinforce option;
    (** Can specify the time at which the order should be considered valid*)
    f_NewOrderSingle_EffectiveTime : fix_utctimestamp option;
    (** Conditionally required if TimeInForce = GTD and ExpireTime is not specified.*)
    f_NewOrderSingle_ExpireDate : fix_localmktdate option;
    (** Conditionally required if TimeInForce = GTD and ExpireDate is not specified.*)
    f_NewOrderSingle_ExpireTime : fix_utctimestamp option;
    (** States whether executions are booked out or accumulated on a partially filled GT order*)
    f_NewOrderSingle_GTBookingInst : fix_gtbookinginst option;
    (** Insert here the set of "CommissionData" fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_CommissionData : fix_commissiondata;
    f_NewOrderSingle_OrderCapacity : fix_ordercapacity option;
    f_NewOrderSingle_OrderRestrictions : fix_orderrestrictions list option;
    f_NewOrderSingle_CustOrderCapacity : fix_custordercapacity option;
    (** Indicates that broker is requested to execute a Forex accommodation trade in conjunction with the security trade.*)
    f_NewOrderSingle_ForexReq : fix_forexreq option;
    (** Required if ForexReq = Y.*)
    f_NewOrderSingle_SettlCurrency : fix_currency option;
    (** Method for booking out this order. Used when notifying a broker that an order to be settled by that broker is to be booked out as an OTC derivative (e.g. CFD or similar). Absence of this field implies regular booking.*)
    f_NewOrderSingle_BookingType : fix_bookingtype option;
    f_NewOrderSingle_Text : string option;
    (** Must be set if EncodedText field is specified and must immediately precede it.*)
    f_NewOrderSingle_EncodedTextLen : int option;
    (** Encoded (non-ASCII characters) representation of the Text field in the encoded format specified via the MessageEncoding field.*)
    f_NewOrderSingle_EncodedText : string option;
    (** Can be used with OrdType = "Forex - Swap" to specify the "value date" for the future portion of a F/X swap.*)
    f_NewOrderSingle_SettlDate2 : fix_localmktdate option;
    (** Can be used with OrdType = "Forex - Swap" to specify the order quantity for the future portion of a F/X swap.*)
    f_NewOrderSingle_OrderQty2 : fix_float_6 option;
    (** Can be used with OrdType = "Forex - Swap" to specify the price for the future portion of a F/X swap which is also a limit order. For F/X orders, should be the "all-in" rate (spot rate adjusted for forward points).*)
    f_NewOrderSingle_Price2 : fix_float_6 option;
    (** For use in derivatives omnibus accounting*)
    f_NewOrderSingle_PositionEffect : fix_positioneffect option;
    (** For use with derivatives, such as options*)
    f_NewOrderSingle_CoveredOrUncovered : fix_coveredoruncovered option;
    f_NewOrderSingle_MaxShow : fix_float_6 option;
    (** Insert here the set of "PegInstruction" fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_PegInstructions : fix_peginstructions;
    (** Insert here the set of "DiscretionInstruction" fields defined in "Common Components of Application Messages"*)
    f_NewOrderSingle_DiscretionInstructions : fix_discretioninstructions;
    (** The target strategy of the order*)
    f_NewOrderSingle_TargetStrategy : fix_targetstrategy option;
    (** For further specification of the TargetStrategy*)
    f_NewOrderSingle_TargetStrategyParameters : string option;
    (** Mandatory for a TargetStrategy=Participate order and specifies the target particpation rate.
     For other order types optionally specifies a volume limit (i.e. do not be more than this percent of the market volume)*)
    f_NewOrderSingle_ParticipationRate : fix_float_6 option;
    (** For CIV - Optional*)
    f_NewOrderSingle_CancellationRights : fix_cancellationrights option;
    f_NewOrderSingle_MoneyLaunderingStatus : fix_moneylaunderingstatus option;
    (** Reference to Registration Instructions message for this Order.*)
    f_NewOrderSingle_RegistID : string option;
    (** Supplementary registration information for this Order*)
    f_NewOrderSingle_Designation : string option
}
;;

type full_app_msg_data =
    | FIX_Full_Msg_ExecutionReport of full_fix_executionreport_data
    | FIX_Full_Msg_NewOrderSingle of full_fix_newordersingle_data
;;

let get_full_app_msg_tag (msg : full_app_msg_data)  =
    (match msg with
        | FIX_Full_Msg_ExecutionReport _ -> Full_Msg_ExecutionReport_Tag
        | FIX_Full_Msg_NewOrderSingle _ -> Full_Msg_NewOrderSingle_Tag
    )
;;
