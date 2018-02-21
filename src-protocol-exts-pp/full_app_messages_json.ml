(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
open Yojson;;
open Full_app_messages;;
open Full_app_records_json;;
open Base_types_json;;
open Full_app_enums_json;;
open Datetime_json;;
(* @meta[imandra_ignore] off @end *)

let assoc_filter_nulls l : json =
    `Assoc ( List.filter (function ( _, `Null ) -> false | _ -> true ) l )
;;
let rg f lst : json =
    match lst with [] -> `Null | lst -> `List ( List.map f lst)
;;

let advertisement_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_Advertisement_Instrument );
    ( "AdvId" , string_to_json x.f_Advertisement_AdvId );
    ( "AdvTransType" , advtranstype_to_json x.f_Advertisement_AdvTransType );
    ( "AdvRefID" , string_opt_to_json x.f_Advertisement_AdvRefID );
    ( "AdvSide" , advside_to_json x.f_Advertisement_AdvSide );
    ( "Quantity" , float_4_to_json x.f_Advertisement_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_Advertisement_QtyType );
    ( "Price" , float_4_opt_to_json x.f_Advertisement_Price );
    ( "Currency" , currency_opt_to_json x.f_Advertisement_Currency );
    ( "TradeDate" , localmktdate_opt_to_json x.f_Advertisement_TradeDate );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_Advertisement_TransactTime );
    ( "Text" , string_opt_to_json x.f_Advertisement_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_Advertisement_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_Advertisement_EncodedText );
    ( "URLLink" , string_opt_to_json x.f_Advertisement_URLLink );
    ( "LastMkt" , exchange_opt_to_json x.f_Advertisement_LastMkt );
    ( "TradingSessionID" , string_opt_to_json x.f_Advertisement_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_Advertisement_TradingSessionSubID );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_Advertisement_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_Advertisement_UndInstrmtGrp )
    ]
;;

let allocationinstruction_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_AllocationInstruction_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_AllocationInstruction_InstrumentExtension );
    ( "FinancingDetails" , financingdetails_to_json x.f_AllocationInstruction_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_AllocationInstruction_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_AllocationInstruction_YieldData );
    ( "AllocID" , string_to_json x.f_AllocationInstruction_AllocID );
    ( "AllocTransType" , alloctranstype_to_json x.f_AllocationInstruction_AllocTransType );
    ( "AllocType" , alloctype_to_json x.f_AllocationInstruction_AllocType );
    ( "SecondaryAllocID" , string_opt_to_json x.f_AllocationInstruction_SecondaryAllocID );
    ( "RefAllocID" , string_opt_to_json x.f_AllocationInstruction_RefAllocID );
    ( "AllocCancReplaceReason" , alloccancreplacereason_opt_to_json x.f_AllocationInstruction_AllocCancReplaceReason );
    ( "AllocIntermedReqType" , allocintermedreqtype_opt_to_json x.f_AllocationInstruction_AllocIntermedReqType );
    ( "AllocLinkID" , string_opt_to_json x.f_AllocationInstruction_AllocLinkID );
    ( "AllocLinkType" , alloclinktype_opt_to_json x.f_AllocationInstruction_AllocLinkType );
    ( "BookingRefID" , string_opt_to_json x.f_AllocationInstruction_BookingRefID );
    ( "AllocNoOrdersType" , allocnoorderstype_to_json x.f_AllocationInstruction_AllocNoOrdersType );
    ( "PreviouslyReported" , previouslyreported_opt_to_json x.f_AllocationInstruction_PreviouslyReported );
    ( "ReversalIndicator" , bool_opt_to_json x.f_AllocationInstruction_ReversalIndicator );
    ( "MatchType" , matchtype_opt_to_json x.f_AllocationInstruction_MatchType );
    ( "Side" , side_to_json x.f_AllocationInstruction_Side );
    ( "Quantity" , float_4_to_json x.f_AllocationInstruction_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_AllocationInstruction_QtyType );
    ( "LastMkt" , exchange_opt_to_json x.f_AllocationInstruction_LastMkt );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_AllocationInstruction_TradeOriginationDate );
    ( "TradingSessionID" , string_opt_to_json x.f_AllocationInstruction_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_AllocationInstruction_TradingSessionSubID );
    ( "PriceType" , pricetype_opt_to_json x.f_AllocationInstruction_PriceType );
    ( "AvgPx" , float_4_to_json x.f_AllocationInstruction_AvgPx );
    ( "AvgParPx" , float_4_opt_to_json x.f_AllocationInstruction_AvgParPx );
    ( "Currency" , currency_opt_to_json x.f_AllocationInstruction_Currency );
    ( "AvgPxPrecision" , int_opt_to_json x.f_AllocationInstruction_AvgPxPrecision );
    ( "TradeDate" , localmktdate_to_json x.f_AllocationInstruction_TradeDate );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_AllocationInstruction_TransactTime );
    ( "SettlType" , settltype_opt_to_json x.f_AllocationInstruction_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_AllocationInstruction_SettlDate );
    ( "BookingType" , bookingtype_opt_to_json x.f_AllocationInstruction_BookingType );
    ( "GrossTradeAmt" , float_4_opt_to_json x.f_AllocationInstruction_GrossTradeAmt );
    ( "Concession" , float_4_opt_to_json x.f_AllocationInstruction_Concession );
    ( "TotalTakedown" , float_4_opt_to_json x.f_AllocationInstruction_TotalTakedown );
    ( "NetMoney" , float_4_opt_to_json x.f_AllocationInstruction_NetMoney );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_AllocationInstruction_PositionEffect );
    ( "AutoAcceptIndicator" , bool_opt_to_json x.f_AllocationInstruction_AutoAcceptIndicator );
    ( "Text" , string_opt_to_json x.f_AllocationInstruction_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_AllocationInstruction_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_AllocationInstruction_EncodedText );
    ( "NumDaysInterest" , int_opt_to_json x.f_AllocationInstruction_NumDaysInterest );
    ( "AccruedInterestRate" , float_4_opt_to_json x.f_AllocationInstruction_AccruedInterestRate );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_AllocationInstruction_AccruedInterestAmt );
    ( "TotalAccruedInterestAmt" , float_4_opt_to_json x.f_AllocationInstruction_TotalAccruedInterestAmt );
    ( "InterestAtMaturity" , float_4_opt_to_json x.f_AllocationInstruction_InterestAtMaturity );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_AllocationInstruction_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_AllocationInstruction_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_AllocationInstruction_EndCash );
    ( "LegalConfirm" , legalconfirm_opt_to_json x.f_AllocationInstruction_LegalConfirm );
    ( "TotNoAllocs" , int_opt_to_json x.f_AllocationInstruction_TotNoAllocs );
    ( "LastFragment" , lastfragment_opt_to_json x.f_AllocationInstruction_LastFragment );
    ( "OrdAllocGrp" , rg ordallocgrp_to_json x.f_AllocationInstruction_OrdAllocGrp );
    ( "ExecAllocGrp" , rg execallocgrp_to_json x.f_AllocationInstruction_ExecAllocGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_AllocationInstruction_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_AllocationInstruction_InstrmtLegGrp );
    ( "Parties" , rg parties_to_json x.f_AllocationInstruction_Parties );
    ( "Stipulations" , rg stipulations_to_json x.f_AllocationInstruction_Stipulations );
    ( "AllocGrp" , rg allocgrp_to_json x.f_AllocationInstruction_AllocGrp )
    ]
;;

let allocationinstructionack_to_json x : json =
     assoc_filter_nulls [
    ( "AllocID" , string_to_json x.f_AllocationInstructionAck_AllocID );
    ( "SecondaryAllocID" , string_opt_to_json x.f_AllocationInstructionAck_SecondaryAllocID );
    ( "TradeDate" , localmktdate_opt_to_json x.f_AllocationInstructionAck_TradeDate );
    ( "TransactTime" , utctimestamp_to_json x.f_AllocationInstructionAck_TransactTime );
    ( "AllocStatus" , allocstatus_to_json x.f_AllocationInstructionAck_AllocStatus );
    ( "AllocRejCode" , allocrejcode_opt_to_json x.f_AllocationInstructionAck_AllocRejCode );
    ( "AllocType" , alloctype_opt_to_json x.f_AllocationInstructionAck_AllocType );
    ( "AllocIntermedReqType" , allocintermedreqtype_opt_to_json x.f_AllocationInstructionAck_AllocIntermedReqType );
    ( "MatchStatus" , matchstatus_opt_to_json x.f_AllocationInstructionAck_MatchStatus );
    ( "Product" , product_opt_to_json x.f_AllocationInstructionAck_Product );
    ( "SecurityType" , securitytype_opt_to_json x.f_AllocationInstructionAck_SecurityType );
    ( "Text" , string_opt_to_json x.f_AllocationInstructionAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_AllocationInstructionAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_AllocationInstructionAck_EncodedText );
    ( "Parties" , rg parties_to_json x.f_AllocationInstructionAck_Parties );
    ( "AllocAckGrp" , rg allocackgrp_to_json x.f_AllocationInstructionAck_AllocAckGrp )
    ]
;;

let allocationreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_AllocationReport_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_AllocationReport_InstrumentExtension );
    ( "FinancingDetails" , financingdetails_to_json x.f_AllocationReport_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_AllocationReport_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_AllocationReport_YieldData );
    ( "AllocReportID" , string_to_json x.f_AllocationReport_AllocReportID );
    ( "AllocID" , string_opt_to_json x.f_AllocationReport_AllocID );
    ( "AllocTransType" , alloctranstype_to_json x.f_AllocationReport_AllocTransType );
    ( "AllocReportRefID" , string_opt_to_json x.f_AllocationReport_AllocReportRefID );
    ( "AllocCancReplaceReason" , alloccancreplacereason_opt_to_json x.f_AllocationReport_AllocCancReplaceReason );
    ( "SecondaryAllocID" , string_opt_to_json x.f_AllocationReport_SecondaryAllocID );
    ( "AllocReportType" , allocreporttype_to_json x.f_AllocationReport_AllocReportType );
    ( "AllocStatus" , allocstatus_to_json x.f_AllocationReport_AllocStatus );
    ( "AllocRejCode" , allocrejcode_opt_to_json x.f_AllocationReport_AllocRejCode );
    ( "RefAllocID" , string_opt_to_json x.f_AllocationReport_RefAllocID );
    ( "AllocIntermedReqType" , allocintermedreqtype_opt_to_json x.f_AllocationReport_AllocIntermedReqType );
    ( "AllocLinkID" , string_opt_to_json x.f_AllocationReport_AllocLinkID );
    ( "AllocLinkType" , alloclinktype_opt_to_json x.f_AllocationReport_AllocLinkType );
    ( "BookingRefID" , string_opt_to_json x.f_AllocationReport_BookingRefID );
    ( "AllocNoOrdersType" , allocnoorderstype_to_json x.f_AllocationReport_AllocNoOrdersType );
    ( "PreviouslyReported" , previouslyreported_opt_to_json x.f_AllocationReport_PreviouslyReported );
    ( "ReversalIndicator" , bool_opt_to_json x.f_AllocationReport_ReversalIndicator );
    ( "MatchType" , matchtype_opt_to_json x.f_AllocationReport_MatchType );
    ( "Side" , side_to_json x.f_AllocationReport_Side );
    ( "Quantity" , float_4_to_json x.f_AllocationReport_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_AllocationReport_QtyType );
    ( "LastMkt" , exchange_opt_to_json x.f_AllocationReport_LastMkt );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_AllocationReport_TradeOriginationDate );
    ( "TradingSessionID" , string_opt_to_json x.f_AllocationReport_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_AllocationReport_TradingSessionSubID );
    ( "PriceType" , pricetype_opt_to_json x.f_AllocationReport_PriceType );
    ( "AvgPx" , float_4_to_json x.f_AllocationReport_AvgPx );
    ( "AvgParPx" , float_4_opt_to_json x.f_AllocationReport_AvgParPx );
    ( "Currency" , currency_opt_to_json x.f_AllocationReport_Currency );
    ( "AvgPxPrecision" , int_opt_to_json x.f_AllocationReport_AvgPxPrecision );
    ( "TradeDate" , localmktdate_to_json x.f_AllocationReport_TradeDate );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_AllocationReport_TransactTime );
    ( "SettlType" , settltype_opt_to_json x.f_AllocationReport_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_AllocationReport_SettlDate );
    ( "BookingType" , bookingtype_opt_to_json x.f_AllocationReport_BookingType );
    ( "GrossTradeAmt" , float_4_opt_to_json x.f_AllocationReport_GrossTradeAmt );
    ( "Concession" , float_4_opt_to_json x.f_AllocationReport_Concession );
    ( "TotalTakedown" , float_4_opt_to_json x.f_AllocationReport_TotalTakedown );
    ( "NetMoney" , float_4_opt_to_json x.f_AllocationReport_NetMoney );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_AllocationReport_PositionEffect );
    ( "AutoAcceptIndicator" , bool_opt_to_json x.f_AllocationReport_AutoAcceptIndicator );
    ( "Text" , string_opt_to_json x.f_AllocationReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_AllocationReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_AllocationReport_EncodedText );
    ( "NumDaysInterest" , int_opt_to_json x.f_AllocationReport_NumDaysInterest );
    ( "AccruedInterestRate" , float_4_opt_to_json x.f_AllocationReport_AccruedInterestRate );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_AllocationReport_AccruedInterestAmt );
    ( "TotalAccruedInterestAmt" , float_4_opt_to_json x.f_AllocationReport_TotalAccruedInterestAmt );
    ( "InterestAtMaturity" , float_4_opt_to_json x.f_AllocationReport_InterestAtMaturity );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_AllocationReport_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_AllocationReport_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_AllocationReport_EndCash );
    ( "LegalConfirm" , legalconfirm_opt_to_json x.f_AllocationReport_LegalConfirm );
    ( "TotNoAllocs" , int_opt_to_json x.f_AllocationReport_TotNoAllocs );
    ( "LastFragment" , lastfragment_opt_to_json x.f_AllocationReport_LastFragment );
    ( "OrdAllocGrp" , rg ordallocgrp_to_json x.f_AllocationReport_OrdAllocGrp );
    ( "ExecAllocGrp" , rg execallocgrp_to_json x.f_AllocationReport_ExecAllocGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_AllocationReport_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_AllocationReport_InstrmtLegGrp );
    ( "Parties" , rg parties_to_json x.f_AllocationReport_Parties );
    ( "Stipulations" , rg stipulations_to_json x.f_AllocationReport_Stipulations );
    ( "AllocGrp" , rg allocgrp_to_json x.f_AllocationReport_AllocGrp )
    ]
;;

let allocationreportack_to_json x : json =
     assoc_filter_nulls [
    ( "AllocReportID" , string_to_json x.f_AllocationReportAck_AllocReportID );
    ( "AllocID" , string_to_json x.f_AllocationReportAck_AllocID );
    ( "SecondaryAllocID" , string_opt_to_json x.f_AllocationReportAck_SecondaryAllocID );
    ( "TradeDate" , localmktdate_opt_to_json x.f_AllocationReportAck_TradeDate );
    ( "TransactTime" , utctimestamp_to_json x.f_AllocationReportAck_TransactTime );
    ( "AllocStatus" , allocstatus_to_json x.f_AllocationReportAck_AllocStatus );
    ( "AllocRejCode" , allocrejcode_opt_to_json x.f_AllocationReportAck_AllocRejCode );
    ( "AllocReportType" , allocreporttype_opt_to_json x.f_AllocationReportAck_AllocReportType );
    ( "AllocIntermedReqType" , allocintermedreqtype_opt_to_json x.f_AllocationReportAck_AllocIntermedReqType );
    ( "MatchStatus" , matchstatus_opt_to_json x.f_AllocationReportAck_MatchStatus );
    ( "Product" , product_opt_to_json x.f_AllocationReportAck_Product );
    ( "SecurityType" , securitytype_opt_to_json x.f_AllocationReportAck_SecurityType );
    ( "Text" , string_opt_to_json x.f_AllocationReportAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_AllocationReportAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_AllocationReportAck_EncodedText );
    ( "Parties" , rg parties_to_json x.f_AllocationReportAck_Parties );
    ( "AllocAckGrp" , rg allocackgrp_to_json x.f_AllocationReportAck_AllocAckGrp )
    ]
;;

let assignmentreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_AssignmentReport_Instrument );
    ( "AsgnRptID" , string_to_json x.f_AssignmentReport_AsgnRptID );
    ( "TotNumAssignmentReports" , int_opt_to_json x.f_AssignmentReport_TotNumAssignmentReports );
    ( "LastRptRequested" , bool_opt_to_json x.f_AssignmentReport_LastRptRequested );
    ( "Account" , string_opt_to_json x.f_AssignmentReport_Account );
    ( "AccountType" , accounttype_to_json x.f_AssignmentReport_AccountType );
    ( "Currency" , currency_opt_to_json x.f_AssignmentReport_Currency );
    ( "ThresholdAmount" , float_4_opt_to_json x.f_AssignmentReport_ThresholdAmount );
    ( "SettlPrice" , float_4_to_json x.f_AssignmentReport_SettlPrice );
    ( "SettlPriceType" , settlpricetype_to_json x.f_AssignmentReport_SettlPriceType );
    ( "UnderlyingSettlPrice" , float_4_to_json x.f_AssignmentReport_UnderlyingSettlPrice );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_AssignmentReport_ExpireDate );
    ( "AssignmentMethod" , assignmentmethod_to_json x.f_AssignmentReport_AssignmentMethod );
    ( "AssignmentUnit" , float_4_opt_to_json x.f_AssignmentReport_AssignmentUnit );
    ( "OpenInterest" , float_4_to_json x.f_AssignmentReport_OpenInterest );
    ( "ExerciseMethod" , exercisemethod_to_json x.f_AssignmentReport_ExerciseMethod );
    ( "SettlSessID" , settlsessid_to_json x.f_AssignmentReport_SettlSessID );
    ( "SettlSessSubID" , string_to_json x.f_AssignmentReport_SettlSessSubID );
    ( "ClearingBusinessDate" , localmktdate_to_json x.f_AssignmentReport_ClearingBusinessDate );
    ( "Text" , string_opt_to_json x.f_AssignmentReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_AssignmentReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_AssignmentReport_EncodedText );
    ( "Parties" , rg parties_to_json x.f_AssignmentReport_Parties );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_AssignmentReport_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_AssignmentReport_UndInstrmtGrp );
    ( "PositionQty" , rg positionqty_to_json x.f_AssignmentReport_PositionQty );
    ( "PositionAmountData" , rg positionamountdata_to_json x.f_AssignmentReport_PositionAmountData )
    ]
;;

let bidrequest_to_json x : json =
     assoc_filter_nulls [
    ( "BidID" , string_opt_to_json x.f_BidRequest_BidID );
    ( "ClientBidID" , string_to_json x.f_BidRequest_ClientBidID );
    ( "BidRequestTransType" , bidrequesttranstype_to_json x.f_BidRequest_BidRequestTransType );
    ( "ListName" , string_opt_to_json x.f_BidRequest_ListName );
    ( "TotNoRelatedSym" , int_to_json x.f_BidRequest_TotNoRelatedSym );
    ( "BidType" , bidtype_to_json x.f_BidRequest_BidType );
    ( "NumTickets" , int_opt_to_json x.f_BidRequest_NumTickets );
    ( "Currency" , currency_opt_to_json x.f_BidRequest_Currency );
    ( "SideValue1" , float_4_opt_to_json x.f_BidRequest_SideValue1 );
    ( "SideValue2" , float_4_opt_to_json x.f_BidRequest_SideValue2 );
    ( "LiquidityIndType" , liquidityindtype_opt_to_json x.f_BidRequest_LiquidityIndType );
    ( "WtAverageLiquidity" , float_4_opt_to_json x.f_BidRequest_WtAverageLiquidity );
    ( "ExchangeForPhysical" , exchangeforphysical_opt_to_json x.f_BidRequest_ExchangeForPhysical );
    ( "OutMainCntryUIndex" , float_4_opt_to_json x.f_BidRequest_OutMainCntryUIndex );
    ( "CrossPercent" , float_4_opt_to_json x.f_BidRequest_CrossPercent );
    ( "ProgRptReqs" , progrptreqs_opt_to_json x.f_BidRequest_ProgRptReqs );
    ( "ProgPeriodInterval" , int_opt_to_json x.f_BidRequest_ProgPeriodInterval );
    ( "IncTaxInd" , inctaxind_opt_to_json x.f_BidRequest_IncTaxInd );
    ( "ForexReq" , forexreq_opt_to_json x.f_BidRequest_ForexReq );
    ( "NumBidders" , int_opt_to_json x.f_BidRequest_NumBidders );
    ( "TradeDate" , localmktdate_opt_to_json x.f_BidRequest_TradeDate );
    ( "BidTradeType" , bidtradetype_to_json x.f_BidRequest_BidTradeType );
    ( "BasisPxType" , basispxtype_to_json x.f_BidRequest_BasisPxType );
    ( "StrikeTime" , utctimestamp_opt_to_json x.f_BidRequest_StrikeTime );
    ( "Text" , string_opt_to_json x.f_BidRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_BidRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_BidRequest_EncodedText );
    ( "BidDescReqGrp" , rg biddescreqgrp_to_json x.f_BidRequest_BidDescReqGrp );
    ( "BidCompReqGrp" , rg bidcompreqgrp_to_json x.f_BidRequest_BidCompReqGrp )
    ]
;;

let bidresponse_to_json x : json =
     assoc_filter_nulls [
    ( "BidID" , string_opt_to_json x.f_BidResponse_BidID );
    ( "ClientBidID" , string_opt_to_json x.f_BidResponse_ClientBidID );
    ( "BidCompRspGrp" , rg bidcomprspgrp_to_json x.f_BidResponse_BidCompRspGrp )
    ]
;;

let collateralassignment_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CollateralAssignment_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_CollateralAssignment_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_CollateralAssignment_SpreadOrBenchmarkCurveData );
    ( "SettlInstructionsData" , settlinstructionsdata_to_json x.f_CollateralAssignment_SettlInstructionsData );
    ( "CollAsgnID" , string_to_json x.f_CollateralAssignment_CollAsgnID );
    ( "CollReqID" , string_opt_to_json x.f_CollateralAssignment_CollReqID );
    ( "CollAsgnReason" , collasgnreason_to_json x.f_CollateralAssignment_CollAsgnReason );
    ( "CollAsgnTransType" , collasgntranstype_to_json x.f_CollateralAssignment_CollAsgnTransType );
    ( "CollAsgnRefID" , string_opt_to_json x.f_CollateralAssignment_CollAsgnRefID );
    ( "TransactTime" , utctimestamp_to_json x.f_CollateralAssignment_TransactTime );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_CollateralAssignment_ExpireTime );
    ( "Account" , string_opt_to_json x.f_CollateralAssignment_Account );
    ( "AccountType" , accounttype_opt_to_json x.f_CollateralAssignment_AccountType );
    ( "ClOrdID" , string_opt_to_json x.f_CollateralAssignment_ClOrdID );
    ( "OrderID" , string_opt_to_json x.f_CollateralAssignment_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_CollateralAssignment_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_CollateralAssignment_SecondaryClOrdID );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CollateralAssignment_SettlDate );
    ( "Quantity" , float_4_opt_to_json x.f_CollateralAssignment_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_CollateralAssignment_QtyType );
    ( "Currency" , currency_opt_to_json x.f_CollateralAssignment_Currency );
    ( "MarginExcess" , float_4_opt_to_json x.f_CollateralAssignment_MarginExcess );
    ( "TotalNetValue" , float_4_opt_to_json x.f_CollateralAssignment_TotalNetValue );
    ( "CashOutstanding" , float_4_opt_to_json x.f_CollateralAssignment_CashOutstanding );
    ( "Side" , side_opt_to_json x.f_CollateralAssignment_Side );
    ( "Price" , float_4_opt_to_json x.f_CollateralAssignment_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_CollateralAssignment_PriceType );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_CollateralAssignment_AccruedInterestAmt );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_CollateralAssignment_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_CollateralAssignment_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_CollateralAssignment_EndCash );
    ( "TradingSessionID" , string_opt_to_json x.f_CollateralAssignment_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_CollateralAssignment_TradingSessionSubID );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_CollateralAssignment_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_CollateralAssignment_SettlSessSubID );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_CollateralAssignment_ClearingBusinessDate );
    ( "Text" , string_opt_to_json x.f_CollateralAssignment_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_CollateralAssignment_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_CollateralAssignment_EncodedText );
    ( "Parties" , rg parties_to_json x.f_CollateralAssignment_Parties );
    ( "ExecCollGrp" , rg execcollgrp_to_json x.f_CollateralAssignment_ExecCollGrp );
    ( "TrdCollGrp" , rg trdcollgrp_to_json x.f_CollateralAssignment_TrdCollGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CollateralAssignment_InstrmtLegGrp );
    ( "UndInstrmtCollGrp" , rg undinstrmtcollgrp_to_json x.f_CollateralAssignment_UndInstrmtCollGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_CollateralAssignment_TrdRegTimestamps );
    ( "MiscFeesGrp" , rg miscfeesgrp_to_json x.f_CollateralAssignment_MiscFeesGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_CollateralAssignment_Stipulations )
    ]
;;

let collateralinquiry_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CollateralInquiry_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_CollateralInquiry_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_CollateralInquiry_SpreadOrBenchmarkCurveData );
    ( "SettlInstructionsData" , settlinstructionsdata_to_json x.f_CollateralInquiry_SettlInstructionsData );
    ( "CollInquiryID" , string_opt_to_json x.f_CollateralInquiry_CollInquiryID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_CollateralInquiry_SubscriptionRequestType );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_CollateralInquiry_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_CollateralInquiry_ResponseDestination );
    ( "Account" , string_opt_to_json x.f_CollateralInquiry_Account );
    ( "AccountType" , accounttype_opt_to_json x.f_CollateralInquiry_AccountType );
    ( "ClOrdID" , string_opt_to_json x.f_CollateralInquiry_ClOrdID );
    ( "OrderID" , string_opt_to_json x.f_CollateralInquiry_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_CollateralInquiry_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_CollateralInquiry_SecondaryClOrdID );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CollateralInquiry_SettlDate );
    ( "Quantity" , float_4_opt_to_json x.f_CollateralInquiry_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_CollateralInquiry_QtyType );
    ( "Currency" , currency_opt_to_json x.f_CollateralInquiry_Currency );
    ( "MarginExcess" , float_4_opt_to_json x.f_CollateralInquiry_MarginExcess );
    ( "TotalNetValue" , float_4_opt_to_json x.f_CollateralInquiry_TotalNetValue );
    ( "CashOutstanding" , float_4_opt_to_json x.f_CollateralInquiry_CashOutstanding );
    ( "Side" , side_opt_to_json x.f_CollateralInquiry_Side );
    ( "Price" , float_4_opt_to_json x.f_CollateralInquiry_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_CollateralInquiry_PriceType );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_CollateralInquiry_AccruedInterestAmt );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_CollateralInquiry_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_CollateralInquiry_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_CollateralInquiry_EndCash );
    ( "TradingSessionID" , string_opt_to_json x.f_CollateralInquiry_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_CollateralInquiry_TradingSessionSubID );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_CollateralInquiry_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_CollateralInquiry_SettlSessSubID );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_CollateralInquiry_ClearingBusinessDate );
    ( "Text" , string_opt_to_json x.f_CollateralInquiry_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_CollateralInquiry_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_CollateralInquiry_EncodedText );
    ( "CollInqQualGrp" , rg collinqqualgrp_to_json x.f_CollateralInquiry_CollInqQualGrp );
    ( "Parties" , rg parties_to_json x.f_CollateralInquiry_Parties );
    ( "ExecCollGrp" , rg execcollgrp_to_json x.f_CollateralInquiry_ExecCollGrp );
    ( "TrdCollGrp" , rg trdcollgrp_to_json x.f_CollateralInquiry_TrdCollGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CollateralInquiry_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_CollateralInquiry_UndInstrmtGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_CollateralInquiry_TrdRegTimestamps );
    ( "Stipulations" , rg stipulations_to_json x.f_CollateralInquiry_Stipulations )
    ]
;;

let collateralinquiryack_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CollateralInquiryAck_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_CollateralInquiryAck_FinancingDetails );
    ( "CollInquiryID" , string_to_json x.f_CollateralInquiryAck_CollInquiryID );
    ( "CollInquiryStatus" , collinquirystatus_to_json x.f_CollateralInquiryAck_CollInquiryStatus );
    ( "CollInquiryResult" , collinquiryresult_opt_to_json x.f_CollateralInquiryAck_CollInquiryResult );
    ( "TotNumReports" , int_opt_to_json x.f_CollateralInquiryAck_TotNumReports );
    ( "Account" , string_opt_to_json x.f_CollateralInquiryAck_Account );
    ( "AccountType" , accounttype_opt_to_json x.f_CollateralInquiryAck_AccountType );
    ( "ClOrdID" , string_opt_to_json x.f_CollateralInquiryAck_ClOrdID );
    ( "OrderID" , string_opt_to_json x.f_CollateralInquiryAck_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_CollateralInquiryAck_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_CollateralInquiryAck_SecondaryClOrdID );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CollateralInquiryAck_SettlDate );
    ( "Quantity" , float_4_opt_to_json x.f_CollateralInquiryAck_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_CollateralInquiryAck_QtyType );
    ( "Currency" , currency_opt_to_json x.f_CollateralInquiryAck_Currency );
    ( "TradingSessionID" , string_opt_to_json x.f_CollateralInquiryAck_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_CollateralInquiryAck_TradingSessionSubID );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_CollateralInquiryAck_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_CollateralInquiryAck_SettlSessSubID );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_CollateralInquiryAck_ClearingBusinessDate );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_CollateralInquiryAck_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_CollateralInquiryAck_ResponseDestination );
    ( "Text" , string_opt_to_json x.f_CollateralInquiryAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_CollateralInquiryAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_CollateralInquiryAck_EncodedText );
    ( "CollInqQualGrp" , rg collinqqualgrp_to_json x.f_CollateralInquiryAck_CollInqQualGrp );
    ( "Parties" , rg parties_to_json x.f_CollateralInquiryAck_Parties );
    ( "ExecCollGrp" , rg execcollgrp_to_json x.f_CollateralInquiryAck_ExecCollGrp );
    ( "TrdCollGrp" , rg trdcollgrp_to_json x.f_CollateralInquiryAck_TrdCollGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CollateralInquiryAck_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_CollateralInquiryAck_UndInstrmtGrp )
    ]
;;

let collateralreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CollateralReport_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_CollateralReport_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_CollateralReport_SpreadOrBenchmarkCurveData );
    ( "SettlInstructionsData" , settlinstructionsdata_to_json x.f_CollateralReport_SettlInstructionsData );
    ( "CollRptID" , string_to_json x.f_CollateralReport_CollRptID );
    ( "CollInquiryID" , string_opt_to_json x.f_CollateralReport_CollInquiryID );
    ( "CollStatus" , collstatus_to_json x.f_CollateralReport_CollStatus );
    ( "TotNumReports" , int_opt_to_json x.f_CollateralReport_TotNumReports );
    ( "LastRptRequested" , bool_opt_to_json x.f_CollateralReport_LastRptRequested );
    ( "Account" , string_opt_to_json x.f_CollateralReport_Account );
    ( "AccountType" , accounttype_opt_to_json x.f_CollateralReport_AccountType );
    ( "ClOrdID" , string_opt_to_json x.f_CollateralReport_ClOrdID );
    ( "OrderID" , string_opt_to_json x.f_CollateralReport_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_CollateralReport_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_CollateralReport_SecondaryClOrdID );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CollateralReport_SettlDate );
    ( "Quantity" , float_4_opt_to_json x.f_CollateralReport_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_CollateralReport_QtyType );
    ( "Currency" , currency_opt_to_json x.f_CollateralReport_Currency );
    ( "MarginExcess" , float_4_opt_to_json x.f_CollateralReport_MarginExcess );
    ( "TotalNetValue" , float_4_opt_to_json x.f_CollateralReport_TotalNetValue );
    ( "CashOutstanding" , float_4_opt_to_json x.f_CollateralReport_CashOutstanding );
    ( "Side" , side_opt_to_json x.f_CollateralReport_Side );
    ( "Price" , float_4_opt_to_json x.f_CollateralReport_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_CollateralReport_PriceType );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_CollateralReport_AccruedInterestAmt );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_CollateralReport_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_CollateralReport_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_CollateralReport_EndCash );
    ( "TradingSessionID" , string_opt_to_json x.f_CollateralReport_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_CollateralReport_TradingSessionSubID );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_CollateralReport_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_CollateralReport_SettlSessSubID );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_CollateralReport_ClearingBusinessDate );
    ( "Text" , string_opt_to_json x.f_CollateralReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_CollateralReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_CollateralReport_EncodedText );
    ( "Parties" , rg parties_to_json x.f_CollateralReport_Parties );
    ( "ExecCollGrp" , rg execcollgrp_to_json x.f_CollateralReport_ExecCollGrp );
    ( "TrdCollGrp" , rg trdcollgrp_to_json x.f_CollateralReport_TrdCollGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CollateralReport_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_CollateralReport_UndInstrmtGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_CollateralReport_TrdRegTimestamps );
    ( "MiscFeesGrp" , rg miscfeesgrp_to_json x.f_CollateralReport_MiscFeesGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_CollateralReport_Stipulations )
    ]
;;

let collateralrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CollateralRequest_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_CollateralRequest_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_CollateralRequest_SpreadOrBenchmarkCurveData );
    ( "CollReqID" , string_to_json x.f_CollateralRequest_CollReqID );
    ( "CollAsgnReason" , collasgnreason_to_json x.f_CollateralRequest_CollAsgnReason );
    ( "TransactTime" , utctimestamp_to_json x.f_CollateralRequest_TransactTime );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_CollateralRequest_ExpireTime );
    ( "Account" , string_opt_to_json x.f_CollateralRequest_Account );
    ( "AccountType" , accounttype_opt_to_json x.f_CollateralRequest_AccountType );
    ( "ClOrdID" , string_opt_to_json x.f_CollateralRequest_ClOrdID );
    ( "OrderID" , string_opt_to_json x.f_CollateralRequest_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_CollateralRequest_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_CollateralRequest_SecondaryClOrdID );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CollateralRequest_SettlDate );
    ( "Quantity" , float_4_opt_to_json x.f_CollateralRequest_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_CollateralRequest_QtyType );
    ( "Currency" , currency_opt_to_json x.f_CollateralRequest_Currency );
    ( "MarginExcess" , float_4_opt_to_json x.f_CollateralRequest_MarginExcess );
    ( "TotalNetValue" , float_4_opt_to_json x.f_CollateralRequest_TotalNetValue );
    ( "CashOutstanding" , float_4_opt_to_json x.f_CollateralRequest_CashOutstanding );
    ( "Side" , side_opt_to_json x.f_CollateralRequest_Side );
    ( "Price" , float_4_opt_to_json x.f_CollateralRequest_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_CollateralRequest_PriceType );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_CollateralRequest_AccruedInterestAmt );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_CollateralRequest_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_CollateralRequest_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_CollateralRequest_EndCash );
    ( "TradingSessionID" , string_opt_to_json x.f_CollateralRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_CollateralRequest_TradingSessionSubID );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_CollateralRequest_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_CollateralRequest_SettlSessSubID );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_CollateralRequest_ClearingBusinessDate );
    ( "Text" , string_opt_to_json x.f_CollateralRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_CollateralRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_CollateralRequest_EncodedText );
    ( "Parties" , rg parties_to_json x.f_CollateralRequest_Parties );
    ( "ExecCollGrp" , rg execcollgrp_to_json x.f_CollateralRequest_ExecCollGrp );
    ( "TrdCollGrp" , rg trdcollgrp_to_json x.f_CollateralRequest_TrdCollGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CollateralRequest_InstrmtLegGrp );
    ( "UndInstrmtCollGrp" , rg undinstrmtcollgrp_to_json x.f_CollateralRequest_UndInstrmtCollGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_CollateralRequest_TrdRegTimestamps );
    ( "MiscFeesGrp" , rg miscfeesgrp_to_json x.f_CollateralRequest_MiscFeesGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_CollateralRequest_Stipulations )
    ]
;;

let collateralresponse_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CollateralResponse_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_CollateralResponse_FinancingDetails );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_CollateralResponse_SpreadOrBenchmarkCurveData );
    ( "CollRespID" , string_to_json x.f_CollateralResponse_CollRespID );
    ( "CollAsgnID" , string_to_json x.f_CollateralResponse_CollAsgnID );
    ( "CollReqID" , string_opt_to_json x.f_CollateralResponse_CollReqID );
    ( "CollAsgnReason" , collasgnreason_to_json x.f_CollateralResponse_CollAsgnReason );
    ( "CollAsgnTransType" , collasgntranstype_opt_to_json x.f_CollateralResponse_CollAsgnTransType );
    ( "CollAsgnRespType" , collasgnresptype_to_json x.f_CollateralResponse_CollAsgnRespType );
    ( "CollAsgnRejectReason" , collasgnrejectreason_opt_to_json x.f_CollateralResponse_CollAsgnRejectReason );
    ( "TransactTime" , utctimestamp_to_json x.f_CollateralResponse_TransactTime );
    ( "Account" , string_opt_to_json x.f_CollateralResponse_Account );
    ( "AccountType" , accounttype_opt_to_json x.f_CollateralResponse_AccountType );
    ( "ClOrdID" , string_opt_to_json x.f_CollateralResponse_ClOrdID );
    ( "OrderID" , string_opt_to_json x.f_CollateralResponse_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_CollateralResponse_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_CollateralResponse_SecondaryClOrdID );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CollateralResponse_SettlDate );
    ( "Quantity" , float_4_opt_to_json x.f_CollateralResponse_Quantity );
    ( "QtyType" , qtytype_opt_to_json x.f_CollateralResponse_QtyType );
    ( "Currency" , currency_opt_to_json x.f_CollateralResponse_Currency );
    ( "MarginExcess" , float_4_opt_to_json x.f_CollateralResponse_MarginExcess );
    ( "TotalNetValue" , float_4_opt_to_json x.f_CollateralResponse_TotalNetValue );
    ( "CashOutstanding" , float_4_opt_to_json x.f_CollateralResponse_CashOutstanding );
    ( "Side" , side_opt_to_json x.f_CollateralResponse_Side );
    ( "Price" , float_4_opt_to_json x.f_CollateralResponse_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_CollateralResponse_PriceType );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_CollateralResponse_AccruedInterestAmt );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_CollateralResponse_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_CollateralResponse_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_CollateralResponse_EndCash );
    ( "Text" , string_opt_to_json x.f_CollateralResponse_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_CollateralResponse_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_CollateralResponse_EncodedText );
    ( "Parties" , rg parties_to_json x.f_CollateralResponse_Parties );
    ( "ExecCollGrp" , rg execcollgrp_to_json x.f_CollateralResponse_ExecCollGrp );
    ( "TrdCollGrp" , rg trdcollgrp_to_json x.f_CollateralResponse_TrdCollGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CollateralResponse_InstrmtLegGrp );
    ( "UndInstrmtCollGrp" , rg undinstrmtcollgrp_to_json x.f_CollateralResponse_UndInstrmtCollGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_CollateralResponse_TrdRegTimestamps );
    ( "MiscFeesGrp" , rg miscfeesgrp_to_json x.f_CollateralResponse_MiscFeesGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_CollateralResponse_Stipulations )
    ]
;;

let confirmation_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_Confirmation_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_Confirmation_InstrumentExtension );
    ( "FinancingDetails" , financingdetails_to_json x.f_Confirmation_FinancingDetails );
    ( "YieldData" , yielddata_to_json x.f_Confirmation_YieldData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_Confirmation_SpreadOrBenchmarkCurveData );
    ( "SettlInstructionsData" , settlinstructionsdata_to_json x.f_Confirmation_SettlInstructionsData );
    ( "CommissionData" , commissiondata_to_json x.f_Confirmation_CommissionData );
    ( "ConfirmID" , string_to_json x.f_Confirmation_ConfirmID );
    ( "ConfirmRefID" , string_opt_to_json x.f_Confirmation_ConfirmRefID );
    ( "ConfirmReqID" , string_opt_to_json x.f_Confirmation_ConfirmReqID );
    ( "ConfirmTransType" , confirmtranstype_to_json x.f_Confirmation_ConfirmTransType );
    ( "ConfirmType" , confirmtype_to_json x.f_Confirmation_ConfirmType );
    ( "CopyMsgIndicator" , bool_opt_to_json x.f_Confirmation_CopyMsgIndicator );
    ( "LegalConfirm" , legalconfirm_opt_to_json x.f_Confirmation_LegalConfirm );
    ( "ConfirmStatus" , confirmstatus_to_json x.f_Confirmation_ConfirmStatus );
    ( "AllocID" , string_opt_to_json x.f_Confirmation_AllocID );
    ( "SecondaryAllocID" , string_opt_to_json x.f_Confirmation_SecondaryAllocID );
    ( "IndividualAllocID" , string_opt_to_json x.f_Confirmation_IndividualAllocID );
    ( "TransactTime" , utctimestamp_to_json x.f_Confirmation_TransactTime );
    ( "TradeDate" , localmktdate_to_json x.f_Confirmation_TradeDate );
    ( "AllocQty" , float_4_to_json x.f_Confirmation_AllocQty );
    ( "QtyType" , qtytype_opt_to_json x.f_Confirmation_QtyType );
    ( "Side" , side_to_json x.f_Confirmation_Side );
    ( "Currency" , currency_opt_to_json x.f_Confirmation_Currency );
    ( "LastMkt" , exchange_opt_to_json x.f_Confirmation_LastMkt );
    ( "AllocAccount" , string_to_json x.f_Confirmation_AllocAccount );
    ( "AllocAcctIDSource" , int_opt_to_json x.f_Confirmation_AllocAcctIDSource );
    ( "AllocAccountType" , allocaccounttype_opt_to_json x.f_Confirmation_AllocAccountType );
    ( "AvgPx" , float_4_to_json x.f_Confirmation_AvgPx );
    ( "AvgPxPrecision" , int_opt_to_json x.f_Confirmation_AvgPxPrecision );
    ( "PriceType" , pricetype_opt_to_json x.f_Confirmation_PriceType );
    ( "AvgParPx" , float_4_opt_to_json x.f_Confirmation_AvgParPx );
    ( "ReportedPx" , float_4_opt_to_json x.f_Confirmation_ReportedPx );
    ( "Text" , string_opt_to_json x.f_Confirmation_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_Confirmation_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_Confirmation_EncodedText );
    ( "ProcessCode" , processcode_opt_to_json x.f_Confirmation_ProcessCode );
    ( "GrossTradeAmt" , float_4_to_json x.f_Confirmation_GrossTradeAmt );
    ( "NumDaysInterest" , int_opt_to_json x.f_Confirmation_NumDaysInterest );
    ( "ExDate" , localmktdate_opt_to_json x.f_Confirmation_ExDate );
    ( "AccruedInterestRate" , float_4_opt_to_json x.f_Confirmation_AccruedInterestRate );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_Confirmation_AccruedInterestAmt );
    ( "InterestAtMaturity" , float_4_opt_to_json x.f_Confirmation_InterestAtMaturity );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_Confirmation_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_Confirmation_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_Confirmation_EndCash );
    ( "Concession" , float_4_opt_to_json x.f_Confirmation_Concession );
    ( "TotalTakedown" , float_4_opt_to_json x.f_Confirmation_TotalTakedown );
    ( "NetMoney" , float_4_to_json x.f_Confirmation_NetMoney );
    ( "MaturityNetMoney" , float_4_opt_to_json x.f_Confirmation_MaturityNetMoney );
    ( "SettlCurrAmt" , float_4_opt_to_json x.f_Confirmation_SettlCurrAmt );
    ( "SettlCurrency" , currency_opt_to_json x.f_Confirmation_SettlCurrency );
    ( "SettlCurrFxRate" , float_4_opt_to_json x.f_Confirmation_SettlCurrFxRate );
    ( "SettlCurrFxRateCalc" , settlcurrfxratecalc_opt_to_json x.f_Confirmation_SettlCurrFxRateCalc );
    ( "SettlType" , settltype_opt_to_json x.f_Confirmation_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_Confirmation_SettlDate );
    ( "SharedCommission" , float_4_opt_to_json x.f_Confirmation_SharedCommission );
    ( "Parties" , rg parties_to_json x.f_Confirmation_Parties );
    ( "OrdAllocGrp" , rg ordallocgrp_to_json x.f_Confirmation_OrdAllocGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_Confirmation_TrdRegTimestamps );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_Confirmation_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_Confirmation_InstrmtLegGrp );
    ( "CpctyConfGrp" , rg cpctyconfgrp_to_json x.f_Confirmation_CpctyConfGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_Confirmation_Stipulations );
    ( "MiscFeesGrp" , rg miscfeesgrp_to_json x.f_Confirmation_MiscFeesGrp )
    ]
;;

let confirmationack_to_json x : json =
     assoc_filter_nulls [
    ( "ConfirmID" , string_to_json x.f_ConfirmationAck_ConfirmID );
    ( "TradeDate" , localmktdate_to_json x.f_ConfirmationAck_TradeDate );
    ( "TransactTime" , utctimestamp_to_json x.f_ConfirmationAck_TransactTime );
    ( "AffirmStatus" , affirmstatus_to_json x.f_ConfirmationAck_AffirmStatus );
    ( "ConfirmRejReason" , confirmrejreason_opt_to_json x.f_ConfirmationAck_ConfirmRejReason );
    ( "MatchStatus" , matchstatus_opt_to_json x.f_ConfirmationAck_MatchStatus );
    ( "Text" , string_opt_to_json x.f_ConfirmationAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_ConfirmationAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_ConfirmationAck_EncodedText )
    ]
;;

let confirmationrequest_to_json x : json =
     assoc_filter_nulls [
    ( "ConfirmReqID" , string_to_json x.f_ConfirmationRequest_ConfirmReqID );
    ( "ConfirmType" , confirmtype_to_json x.f_ConfirmationRequest_ConfirmType );
    ( "AllocID" , string_opt_to_json x.f_ConfirmationRequest_AllocID );
    ( "SecondaryAllocID" , string_opt_to_json x.f_ConfirmationRequest_SecondaryAllocID );
    ( "IndividualAllocID" , string_opt_to_json x.f_ConfirmationRequest_IndividualAllocID );
    ( "TransactTime" , utctimestamp_to_json x.f_ConfirmationRequest_TransactTime );
    ( "AllocAccount" , string_opt_to_json x.f_ConfirmationRequest_AllocAccount );
    ( "AllocAcctIDSource" , int_opt_to_json x.f_ConfirmationRequest_AllocAcctIDSource );
    ( "AllocAccountType" , allocaccounttype_opt_to_json x.f_ConfirmationRequest_AllocAccountType );
    ( "Text" , string_opt_to_json x.f_ConfirmationRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_ConfirmationRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_ConfirmationRequest_EncodedText );
    ( "OrdAllocGrp" , rg ordallocgrp_to_json x.f_ConfirmationRequest_OrdAllocGrp )
    ]
;;

let crossordercancelreplacerequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CrossOrderCancelReplaceRequest_Instrument );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_CrossOrderCancelReplaceRequest_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_CrossOrderCancelReplaceRequest_YieldData );
    ( "PegInstructions" , peginstructions_to_json x.f_CrossOrderCancelReplaceRequest_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_CrossOrderCancelReplaceRequest_DiscretionInstructions );
    ( "OrderID" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_OrderID );
    ( "CrossID" , string_to_json x.f_CrossOrderCancelReplaceRequest_CrossID );
    ( "OrigCrossID" , string_to_json x.f_CrossOrderCancelReplaceRequest_OrigCrossID );
    ( "CrossType" , crosstype_to_json x.f_CrossOrderCancelReplaceRequest_CrossType );
    ( "CrossPrioritization" , crossprioritization_to_json x.f_CrossOrderCancelReplaceRequest_CrossPrioritization );
    ( "SettlType" , settltype_opt_to_json x.f_CrossOrderCancelReplaceRequest_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_CrossOrderCancelReplaceRequest_SettlDate );
    ( "HandlInst" , handlinst_opt_to_json x.f_CrossOrderCancelReplaceRequest_HandlInst );
    ( "ExecInst" , execinst_opt_to_json x.f_CrossOrderCancelReplaceRequest_ExecInst );
    ( "MinQty" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_MaxFloor );
    ( "ExDestination" , exchange_opt_to_json x.f_CrossOrderCancelReplaceRequest_ExDestination );
    ( "ProcessCode" , processcode_opt_to_json x.f_CrossOrderCancelReplaceRequest_ProcessCode );
    ( "PrevClosePx" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_PrevClosePx );
    ( "LocateReqd" , locatereqd_opt_to_json x.f_CrossOrderCancelReplaceRequest_LocateReqd );
    ( "TransactTime" , utctimestamp_to_json x.f_CrossOrderCancelReplaceRequest_TransactTime );
    ( "OrdType" , ordtype_to_json x.f_CrossOrderCancelReplaceRequest_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_CrossOrderCancelReplaceRequest_PriceType );
    ( "Price" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_Price );
    ( "StopPx" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_StopPx );
    ( "Currency" , currency_opt_to_json x.f_CrossOrderCancelReplaceRequest_Currency );
    ( "ComplianceID" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_ComplianceID );
    ( "IOIID" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_IOIID );
    ( "QuoteID" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_QuoteID );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_CrossOrderCancelReplaceRequest_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_CrossOrderCancelReplaceRequest_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_CrossOrderCancelReplaceRequest_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_CrossOrderCancelReplaceRequest_ExpireTime );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_CrossOrderCancelReplaceRequest_GTBookingInst );
    ( "MaxShow" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_MaxShow );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_CrossOrderCancelReplaceRequest_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_CrossOrderCancelReplaceRequest_ParticipationRate );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_CrossOrderCancelReplaceRequest_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_CrossOrderCancelReplaceRequest_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_RegistID );
    ( "Designation" , string_opt_to_json x.f_CrossOrderCancelReplaceRequest_Designation );
    ( "SideCrossOrdModGrp" , rg sidecrossordmodgrp_to_json x.f_CrossOrderCancelReplaceRequest_SideCrossOrdModGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_CrossOrderCancelReplaceRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CrossOrderCancelReplaceRequest_InstrmtLegGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_CrossOrderCancelReplaceRequest_TrdgSesGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_CrossOrderCancelReplaceRequest_Stipulations )
    ]
;;

let crossordercancelrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_CrossOrderCancelRequest_Instrument );
    ( "OrderID" , string_opt_to_json x.f_CrossOrderCancelRequest_OrderID );
    ( "CrossID" , string_to_json x.f_CrossOrderCancelRequest_CrossID );
    ( "OrigCrossID" , string_to_json x.f_CrossOrderCancelRequest_OrigCrossID );
    ( "CrossType" , crosstype_to_json x.f_CrossOrderCancelRequest_CrossType );
    ( "CrossPrioritization" , crossprioritization_to_json x.f_CrossOrderCancelRequest_CrossPrioritization );
    ( "TransactTime" , utctimestamp_to_json x.f_CrossOrderCancelRequest_TransactTime );
    ( "SideCrossOrdCxlGrp" , rg sidecrossordcxlgrp_to_json x.f_CrossOrderCancelRequest_SideCrossOrdCxlGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_CrossOrderCancelRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_CrossOrderCancelRequest_InstrmtLegGrp )
    ]
;;

let derivativesecuritylist_to_json x : json =
     assoc_filter_nulls [
    ( "UnderlyingInstrument" , underlyinginstrument_to_json x.f_DerivativeSecurityList_UnderlyingInstrument );
    ( "SecurityReqID" , string_to_json x.f_DerivativeSecurityList_SecurityReqID );
    ( "SecurityResponseID" , string_to_json x.f_DerivativeSecurityList_SecurityResponseID );
    ( "SecurityRequestResult" , securityrequestresult_to_json x.f_DerivativeSecurityList_SecurityRequestResult );
    ( "TotNoRelatedSym" , int_opt_to_json x.f_DerivativeSecurityList_TotNoRelatedSym );
    ( "LastFragment" , lastfragment_opt_to_json x.f_DerivativeSecurityList_LastFragment );
    ( "RelSymDerivSecGrp" , rg relsymderivsecgrp_to_json x.f_DerivativeSecurityList_RelSymDerivSecGrp )
    ]
;;

let derivativesecuritylistrequest_to_json x : json =
     assoc_filter_nulls [
    ( "UnderlyingInstrument" , underlyinginstrument_to_json x.f_DerivativeSecurityListRequest_UnderlyingInstrument );
    ( "SecurityReqID" , string_to_json x.f_DerivativeSecurityListRequest_SecurityReqID );
    ( "SecurityListRequestType" , securitylistrequesttype_to_json x.f_DerivativeSecurityListRequest_SecurityListRequestType );
    ( "SecuritySubType" , string_opt_to_json x.f_DerivativeSecurityListRequest_SecuritySubType );
    ( "Currency" , currency_opt_to_json x.f_DerivativeSecurityListRequest_Currency );
    ( "Text" , string_opt_to_json x.f_DerivativeSecurityListRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_DerivativeSecurityListRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_DerivativeSecurityListRequest_EncodedText );
    ( "TradingSessionID" , string_opt_to_json x.f_DerivativeSecurityListRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_DerivativeSecurityListRequest_TradingSessionSubID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_DerivativeSecurityListRequest_SubscriptionRequestType )
    ]
;;

let dontknowtrade_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_DontKnowTrade_Instrument );
    ( "OrderQtyData" , orderqtydata_to_json x.f_DontKnowTrade_OrderQtyData );
    ( "OrderID" , string_to_json x.f_DontKnowTrade_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_DontKnowTrade_SecondaryOrderID );
    ( "ExecID" , string_to_json x.f_DontKnowTrade_ExecID );
    ( "DKReason" , dkreason_to_json x.f_DontKnowTrade_DKReason );
    ( "Side" , side_to_json x.f_DontKnowTrade_Side );
    ( "LastQty" , float_4_opt_to_json x.f_DontKnowTrade_LastQty );
    ( "LastPx" , float_4_opt_to_json x.f_DontKnowTrade_LastPx );
    ( "Text" , string_opt_to_json x.f_DontKnowTrade_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_DontKnowTrade_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_DontKnowTrade_EncodedText );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_DontKnowTrade_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_DontKnowTrade_InstrmtLegGrp )
    ]
;;

let email_to_json x : json =
     assoc_filter_nulls [
    ( "EmailThreadID" , string_to_json x.f_Email_EmailThreadID );
    ( "EmailType" , emailtype_to_json x.f_Email_EmailType );
    ( "OrigTime" , utctimestamp_opt_to_json x.f_Email_OrigTime );
    ( "Subject" , string_to_json x.f_Email_Subject );
    ( "EncodedSubjectLen" , int_opt_to_json x.f_Email_EncodedSubjectLen );
    ( "EncodedSubject" , string_opt_to_json x.f_Email_EncodedSubject );
    ( "OrderID" , string_opt_to_json x.f_Email_OrderID );
    ( "ClOrdID" , string_opt_to_json x.f_Email_ClOrdID );
    ( "RawDataLength" , int_opt_to_json x.f_Email_RawDataLength );
    ( "RawData" , string_opt_to_json x.f_Email_RawData );
    ( "RoutingGrp" , rg routinggrp_to_json x.f_Email_RoutingGrp );
    ( "InstrmtGrp" , rg instrmtgrp_to_json x.f_Email_InstrmtGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_Email_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_Email_InstrmtLegGrp );
    ( "LinesOfTextGrp" , rg linesoftextgrp_to_json x.f_Email_LinesOfTextGrp )
    ]
;;

let executionreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_ExecutionReport_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_ExecutionReport_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_ExecutionReport_OrderQtyData );
    ( "PegInstructions" , peginstructions_to_json x.f_ExecutionReport_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_ExecutionReport_DiscretionInstructions );
    ( "CommissionData" , commissiondata_to_json x.f_ExecutionReport_CommissionData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_ExecutionReport_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_ExecutionReport_YieldData );
    ( "OrderID" , string_to_json x.f_ExecutionReport_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_ExecutionReport_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_ExecutionReport_SecondaryClOrdID );
    ( "SecondaryExecID" , string_opt_to_json x.f_ExecutionReport_SecondaryExecID );
    ( "ClOrdID" , string_opt_to_json x.f_ExecutionReport_ClOrdID );
    ( "OrigClOrdID" , string_opt_to_json x.f_ExecutionReport_OrigClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_ExecutionReport_ClOrdLinkID );
    ( "QuoteRespID" , string_opt_to_json x.f_ExecutionReport_QuoteRespID );
    ( "OrdStatusReqID" , string_opt_to_json x.f_ExecutionReport_OrdStatusReqID );
    ( "MassStatusReqID" , string_opt_to_json x.f_ExecutionReport_MassStatusReqID );
    ( "TotNumReports" , int_opt_to_json x.f_ExecutionReport_TotNumReports );
    ( "LastRptRequested" , bool_opt_to_json x.f_ExecutionReport_LastRptRequested );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_ExecutionReport_TradeOriginationDate );
    ( "ListID" , string_opt_to_json x.f_ExecutionReport_ListID );
    ( "CrossID" , string_opt_to_json x.f_ExecutionReport_CrossID );
    ( "OrigCrossID" , string_opt_to_json x.f_ExecutionReport_OrigCrossID );
    ( "CrossType" , crosstype_opt_to_json x.f_ExecutionReport_CrossType );
    ( "ExecID" , string_to_json x.f_ExecutionReport_ExecID );
    ( "ExecRefID" , string_opt_to_json x.f_ExecutionReport_ExecRefID );
    ( "ExecType" , exectype_to_json x.f_ExecutionReport_ExecType );
    ( "OrdStatus" , ordstatus_to_json x.f_ExecutionReport_OrdStatus );
    ( "WorkingIndicator" , workingindicator_opt_to_json x.f_ExecutionReport_WorkingIndicator );
    ( "OrdRejReason" , ordrejreason_opt_to_json x.f_ExecutionReport_OrdRejReason );
    ( "ExecRestatementReason" , execrestatementreason_opt_to_json x.f_ExecutionReport_ExecRestatementReason );
    ( "Account" , string_opt_to_json x.f_ExecutionReport_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_ExecutionReport_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_ExecutionReport_AccountType );
    ( "DayBookingInst" , daybookinginst_opt_to_json x.f_ExecutionReport_DayBookingInst );
    ( "BookingUnit" , bookingunit_opt_to_json x.f_ExecutionReport_BookingUnit );
    ( "PreallocMethod" , preallocmethod_opt_to_json x.f_ExecutionReport_PreallocMethod );
    ( "SettlType" , settltype_opt_to_json x.f_ExecutionReport_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_ExecutionReport_SettlDate );
    ( "CashMargin" , cashmargin_opt_to_json x.f_ExecutionReport_CashMargin );
    ( "ClearingFeeIndicator" , clearingfeeindicator_opt_to_json x.f_ExecutionReport_ClearingFeeIndicator );
    ( "Side" , side_to_json x.f_ExecutionReport_Side );
    ( "QtyType" , qtytype_opt_to_json x.f_ExecutionReport_QtyType );
    ( "OrdType" , ordtype_opt_to_json x.f_ExecutionReport_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_ExecutionReport_PriceType );
    ( "Price" , float_4_opt_to_json x.f_ExecutionReport_Price );
    ( "StopPx" , float_4_opt_to_json x.f_ExecutionReport_StopPx );
    ( "PeggedPrice" , float_4_opt_to_json x.f_ExecutionReport_PeggedPrice );
    ( "DiscretionPrice" , float_4_opt_to_json x.f_ExecutionReport_DiscretionPrice );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_ExecutionReport_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_ExecutionReport_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_ExecutionReport_ParticipationRate );
    ( "TargetStrategyPerformance" , float_4_opt_to_json x.f_ExecutionReport_TargetStrategyPerformance );
    ( "Currency" , currency_opt_to_json x.f_ExecutionReport_Currency );
    ( "ComplianceID" , string_opt_to_json x.f_ExecutionReport_ComplianceID );
    ( "SolicitedFlag" , solicitedflag_opt_to_json x.f_ExecutionReport_SolicitedFlag );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_ExecutionReport_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_ExecutionReport_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_ExecutionReport_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_ExecutionReport_ExpireTime );
    ( "ExecInst" , execinst_opt_to_json x.f_ExecutionReport_ExecInst );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_ExecutionReport_OrderCapacity );
    ( "OrderRestrictions" , orderrestrictions_opt_to_json x.f_ExecutionReport_OrderRestrictions );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_ExecutionReport_CustOrderCapacity );
    ( "LastQty" , float_4_opt_to_json x.f_ExecutionReport_LastQty );
    ( "UnderlyingLastQty" , float_4_opt_to_json x.f_ExecutionReport_UnderlyingLastQty );
    ( "LastPx" , float_4_opt_to_json x.f_ExecutionReport_LastPx );
    ( "UnderlyingLastPx" , float_4_opt_to_json x.f_ExecutionReport_UnderlyingLastPx );
    ( "LastParPx" , float_4_opt_to_json x.f_ExecutionReport_LastParPx );
    ( "LastSpotRate" , float_4_opt_to_json x.f_ExecutionReport_LastSpotRate );
    ( "LastForwardPoints" , float_4_opt_to_json x.f_ExecutionReport_LastForwardPoints );
    ( "LastMkt" , exchange_opt_to_json x.f_ExecutionReport_LastMkt );
    ( "TradingSessionID" , string_opt_to_json x.f_ExecutionReport_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_ExecutionReport_TradingSessionSubID );
    ( "TimeBracket" , string_opt_to_json x.f_ExecutionReport_TimeBracket );
    ( "LastCapacity" , lastcapacity_opt_to_json x.f_ExecutionReport_LastCapacity );
    ( "LeavesQty" , float_4_to_json x.f_ExecutionReport_LeavesQty );
    ( "CumQty" , float_4_to_json x.f_ExecutionReport_CumQty );
    ( "AvgPx" , float_4_to_json x.f_ExecutionReport_AvgPx );
    ( "DayOrderQty" , float_4_opt_to_json x.f_ExecutionReport_DayOrderQty );
    ( "DayCumQty" , float_4_opt_to_json x.f_ExecutionReport_DayCumQty );
    ( "DayAvgPx" , float_4_opt_to_json x.f_ExecutionReport_DayAvgPx );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_ExecutionReport_GTBookingInst );
    ( "TradeDate" , localmktdate_opt_to_json x.f_ExecutionReport_TradeDate );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_ExecutionReport_TransactTime );
    ( "ReportToExch" , reporttoexch_opt_to_json x.f_ExecutionReport_ReportToExch );
    ( "GrossTradeAmt" , float_4_opt_to_json x.f_ExecutionReport_GrossTradeAmt );
    ( "NumDaysInterest" , int_opt_to_json x.f_ExecutionReport_NumDaysInterest );
    ( "ExDate" , localmktdate_opt_to_json x.f_ExecutionReport_ExDate );
    ( "AccruedInterestRate" , float_4_opt_to_json x.f_ExecutionReport_AccruedInterestRate );
    ( "AccruedInterestAmt" , float_4_opt_to_json x.f_ExecutionReport_AccruedInterestAmt );
    ( "InterestAtMaturity" , float_4_opt_to_json x.f_ExecutionReport_InterestAtMaturity );
    ( "EndAccruedInterestAmt" , float_4_opt_to_json x.f_ExecutionReport_EndAccruedInterestAmt );
    ( "StartCash" , float_4_opt_to_json x.f_ExecutionReport_StartCash );
    ( "EndCash" , float_4_opt_to_json x.f_ExecutionReport_EndCash );
    ( "TradedFlatSwitch" , tradedflatswitch_opt_to_json x.f_ExecutionReport_TradedFlatSwitch );
    ( "BasisFeatureDate" , localmktdate_opt_to_json x.f_ExecutionReport_BasisFeatureDate );
    ( "BasisFeaturePrice" , float_4_opt_to_json x.f_ExecutionReport_BasisFeaturePrice );
    ( "Concession" , float_4_opt_to_json x.f_ExecutionReport_Concession );
    ( "TotalTakedown" , float_4_opt_to_json x.f_ExecutionReport_TotalTakedown );
    ( "NetMoney" , float_4_opt_to_json x.f_ExecutionReport_NetMoney );
    ( "SettlCurrAmt" , float_4_opt_to_json x.f_ExecutionReport_SettlCurrAmt );
    ( "SettlCurrency" , currency_opt_to_json x.f_ExecutionReport_SettlCurrency );
    ( "SettlCurrFxRate" , float_4_opt_to_json x.f_ExecutionReport_SettlCurrFxRate );
    ( "SettlCurrFxRateCalc" , settlcurrfxratecalc_opt_to_json x.f_ExecutionReport_SettlCurrFxRateCalc );
    ( "HandlInst" , handlinst_opt_to_json x.f_ExecutionReport_HandlInst );
    ( "MinQty" , float_4_opt_to_json x.f_ExecutionReport_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_ExecutionReport_MaxFloor );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_ExecutionReport_PositionEffect );
    ( "MaxShow" , float_4_opt_to_json x.f_ExecutionReport_MaxShow );
    ( "BookingType" , bookingtype_opt_to_json x.f_ExecutionReport_BookingType );
    ( "Text" , string_opt_to_json x.f_ExecutionReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_ExecutionReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_ExecutionReport_EncodedText );
    ( "SettlDate2" , localmktdate_opt_to_json x.f_ExecutionReport_SettlDate2 );
    ( "OrderQty2" , float_4_opt_to_json x.f_ExecutionReport_OrderQty2 );
    ( "LastForwardPoints2" , float_4_opt_to_json x.f_ExecutionReport_LastForwardPoints2 );
    ( "MultiLegReportingType" , multilegreportingtype_opt_to_json x.f_ExecutionReport_MultiLegReportingType );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_ExecutionReport_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_ExecutionReport_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_ExecutionReport_RegistID );
    ( "Designation" , string_opt_to_json x.f_ExecutionReport_Designation );
    ( "TransBkdTime" , utctimestamp_opt_to_json x.f_ExecutionReport_TransBkdTime );
    ( "ExecValuationPoint" , utctimestamp_opt_to_json x.f_ExecutionReport_ExecValuationPoint );
    ( "ExecPriceType" , execpricetype_opt_to_json x.f_ExecutionReport_ExecPriceType );
    ( "ExecPriceAdjustment" , float_4_opt_to_json x.f_ExecutionReport_ExecPriceAdjustment );
    ( "PriorityIndicator" , priorityindicator_opt_to_json x.f_ExecutionReport_PriorityIndicator );
    ( "PriceImprovement" , float_4_opt_to_json x.f_ExecutionReport_PriceImprovement );
    ( "LastLiquidityInd" , lastliquidityind_opt_to_json x.f_ExecutionReport_LastLiquidityInd );
    ( "CopyMsgIndicator" , bool_opt_to_json x.f_ExecutionReport_CopyMsgIndicator );
    ( "Parties" , rg parties_to_json x.f_ExecutionReport_Parties );
    ( "ContraGrp" , rg contragrp_to_json x.f_ExecutionReport_ContraGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_ExecutionReport_UndInstrmtGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_ExecutionReport_Stipulations );
    ( "ContAmtGrp" , rg contamtgrp_to_json x.f_ExecutionReport_ContAmtGrp );
    ( "InstrmtLegExecGrp" , rg instrmtlegexecgrp_to_json x.f_ExecutionReport_InstrmtLegExecGrp );
    ( "MiscFeesGrp" , rg miscfeesgrp_to_json x.f_ExecutionReport_MiscFeesGrp )
    ]
;;

let ioi_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_IOI_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_IOI_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_IOI_OrderQtyData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_IOI_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_IOI_YieldData );
    ( "IOIID" , string_to_json x.f_IOI_IOIID );
    ( "IOITransType" , ioitranstype_to_json x.f_IOI_IOITransType );
    ( "IOIRefID" , string_opt_to_json x.f_IOI_IOIRefID );
    ( "Side" , side_to_json x.f_IOI_Side );
    ( "QtyType" , qtytype_opt_to_json x.f_IOI_QtyType );
    ( "IOIQty" , ioiqty_to_json x.f_IOI_IOIQty );
    ( "Currency" , currency_opt_to_json x.f_IOI_Currency );
    ( "PriceType" , pricetype_opt_to_json x.f_IOI_PriceType );
    ( "Price" , float_4_opt_to_json x.f_IOI_Price );
    ( "ValidUntilTime" , utctimestamp_opt_to_json x.f_IOI_ValidUntilTime );
    ( "IOIQltyInd" , ioiqltyind_opt_to_json x.f_IOI_IOIQltyInd );
    ( "IOINaturalFlag" , ioinaturalflag_opt_to_json x.f_IOI_IOINaturalFlag );
    ( "Text" , string_opt_to_json x.f_IOI_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_IOI_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_IOI_EncodedText );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_IOI_TransactTime );
    ( "URLLink" , string_opt_to_json x.f_IOI_URLLink );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_IOI_UndInstrmtGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_IOI_Stipulations );
    ( "InstrmtLegIOIGrp" , rg instrmtlegioigrp_to_json x.f_IOI_InstrmtLegIOIGrp );
    ( "IOIQualGrp" , rg ioiqualgrp_to_json x.f_IOI_IOIQualGrp );
    ( "RoutingGrp" , rg routinggrp_to_json x.f_IOI_RoutingGrp )
    ]
;;

let listcancelrequest_to_json x : json =
     assoc_filter_nulls [
    ( "ListID" , string_to_json x.f_ListCancelRequest_ListID );
    ( "TransactTime" , utctimestamp_to_json x.f_ListCancelRequest_TransactTime );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_ListCancelRequest_TradeOriginationDate );
    ( "TradeDate" , localmktdate_opt_to_json x.f_ListCancelRequest_TradeDate );
    ( "Text" , string_opt_to_json x.f_ListCancelRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_ListCancelRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_ListCancelRequest_EncodedText )
    ]
;;

let listexecute_to_json x : json =
     assoc_filter_nulls [
    ( "ListID" , string_to_json x.f_ListExecute_ListID );
    ( "ClientBidID" , string_opt_to_json x.f_ListExecute_ClientBidID );
    ( "BidID" , string_opt_to_json x.f_ListExecute_BidID );
    ( "TransactTime" , utctimestamp_to_json x.f_ListExecute_TransactTime );
    ( "Text" , string_opt_to_json x.f_ListExecute_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_ListExecute_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_ListExecute_EncodedText )
    ]
;;

let liststatus_to_json x : json =
     assoc_filter_nulls [
    ( "ListID" , string_to_json x.f_ListStatus_ListID );
    ( "ListStatusType" , liststatustype_to_json x.f_ListStatus_ListStatusType );
    ( "NoRpts" , int_to_json x.f_ListStatus_NoRpts );
    ( "ListOrderStatus" , listorderstatus_to_json x.f_ListStatus_ListOrderStatus );
    ( "RptSeq" , int_to_json x.f_ListStatus_RptSeq );
    ( "ListStatusText" , string_opt_to_json x.f_ListStatus_ListStatusText );
    ( "EncodedListStatusTextLen" , int_opt_to_json x.f_ListStatus_EncodedListStatusTextLen );
    ( "EncodedListStatusText" , string_opt_to_json x.f_ListStatus_EncodedListStatusText );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_ListStatus_TransactTime );
    ( "TotNoOrders" , int_to_json x.f_ListStatus_TotNoOrders );
    ( "LastFragment" , lastfragment_opt_to_json x.f_ListStatus_LastFragment );
    ( "OrdListStatGrp" , rg ordliststatgrp_to_json x.f_ListStatus_OrdListStatGrp )
    ]
;;

let liststatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "ListID" , string_to_json x.f_ListStatusRequest_ListID );
    ( "Text" , string_opt_to_json x.f_ListStatusRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_ListStatusRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_ListStatusRequest_EncodedText )
    ]
;;

let liststrikeprice_to_json x : json =
     assoc_filter_nulls [
    ( "ListID" , string_to_json x.f_ListStrikePrice_ListID );
    ( "TotNoStrikes" , int_to_json x.f_ListStrikePrice_TotNoStrikes );
    ( "LastFragment" , lastfragment_opt_to_json x.f_ListStrikePrice_LastFragment );
    ( "InstrmtStrkPxGrp" , rg instrmtstrkpxgrp_to_json x.f_ListStrikePrice_InstrmtStrkPxGrp );
    ( "UndInstrmtStrkPxGrp" , rg undinstrmtstrkpxgrp_to_json x.f_ListStrikePrice_UndInstrmtStrkPxGrp )
    ]
;;

let marketdataincrementalrefresh_to_json x : json =
     assoc_filter_nulls [
    ( "MDReqID" , string_opt_to_json x.f_MarketDataIncrementalRefresh_MDReqID );
    ( "ApplQueueDepth" , int_opt_to_json x.f_MarketDataIncrementalRefresh_ApplQueueDepth );
    ( "ApplQueueResolution" , applqueueresolution_opt_to_json x.f_MarketDataIncrementalRefresh_ApplQueueResolution );
    ( "MDIncGrp" , rg mdincgrp_to_json x.f_MarketDataIncrementalRefresh_MDIncGrp )
    ]
;;

let marketdatarequest_to_json x : json =
     assoc_filter_nulls [
    ( "MDReqID" , string_to_json x.f_MarketDataRequest_MDReqID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_to_json x.f_MarketDataRequest_SubscriptionRequestType );
    ( "MarketDepth" , int_to_json x.f_MarketDataRequest_MarketDepth );
    ( "MDUpdateType" , mdupdatetype_opt_to_json x.f_MarketDataRequest_MDUpdateType );
    ( "AggregatedBook" , aggregatedbook_opt_to_json x.f_MarketDataRequest_AggregatedBook );
    ( "OpenCloseSettlFlag" , openclosesettlflag_opt_to_json x.f_MarketDataRequest_OpenCloseSettlFlag );
    ( "Scope" , scope_opt_to_json x.f_MarketDataRequest_Scope );
    ( "MDImplicitDelete" , mdimplicitdelete_opt_to_json x.f_MarketDataRequest_MDImplicitDelete );
    ( "ApplQueueAction" , applqueueaction_opt_to_json x.f_MarketDataRequest_ApplQueueAction );
    ( "ApplQueueMax" , int_opt_to_json x.f_MarketDataRequest_ApplQueueMax );
    ( "MDReqGrp" , rg mdreqgrp_to_json x.f_MarketDataRequest_MDReqGrp );
    ( "InstrmtMDReqGrp" , rg instrmtmdreqgrp_to_json x.f_MarketDataRequest_InstrmtMDReqGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_MarketDataRequest_TrdgSesGrp )
    ]
;;

let marketdatarequestreject_to_json x : json =
     assoc_filter_nulls [
    ( "MDReqID" , string_to_json x.f_MarketDataRequestReject_MDReqID );
    ( "MDReqRejReason" , mdreqrejreason_opt_to_json x.f_MarketDataRequestReject_MDReqRejReason );
    ( "Text" , string_opt_to_json x.f_MarketDataRequestReject_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_MarketDataRequestReject_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_MarketDataRequestReject_EncodedText );
    ( "MDRjctGrp" , rg mdrjctgrp_to_json x.f_MarketDataRequestReject_MDRjctGrp )
    ]
;;

let marketdatasnapshotfullrefresh_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_MarketDataSnapshotFullRefresh_Instrument );
    ( "MDReqID" , string_opt_to_json x.f_MarketDataSnapshotFullRefresh_MDReqID );
    ( "FinancialStatus" , financialstatus_opt_to_json x.f_MarketDataSnapshotFullRefresh_FinancialStatus );
    ( "CorporateAction" , corporateaction_opt_to_json x.f_MarketDataSnapshotFullRefresh_CorporateAction );
    ( "NetChgPrevDay" , float_4_opt_to_json x.f_MarketDataSnapshotFullRefresh_NetChgPrevDay );
    ( "ApplQueueDepth" , int_opt_to_json x.f_MarketDataSnapshotFullRefresh_ApplQueueDepth );
    ( "ApplQueueResolution" , applqueueresolution_opt_to_json x.f_MarketDataSnapshotFullRefresh_ApplQueueResolution );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_MarketDataSnapshotFullRefresh_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_MarketDataSnapshotFullRefresh_InstrmtLegGrp );
    ( "MDFullGrp" , rg mdfullgrp_to_json x.f_MarketDataSnapshotFullRefresh_MDFullGrp )
    ]
;;

let massquote_to_json x : json =
     assoc_filter_nulls [
    ( "QuoteReqID" , string_opt_to_json x.f_MassQuote_QuoteReqID );
    ( "QuoteID" , string_to_json x.f_MassQuote_QuoteID );
    ( "QuoteType" , quotetype_opt_to_json x.f_MassQuote_QuoteType );
    ( "QuoteResponseLevel" , quoteresponselevel_opt_to_json x.f_MassQuote_QuoteResponseLevel );
    ( "Account" , string_opt_to_json x.f_MassQuote_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_MassQuote_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_MassQuote_AccountType );
    ( "DefBidSize" , float_4_opt_to_json x.f_MassQuote_DefBidSize );
    ( "DefOfferSize" , float_4_opt_to_json x.f_MassQuote_DefOfferSize );
    ( "Parties" , rg parties_to_json x.f_MassQuote_Parties );
    ( "QuotSetGrp" , rg quotsetgrp_to_json x.f_MassQuote_QuotSetGrp )
    ]
;;

let massquoteacknowledgement_to_json x : json =
     assoc_filter_nulls [
    ( "QuoteReqID" , string_opt_to_json x.f_MassQuoteAcknowledgement_QuoteReqID );
    ( "QuoteID" , string_opt_to_json x.f_MassQuoteAcknowledgement_QuoteID );
    ( "QuoteStatus" , quotestatus_to_json x.f_MassQuoteAcknowledgement_QuoteStatus );
    ( "QuoteRejectReason" , quoterejectreason_opt_to_json x.f_MassQuoteAcknowledgement_QuoteRejectReason );
    ( "QuoteResponseLevel" , quoteresponselevel_opt_to_json x.f_MassQuoteAcknowledgement_QuoteResponseLevel );
    ( "QuoteType" , quotetype_opt_to_json x.f_MassQuoteAcknowledgement_QuoteType );
    ( "Account" , string_opt_to_json x.f_MassQuoteAcknowledgement_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_MassQuoteAcknowledgement_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_MassQuoteAcknowledgement_AccountType );
    ( "Text" , string_opt_to_json x.f_MassQuoteAcknowledgement_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_MassQuoteAcknowledgement_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_MassQuoteAcknowledgement_EncodedText );
    ( "Parties" , rg parties_to_json x.f_MassQuoteAcknowledgement_Parties );
    ( "QuotSetAckGrp" , rg quotsetackgrp_to_json x.f_MassQuoteAcknowledgement_QuotSetAckGrp )
    ]
;;

let multilegordercancelreplace_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_MultilegOrderCancelReplace_Instrument );
    ( "OrderQtyData" , orderqtydata_to_json x.f_MultilegOrderCancelReplace_OrderQtyData );
    ( "CommissionData" , commissiondata_to_json x.f_MultilegOrderCancelReplace_CommissionData );
    ( "PegInstructions" , peginstructions_to_json x.f_MultilegOrderCancelReplace_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_MultilegOrderCancelReplace_DiscretionInstructions );
    ( "OrderID" , string_opt_to_json x.f_MultilegOrderCancelReplace_OrderID );
    ( "OrigClOrdID" , string_to_json x.f_MultilegOrderCancelReplace_OrigClOrdID );
    ( "ClOrdID" , string_to_json x.f_MultilegOrderCancelReplace_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_MultilegOrderCancelReplace_SecondaryClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_MultilegOrderCancelReplace_ClOrdLinkID );
    ( "OrigOrdModTime" , utctimestamp_opt_to_json x.f_MultilegOrderCancelReplace_OrigOrdModTime );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_MultilegOrderCancelReplace_TradeOriginationDate );
    ( "TradeDate" , localmktdate_opt_to_json x.f_MultilegOrderCancelReplace_TradeDate );
    ( "Account" , string_opt_to_json x.f_MultilegOrderCancelReplace_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_MultilegOrderCancelReplace_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_MultilegOrderCancelReplace_AccountType );
    ( "DayBookingInst" , daybookinginst_opt_to_json x.f_MultilegOrderCancelReplace_DayBookingInst );
    ( "BookingUnit" , bookingunit_opt_to_json x.f_MultilegOrderCancelReplace_BookingUnit );
    ( "PreallocMethod" , preallocmethod_opt_to_json x.f_MultilegOrderCancelReplace_PreallocMethod );
    ( "AllocID" , string_opt_to_json x.f_MultilegOrderCancelReplace_AllocID );
    ( "SettlType" , settltype_opt_to_json x.f_MultilegOrderCancelReplace_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_MultilegOrderCancelReplace_SettlDate );
    ( "CashMargin" , cashmargin_opt_to_json x.f_MultilegOrderCancelReplace_CashMargin );
    ( "ClearingFeeIndicator" , clearingfeeindicator_opt_to_json x.f_MultilegOrderCancelReplace_ClearingFeeIndicator );
    ( "HandlInst" , handlinst_opt_to_json x.f_MultilegOrderCancelReplace_HandlInst );
    ( "ExecInst" , execinst_opt_to_json x.f_MultilegOrderCancelReplace_ExecInst );
    ( "MinQty" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_MaxFloor );
    ( "ExDestination" , exchange_opt_to_json x.f_MultilegOrderCancelReplace_ExDestination );
    ( "ProcessCode" , processcode_opt_to_json x.f_MultilegOrderCancelReplace_ProcessCode );
    ( "Side" , side_to_json x.f_MultilegOrderCancelReplace_Side );
    ( "PrevClosePx" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_PrevClosePx );
    ( "LocateReqd" , locatereqd_opt_to_json x.f_MultilegOrderCancelReplace_LocateReqd );
    ( "TransactTime" , utctimestamp_to_json x.f_MultilegOrderCancelReplace_TransactTime );
    ( "QtyType" , qtytype_opt_to_json x.f_MultilegOrderCancelReplace_QtyType );
    ( "OrdType" , ordtype_to_json x.f_MultilegOrderCancelReplace_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_MultilegOrderCancelReplace_PriceType );
    ( "Price" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_Price );
    ( "StopPx" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_StopPx );
    ( "Currency" , currency_opt_to_json x.f_MultilegOrderCancelReplace_Currency );
    ( "ComplianceID" , string_opt_to_json x.f_MultilegOrderCancelReplace_ComplianceID );
    ( "SolicitedFlag" , solicitedflag_opt_to_json x.f_MultilegOrderCancelReplace_SolicitedFlag );
    ( "IOIID" , string_opt_to_json x.f_MultilegOrderCancelReplace_IOIID );
    ( "QuoteID" , string_opt_to_json x.f_MultilegOrderCancelReplace_QuoteID );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_MultilegOrderCancelReplace_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_MultilegOrderCancelReplace_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_MultilegOrderCancelReplace_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_MultilegOrderCancelReplace_ExpireTime );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_MultilegOrderCancelReplace_GTBookingInst );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_MultilegOrderCancelReplace_OrderCapacity );
    ( "OrderRestrictions" , orderrestrictions_opt_to_json x.f_MultilegOrderCancelReplace_OrderRestrictions );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_MultilegOrderCancelReplace_CustOrderCapacity );
    ( "ForexReq" , forexreq_opt_to_json x.f_MultilegOrderCancelReplace_ForexReq );
    ( "SettlCurrency" , currency_opt_to_json x.f_MultilegOrderCancelReplace_SettlCurrency );
    ( "BookingType" , bookingtype_opt_to_json x.f_MultilegOrderCancelReplace_BookingType );
    ( "Text" , string_opt_to_json x.f_MultilegOrderCancelReplace_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_MultilegOrderCancelReplace_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_MultilegOrderCancelReplace_EncodedText );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_MultilegOrderCancelReplace_PositionEffect );
    ( "CoveredOrUncovered" , coveredoruncovered_opt_to_json x.f_MultilegOrderCancelReplace_CoveredOrUncovered );
    ( "MaxShow" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_MaxShow );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_MultilegOrderCancelReplace_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_MultilegOrderCancelReplace_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_MultilegOrderCancelReplace_ParticipationRate );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_MultilegOrderCancelReplace_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_MultilegOrderCancelReplace_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_MultilegOrderCancelReplace_RegistID );
    ( "Designation" , string_opt_to_json x.f_MultilegOrderCancelReplace_Designation );
    ( "MultiLegRptTypeReq" , multilegrpttypereq_opt_to_json x.f_MultilegOrderCancelReplace_MultiLegRptTypeReq );
    ( "Parties" , rg parties_to_json x.f_MultilegOrderCancelReplace_Parties );
    ( "PreAllocMlegGrp" , rg preallocmleggrp_to_json x.f_MultilegOrderCancelReplace_PreAllocMlegGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_MultilegOrderCancelReplace_TrdgSesGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_MultilegOrderCancelReplace_UndInstrmtGrp );
    ( "LegOrdGrp" , rg legordgrp_to_json x.f_MultilegOrderCancelReplace_LegOrdGrp )
    ]
;;

let networkcounterpartysystemstatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "NetworkRequestType" , networkrequesttype_to_json x.f_NetworkCounterpartySystemStatusRequest_NetworkRequestType );
    ( "NetworkRequestID" , string_to_json x.f_NetworkCounterpartySystemStatusRequest_NetworkRequestID );
    ( "CompIDReqGrp" , rg compidreqgrp_to_json x.f_NetworkCounterpartySystemStatusRequest_CompIDReqGrp )
    ]
;;

let networkcounterpartysystemstatusresponse_to_json x : json =
     assoc_filter_nulls [
    ( "NetworkStatusResponseType" , networkstatusresponsetype_to_json x.f_NetworkCounterpartySystemStatusResponse_NetworkStatusResponseType );
    ( "NetworkRequestID" , string_opt_to_json x.f_NetworkCounterpartySystemStatusResponse_NetworkRequestID );
    ( "NetworkResponseID" , string_to_json x.f_NetworkCounterpartySystemStatusResponse_NetworkResponseID );
    ( "LastNetworkResponseID" , string_opt_to_json x.f_NetworkCounterpartySystemStatusResponse_LastNetworkResponseID );
    ( "CompIDStatGrp" , rg compidstatgrp_to_json x.f_NetworkCounterpartySystemStatusResponse_CompIDStatGrp )
    ]
;;

let newordercross_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_NewOrderCross_Instrument );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_NewOrderCross_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_NewOrderCross_YieldData );
    ( "PegInstructions" , peginstructions_to_json x.f_NewOrderCross_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_NewOrderCross_DiscretionInstructions );
    ( "CrossID" , string_to_json x.f_NewOrderCross_CrossID );
    ( "CrossType" , crosstype_to_json x.f_NewOrderCross_CrossType );
    ( "CrossPrioritization" , crossprioritization_to_json x.f_NewOrderCross_CrossPrioritization );
    ( "SettlType" , settltype_opt_to_json x.f_NewOrderCross_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_NewOrderCross_SettlDate );
    ( "HandlInst" , handlinst_opt_to_json x.f_NewOrderCross_HandlInst );
    ( "ExecInst" , execinst_opt_to_json x.f_NewOrderCross_ExecInst );
    ( "MinQty" , float_4_opt_to_json x.f_NewOrderCross_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_NewOrderCross_MaxFloor );
    ( "ExDestination" , exchange_opt_to_json x.f_NewOrderCross_ExDestination );
    ( "ProcessCode" , processcode_opt_to_json x.f_NewOrderCross_ProcessCode );
    ( "PrevClosePx" , float_4_opt_to_json x.f_NewOrderCross_PrevClosePx );
    ( "LocateReqd" , locatereqd_opt_to_json x.f_NewOrderCross_LocateReqd );
    ( "TransactTime" , utctimestamp_to_json x.f_NewOrderCross_TransactTime );
    ( "OrdType" , ordtype_to_json x.f_NewOrderCross_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_NewOrderCross_PriceType );
    ( "Price" , float_4_opt_to_json x.f_NewOrderCross_Price );
    ( "StopPx" , float_4_opt_to_json x.f_NewOrderCross_StopPx );
    ( "Currency" , currency_opt_to_json x.f_NewOrderCross_Currency );
    ( "ComplianceID" , string_opt_to_json x.f_NewOrderCross_ComplianceID );
    ( "IOIID" , string_opt_to_json x.f_NewOrderCross_IOIID );
    ( "QuoteID" , string_opt_to_json x.f_NewOrderCross_QuoteID );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_NewOrderCross_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_NewOrderCross_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_NewOrderCross_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_NewOrderCross_ExpireTime );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_NewOrderCross_GTBookingInst );
    ( "MaxShow" , float_4_opt_to_json x.f_NewOrderCross_MaxShow );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_NewOrderCross_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_NewOrderCross_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_NewOrderCross_ParticipationRate );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_NewOrderCross_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_NewOrderCross_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_NewOrderCross_RegistID );
    ( "Designation" , string_opt_to_json x.f_NewOrderCross_Designation );
    ( "SideCrossOrdModGrp" , rg sidecrossordmodgrp_to_json x.f_NewOrderCross_SideCrossOrdModGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_NewOrderCross_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_NewOrderCross_InstrmtLegGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_NewOrderCross_TrdgSesGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_NewOrderCross_Stipulations )
    ]
;;

let neworderlist_to_json x : json =
     assoc_filter_nulls [
    ( "ListID" , string_to_json x.f_NewOrderList_ListID );
    ( "BidID" , string_opt_to_json x.f_NewOrderList_BidID );
    ( "ClientBidID" , string_opt_to_json x.f_NewOrderList_ClientBidID );
    ( "ProgRptReqs" , progrptreqs_opt_to_json x.f_NewOrderList_ProgRptReqs );
    ( "BidType" , bidtype_to_json x.f_NewOrderList_BidType );
    ( "ProgPeriodInterval" , int_opt_to_json x.f_NewOrderList_ProgPeriodInterval );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_NewOrderList_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_NewOrderList_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_NewOrderList_RegistID );
    ( "ListExecInstType" , listexecinsttype_opt_to_json x.f_NewOrderList_ListExecInstType );
    ( "ListExecInst" , string_opt_to_json x.f_NewOrderList_ListExecInst );
    ( "EncodedListExecInstLen" , int_opt_to_json x.f_NewOrderList_EncodedListExecInstLen );
    ( "EncodedListExecInst" , string_opt_to_json x.f_NewOrderList_EncodedListExecInst );
    ( "AllowableOneSidednessPct" , float_4_opt_to_json x.f_NewOrderList_AllowableOneSidednessPct );
    ( "AllowableOneSidednessValue" , float_4_opt_to_json x.f_NewOrderList_AllowableOneSidednessValue );
    ( "AllowableOneSidednessCurr" , currency_opt_to_json x.f_NewOrderList_AllowableOneSidednessCurr );
    ( "TotNoOrders" , int_to_json x.f_NewOrderList_TotNoOrders );
    ( "LastFragment" , lastfragment_opt_to_json x.f_NewOrderList_LastFragment );
    ( "ListOrdGrp" , rg listordgrp_to_json x.f_NewOrderList_ListOrdGrp )
    ]
;;

let newordermultileg_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_NewOrderMultileg_Instrument );
    ( "OrderQtyData" , orderqtydata_to_json x.f_NewOrderMultileg_OrderQtyData );
    ( "CommissionData" , commissiondata_to_json x.f_NewOrderMultileg_CommissionData );
    ( "PegInstructions" , peginstructions_to_json x.f_NewOrderMultileg_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_NewOrderMultileg_DiscretionInstructions );
    ( "ClOrdID" , string_to_json x.f_NewOrderMultileg_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_NewOrderMultileg_SecondaryClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_NewOrderMultileg_ClOrdLinkID );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_NewOrderMultileg_TradeOriginationDate );
    ( "TradeDate" , localmktdate_opt_to_json x.f_NewOrderMultileg_TradeDate );
    ( "Account" , string_opt_to_json x.f_NewOrderMultileg_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_NewOrderMultileg_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_NewOrderMultileg_AccountType );
    ( "DayBookingInst" , daybookinginst_opt_to_json x.f_NewOrderMultileg_DayBookingInst );
    ( "BookingUnit" , bookingunit_opt_to_json x.f_NewOrderMultileg_BookingUnit );
    ( "PreallocMethod" , preallocmethod_opt_to_json x.f_NewOrderMultileg_PreallocMethod );
    ( "AllocID" , string_opt_to_json x.f_NewOrderMultileg_AllocID );
    ( "SettlType" , settltype_opt_to_json x.f_NewOrderMultileg_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_NewOrderMultileg_SettlDate );
    ( "CashMargin" , cashmargin_opt_to_json x.f_NewOrderMultileg_CashMargin );
    ( "ClearingFeeIndicator" , clearingfeeindicator_opt_to_json x.f_NewOrderMultileg_ClearingFeeIndicator );
    ( "HandlInst" , handlinst_opt_to_json x.f_NewOrderMultileg_HandlInst );
    ( "ExecInst" , execinst_opt_to_json x.f_NewOrderMultileg_ExecInst );
    ( "MinQty" , float_4_opt_to_json x.f_NewOrderMultileg_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_NewOrderMultileg_MaxFloor );
    ( "ExDestination" , exchange_opt_to_json x.f_NewOrderMultileg_ExDestination );
    ( "ProcessCode" , processcode_opt_to_json x.f_NewOrderMultileg_ProcessCode );
    ( "Side" , side_to_json x.f_NewOrderMultileg_Side );
    ( "PrevClosePx" , float_4_opt_to_json x.f_NewOrderMultileg_PrevClosePx );
    ( "LocateReqd" , locatereqd_opt_to_json x.f_NewOrderMultileg_LocateReqd );
    ( "TransactTime" , utctimestamp_to_json x.f_NewOrderMultileg_TransactTime );
    ( "QtyType" , qtytype_opt_to_json x.f_NewOrderMultileg_QtyType );
    ( "OrdType" , ordtype_to_json x.f_NewOrderMultileg_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_NewOrderMultileg_PriceType );
    ( "Price" , float_4_opt_to_json x.f_NewOrderMultileg_Price );
    ( "StopPx" , float_4_opt_to_json x.f_NewOrderMultileg_StopPx );
    ( "Currency" , currency_opt_to_json x.f_NewOrderMultileg_Currency );
    ( "ComplianceID" , string_opt_to_json x.f_NewOrderMultileg_ComplianceID );
    ( "SolicitedFlag" , solicitedflag_opt_to_json x.f_NewOrderMultileg_SolicitedFlag );
    ( "IOIID" , string_opt_to_json x.f_NewOrderMultileg_IOIID );
    ( "QuoteID" , string_opt_to_json x.f_NewOrderMultileg_QuoteID );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_NewOrderMultileg_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_NewOrderMultileg_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_NewOrderMultileg_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_NewOrderMultileg_ExpireTime );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_NewOrderMultileg_GTBookingInst );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_NewOrderMultileg_OrderCapacity );
    ( "OrderRestrictions" , orderrestrictions_opt_to_json x.f_NewOrderMultileg_OrderRestrictions );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_NewOrderMultileg_CustOrderCapacity );
    ( "ForexReq" , forexreq_opt_to_json x.f_NewOrderMultileg_ForexReq );
    ( "SettlCurrency" , currency_opt_to_json x.f_NewOrderMultileg_SettlCurrency );
    ( "BookingType" , bookingtype_opt_to_json x.f_NewOrderMultileg_BookingType );
    ( "Text" , string_opt_to_json x.f_NewOrderMultileg_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_NewOrderMultileg_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_NewOrderMultileg_EncodedText );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_NewOrderMultileg_PositionEffect );
    ( "CoveredOrUncovered" , coveredoruncovered_opt_to_json x.f_NewOrderMultileg_CoveredOrUncovered );
    ( "MaxShow" , float_4_opt_to_json x.f_NewOrderMultileg_MaxShow );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_NewOrderMultileg_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_NewOrderMultileg_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_NewOrderMultileg_ParticipationRate );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_NewOrderMultileg_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_NewOrderMultileg_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_NewOrderMultileg_RegistID );
    ( "Designation" , string_opt_to_json x.f_NewOrderMultileg_Designation );
    ( "MultiLegRptTypeReq" , multilegrpttypereq_opt_to_json x.f_NewOrderMultileg_MultiLegRptTypeReq );
    ( "Parties" , rg parties_to_json x.f_NewOrderMultileg_Parties );
    ( "PreAllocMlegGrp" , rg preallocmleggrp_to_json x.f_NewOrderMultileg_PreAllocMlegGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_NewOrderMultileg_TrdgSesGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_NewOrderMultileg_UndInstrmtGrp );
    ( "LegOrdGrp" , rg legordgrp_to_json x.f_NewOrderMultileg_LegOrdGrp )
    ]
;;

let newordersingle_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_NewOrderSingle_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_NewOrderSingle_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_NewOrderSingle_OrderQtyData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_NewOrderSingle_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_NewOrderSingle_YieldData );
    ( "CommissionData" , commissiondata_to_json x.f_NewOrderSingle_CommissionData );
    ( "PegInstructions" , peginstructions_to_json x.f_NewOrderSingle_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_NewOrderSingle_DiscretionInstructions );
    ( "ClOrdID" , string_to_json x.f_NewOrderSingle_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_NewOrderSingle_SecondaryClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_NewOrderSingle_ClOrdLinkID );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_NewOrderSingle_TradeOriginationDate );
    ( "TradeDate" , localmktdate_opt_to_json x.f_NewOrderSingle_TradeDate );
    ( "Account" , string_opt_to_json x.f_NewOrderSingle_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_NewOrderSingle_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_NewOrderSingle_AccountType );
    ( "DayBookingInst" , daybookinginst_opt_to_json x.f_NewOrderSingle_DayBookingInst );
    ( "BookingUnit" , bookingunit_opt_to_json x.f_NewOrderSingle_BookingUnit );
    ( "PreallocMethod" , preallocmethod_opt_to_json x.f_NewOrderSingle_PreallocMethod );
    ( "AllocID" , string_opt_to_json x.f_NewOrderSingle_AllocID );
    ( "SettlType" , settltype_opt_to_json x.f_NewOrderSingle_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_NewOrderSingle_SettlDate );
    ( "CashMargin" , cashmargin_opt_to_json x.f_NewOrderSingle_CashMargin );
    ( "ClearingFeeIndicator" , clearingfeeindicator_opt_to_json x.f_NewOrderSingle_ClearingFeeIndicator );
    ( "HandlInst" , handlinst_opt_to_json x.f_NewOrderSingle_HandlInst );
    ( "ExecInst" , execinst_opt_to_json x.f_NewOrderSingle_ExecInst );
    ( "MinQty" , float_4_opt_to_json x.f_NewOrderSingle_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_NewOrderSingle_MaxFloor );
    ( "ExDestination" , exchange_opt_to_json x.f_NewOrderSingle_ExDestination );
    ( "ProcessCode" , processcode_opt_to_json x.f_NewOrderSingle_ProcessCode );
    ( "PrevClosePx" , float_4_opt_to_json x.f_NewOrderSingle_PrevClosePx );
    ( "Side" , side_to_json x.f_NewOrderSingle_Side );
    ( "LocateReqd" , locatereqd_opt_to_json x.f_NewOrderSingle_LocateReqd );
    ( "TransactTime" , utctimestamp_to_json x.f_NewOrderSingle_TransactTime );
    ( "QtyType" , qtytype_opt_to_json x.f_NewOrderSingle_QtyType );
    ( "OrdType" , ordtype_to_json x.f_NewOrderSingle_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_NewOrderSingle_PriceType );
    ( "Price" , float_4_opt_to_json x.f_NewOrderSingle_Price );
    ( "StopPx" , float_4_opt_to_json x.f_NewOrderSingle_StopPx );
    ( "Currency" , currency_opt_to_json x.f_NewOrderSingle_Currency );
    ( "ComplianceID" , string_opt_to_json x.f_NewOrderSingle_ComplianceID );
    ( "SolicitedFlag" , solicitedflag_opt_to_json x.f_NewOrderSingle_SolicitedFlag );
    ( "IOIID" , string_opt_to_json x.f_NewOrderSingle_IOIID );
    ( "QuoteID" , string_opt_to_json x.f_NewOrderSingle_QuoteID );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_NewOrderSingle_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_NewOrderSingle_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_NewOrderSingle_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_NewOrderSingle_ExpireTime );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_NewOrderSingle_GTBookingInst );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_NewOrderSingle_OrderCapacity );
    ( "OrderRestrictions" , orderrestrictions_opt_to_json x.f_NewOrderSingle_OrderRestrictions );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_NewOrderSingle_CustOrderCapacity );
    ( "ForexReq" , forexreq_opt_to_json x.f_NewOrderSingle_ForexReq );
    ( "SettlCurrency" , currency_opt_to_json x.f_NewOrderSingle_SettlCurrency );
    ( "BookingType" , bookingtype_opt_to_json x.f_NewOrderSingle_BookingType );
    ( "Text" , string_opt_to_json x.f_NewOrderSingle_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_NewOrderSingle_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_NewOrderSingle_EncodedText );
    ( "SettlDate2" , localmktdate_opt_to_json x.f_NewOrderSingle_SettlDate2 );
    ( "OrderQty2" , float_4_opt_to_json x.f_NewOrderSingle_OrderQty2 );
    ( "Price2" , float_4_opt_to_json x.f_NewOrderSingle_Price2 );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_NewOrderSingle_PositionEffect );
    ( "CoveredOrUncovered" , coveredoruncovered_opt_to_json x.f_NewOrderSingle_CoveredOrUncovered );
    ( "MaxShow" , float_4_opt_to_json x.f_NewOrderSingle_MaxShow );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_NewOrderSingle_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_NewOrderSingle_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_NewOrderSingle_ParticipationRate );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_NewOrderSingle_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_NewOrderSingle_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_NewOrderSingle_RegistID );
    ( "Designation" , string_opt_to_json x.f_NewOrderSingle_Designation );
    ( "Parties" , rg parties_to_json x.f_NewOrderSingle_Parties );
    ( "PreAllocGrp" , rg preallocgrp_to_json x.f_NewOrderSingle_PreAllocGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_NewOrderSingle_TrdgSesGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_NewOrderSingle_UndInstrmtGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_NewOrderSingle_Stipulations )
    ]
;;

let news_to_json x : json =
     assoc_filter_nulls [
    ( "OrigTime" , utctimestamp_opt_to_json x.f_News_OrigTime );
    ( "Urgency" , urgency_opt_to_json x.f_News_Urgency );
    ( "Headline" , string_to_json x.f_News_Headline );
    ( "EncodedHeadlineLen" , int_opt_to_json x.f_News_EncodedHeadlineLen );
    ( "EncodedHeadline" , string_opt_to_json x.f_News_EncodedHeadline );
    ( "URLLink" , string_opt_to_json x.f_News_URLLink );
    ( "RawDataLength" , int_opt_to_json x.f_News_RawDataLength );
    ( "RawData" , string_opt_to_json x.f_News_RawData );
    ( "RoutingGrp" , rg routinggrp_to_json x.f_News_RoutingGrp );
    ( "InstrmtGrp" , rg instrmtgrp_to_json x.f_News_InstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_News_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_News_UndInstrmtGrp );
    ( "LinesOfTextGrp" , rg linesoftextgrp_to_json x.f_News_LinesOfTextGrp )
    ]
;;

let ordercancelreject_to_json x : json =
     assoc_filter_nulls [
    ( "OrderID" , string_to_json x.f_OrderCancelReject_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_OrderCancelReject_SecondaryOrderID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_OrderCancelReject_SecondaryClOrdID );
    ( "ClOrdID" , string_to_json x.f_OrderCancelReject_ClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_OrderCancelReject_ClOrdLinkID );
    ( "OrigClOrdID" , string_to_json x.f_OrderCancelReject_OrigClOrdID );
    ( "OrdStatus" , ordstatus_to_json x.f_OrderCancelReject_OrdStatus );
    ( "WorkingIndicator" , workingindicator_opt_to_json x.f_OrderCancelReject_WorkingIndicator );
    ( "OrigOrdModTime" , utctimestamp_opt_to_json x.f_OrderCancelReject_OrigOrdModTime );
    ( "ListID" , string_opt_to_json x.f_OrderCancelReject_ListID );
    ( "Account" , string_opt_to_json x.f_OrderCancelReject_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_OrderCancelReject_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_OrderCancelReject_AccountType );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_OrderCancelReject_TradeOriginationDate );
    ( "TradeDate" , localmktdate_opt_to_json x.f_OrderCancelReject_TradeDate );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_OrderCancelReject_TransactTime );
    ( "CxlRejResponseTo" , cxlrejresponseto_to_json x.f_OrderCancelReject_CxlRejResponseTo );
    ( "CxlRejReason" , cxlrejreason_opt_to_json x.f_OrderCancelReject_CxlRejReason );
    ( "Text" , string_opt_to_json x.f_OrderCancelReject_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_OrderCancelReject_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_OrderCancelReject_EncodedText )
    ]
;;

let ordercancelreplacerequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_OrderCancelReplaceRequest_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_OrderCancelReplaceRequest_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_OrderCancelReplaceRequest_OrderQtyData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_OrderCancelReplaceRequest_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_OrderCancelReplaceRequest_YieldData );
    ( "PegInstructions" , peginstructions_to_json x.f_OrderCancelReplaceRequest_PegInstructions );
    ( "DiscretionInstructions" , discretioninstructions_to_json x.f_OrderCancelReplaceRequest_DiscretionInstructions );
    ( "CommissionData" , commissiondata_to_json x.f_OrderCancelReplaceRequest_CommissionData );
    ( "OrderID" , string_opt_to_json x.f_OrderCancelReplaceRequest_OrderID );
    ( "TradeOriginationDate" , localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_TradeOriginationDate );
    ( "TradeDate" , localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_TradeDate );
    ( "OrigClOrdID" , string_to_json x.f_OrderCancelReplaceRequest_OrigClOrdID );
    ( "ClOrdID" , string_to_json x.f_OrderCancelReplaceRequest_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_OrderCancelReplaceRequest_SecondaryClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_OrderCancelReplaceRequest_ClOrdLinkID );
    ( "ListID" , string_opt_to_json x.f_OrderCancelReplaceRequest_ListID );
    ( "OrigOrdModTime" , utctimestamp_opt_to_json x.f_OrderCancelReplaceRequest_OrigOrdModTime );
    ( "Account" , string_opt_to_json x.f_OrderCancelReplaceRequest_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_OrderCancelReplaceRequest_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_OrderCancelReplaceRequest_AccountType );
    ( "DayBookingInst" , daybookinginst_opt_to_json x.f_OrderCancelReplaceRequest_DayBookingInst );
    ( "BookingUnit" , bookingunit_opt_to_json x.f_OrderCancelReplaceRequest_BookingUnit );
    ( "PreallocMethod" , preallocmethod_opt_to_json x.f_OrderCancelReplaceRequest_PreallocMethod );
    ( "AllocID" , string_opt_to_json x.f_OrderCancelReplaceRequest_AllocID );
    ( "SettlType" , settltype_opt_to_json x.f_OrderCancelReplaceRequest_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_SettlDate );
    ( "CashMargin" , cashmargin_opt_to_json x.f_OrderCancelReplaceRequest_CashMargin );
    ( "ClearingFeeIndicator" , clearingfeeindicator_opt_to_json x.f_OrderCancelReplaceRequest_ClearingFeeIndicator );
    ( "HandlInst" , handlinst_opt_to_json x.f_OrderCancelReplaceRequest_HandlInst );
    ( "ExecInst" , execinst_opt_to_json x.f_OrderCancelReplaceRequest_ExecInst );
    ( "MinQty" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_MinQty );
    ( "MaxFloor" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_MaxFloor );
    ( "ExDestination" , exchange_opt_to_json x.f_OrderCancelReplaceRequest_ExDestination );
    ( "Side" , side_to_json x.f_OrderCancelReplaceRequest_Side );
    ( "TransactTime" , utctimestamp_to_json x.f_OrderCancelReplaceRequest_TransactTime );
    ( "QtyType" , qtytype_opt_to_json x.f_OrderCancelReplaceRequest_QtyType );
    ( "OrdType" , ordtype_to_json x.f_OrderCancelReplaceRequest_OrdType );
    ( "PriceType" , pricetype_opt_to_json x.f_OrderCancelReplaceRequest_PriceType );
    ( "Price" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_Price );
    ( "StopPx" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_StopPx );
    ( "TargetStrategy" , targetstrategy_opt_to_json x.f_OrderCancelReplaceRequest_TargetStrategy );
    ( "TargetStrategyParameters" , string_opt_to_json x.f_OrderCancelReplaceRequest_TargetStrategyParameters );
    ( "ParticipationRate" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_ParticipationRate );
    ( "ComplianceID" , string_opt_to_json x.f_OrderCancelReplaceRequest_ComplianceID );
    ( "SolicitedFlag" , solicitedflag_opt_to_json x.f_OrderCancelReplaceRequest_SolicitedFlag );
    ( "Currency" , currency_opt_to_json x.f_OrderCancelReplaceRequest_Currency );
    ( "TimeInForce" , timeinforce_opt_to_json x.f_OrderCancelReplaceRequest_TimeInForce );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_OrderCancelReplaceRequest_EffectiveTime );
    ( "ExpireDate" , localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_ExpireDate );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_OrderCancelReplaceRequest_ExpireTime );
    ( "GTBookingInst" , gtbookinginst_opt_to_json x.f_OrderCancelReplaceRequest_GTBookingInst );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_OrderCancelReplaceRequest_OrderCapacity );
    ( "OrderRestrictions" , orderrestrictions_opt_to_json x.f_OrderCancelReplaceRequest_OrderRestrictions );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_OrderCancelReplaceRequest_CustOrderCapacity );
    ( "ForexReq" , forexreq_opt_to_json x.f_OrderCancelReplaceRequest_ForexReq );
    ( "SettlCurrency" , currency_opt_to_json x.f_OrderCancelReplaceRequest_SettlCurrency );
    ( "BookingType" , bookingtype_opt_to_json x.f_OrderCancelReplaceRequest_BookingType );
    ( "Text" , string_opt_to_json x.f_OrderCancelReplaceRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_OrderCancelReplaceRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_OrderCancelReplaceRequest_EncodedText );
    ( "SettlDate2" , localmktdate_opt_to_json x.f_OrderCancelReplaceRequest_SettlDate2 );
    ( "OrderQty2" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_OrderQty2 );
    ( "Price2" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_Price2 );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_OrderCancelReplaceRequest_PositionEffect );
    ( "CoveredOrUncovered" , coveredoruncovered_opt_to_json x.f_OrderCancelReplaceRequest_CoveredOrUncovered );
    ( "MaxShow" , float_4_opt_to_json x.f_OrderCancelReplaceRequest_MaxShow );
    ( "LocateReqd" , locatereqd_opt_to_json x.f_OrderCancelReplaceRequest_LocateReqd );
    ( "CancellationRights" , cancellationrights_opt_to_json x.f_OrderCancelReplaceRequest_CancellationRights );
    ( "MoneyLaunderingStatus" , moneylaunderingstatus_opt_to_json x.f_OrderCancelReplaceRequest_MoneyLaunderingStatus );
    ( "RegistID" , string_opt_to_json x.f_OrderCancelReplaceRequest_RegistID );
    ( "Designation" , string_opt_to_json x.f_OrderCancelReplaceRequest_Designation );
    ( "Parties" , rg parties_to_json x.f_OrderCancelReplaceRequest_Parties );
    ( "PreAllocGrp" , rg preallocgrp_to_json x.f_OrderCancelReplaceRequest_PreAllocGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_OrderCancelReplaceRequest_TrdgSesGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_OrderCancelReplaceRequest_UndInstrmtGrp )
    ]
;;

let ordercancelrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_OrderCancelRequest_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_OrderCancelRequest_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_OrderCancelRequest_OrderQtyData );
    ( "OrigClOrdID" , string_to_json x.f_OrderCancelRequest_OrigClOrdID );
    ( "OrderID" , string_opt_to_json x.f_OrderCancelRequest_OrderID );
    ( "ClOrdID" , string_to_json x.f_OrderCancelRequest_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_OrderCancelRequest_SecondaryClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_OrderCancelRequest_ClOrdLinkID );
    ( "ListID" , string_opt_to_json x.f_OrderCancelRequest_ListID );
    ( "OrigOrdModTime" , utctimestamp_opt_to_json x.f_OrderCancelRequest_OrigOrdModTime );
    ( "Account" , string_opt_to_json x.f_OrderCancelRequest_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_OrderCancelRequest_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_OrderCancelRequest_AccountType );
    ( "Side" , side_to_json x.f_OrderCancelRequest_Side );
    ( "TransactTime" , utctimestamp_to_json x.f_OrderCancelRequest_TransactTime );
    ( "ComplianceID" , string_opt_to_json x.f_OrderCancelRequest_ComplianceID );
    ( "Text" , string_opt_to_json x.f_OrderCancelRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_OrderCancelRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_OrderCancelRequest_EncodedText );
    ( "Parties" , rg parties_to_json x.f_OrderCancelRequest_Parties );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_OrderCancelRequest_UndInstrmtGrp )
    ]
;;

let ordermasscancelreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_OrderMassCancelReport_Instrument );
    ( "UnderlyingInstrument" , underlyinginstrument_to_json x.f_OrderMassCancelReport_UnderlyingInstrument );
    ( "ClOrdID" , string_opt_to_json x.f_OrderMassCancelReport_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_OrderMassCancelReport_SecondaryClOrdID );
    ( "OrderID" , string_to_json x.f_OrderMassCancelReport_OrderID );
    ( "SecondaryOrderID" , string_opt_to_json x.f_OrderMassCancelReport_SecondaryOrderID );
    ( "MassCancelRequestType" , masscancelrequesttype_to_json x.f_OrderMassCancelReport_MassCancelRequestType );
    ( "MassCancelResponse" , masscancelresponse_to_json x.f_OrderMassCancelReport_MassCancelResponse );
    ( "MassCancelRejectReason" , masscancelrejectreason_opt_to_json x.f_OrderMassCancelReport_MassCancelRejectReason );
    ( "TotalAffectedOrders" , int_opt_to_json x.f_OrderMassCancelReport_TotalAffectedOrders );
    ( "TradingSessionID" , string_opt_to_json x.f_OrderMassCancelReport_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_OrderMassCancelReport_TradingSessionSubID );
    ( "Side" , side_opt_to_json x.f_OrderMassCancelReport_Side );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_OrderMassCancelReport_TransactTime );
    ( "Text" , string_opt_to_json x.f_OrderMassCancelReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_OrderMassCancelReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_OrderMassCancelReport_EncodedText );
    ( "AffectedOrdGrp" , rg affectedordgrp_to_json x.f_OrderMassCancelReport_AffectedOrdGrp )
    ]
;;

let ordermasscancelrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_OrderMassCancelRequest_Instrument );
    ( "UnderlyingInstrument" , underlyinginstrument_to_json x.f_OrderMassCancelRequest_UnderlyingInstrument );
    ( "ClOrdID" , string_to_json x.f_OrderMassCancelRequest_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_OrderMassCancelRequest_SecondaryClOrdID );
    ( "MassCancelRequestType" , masscancelrequesttype_to_json x.f_OrderMassCancelRequest_MassCancelRequestType );
    ( "TradingSessionID" , string_opt_to_json x.f_OrderMassCancelRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_OrderMassCancelRequest_TradingSessionSubID );
    ( "Side" , side_opt_to_json x.f_OrderMassCancelRequest_Side );
    ( "TransactTime" , utctimestamp_to_json x.f_OrderMassCancelRequest_TransactTime );
    ( "Text" , string_opt_to_json x.f_OrderMassCancelRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_OrderMassCancelRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_OrderMassCancelRequest_EncodedText )
    ]
;;

let ordermassstatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_OrderMassStatusRequest_Instrument );
    ( "UnderlyingInstrument" , underlyinginstrument_to_json x.f_OrderMassStatusRequest_UnderlyingInstrument );
    ( "MassStatusReqID" , string_to_json x.f_OrderMassStatusRequest_MassStatusReqID );
    ( "MassStatusReqType" , massstatusreqtype_to_json x.f_OrderMassStatusRequest_MassStatusReqType );
    ( "Account" , string_opt_to_json x.f_OrderMassStatusRequest_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_OrderMassStatusRequest_AcctIDSource );
    ( "TradingSessionID" , string_opt_to_json x.f_OrderMassStatusRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_OrderMassStatusRequest_TradingSessionSubID );
    ( "Side" , side_opt_to_json x.f_OrderMassStatusRequest_Side );
    ( "Parties" , rg parties_to_json x.f_OrderMassStatusRequest_Parties )
    ]
;;

let orderstatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_OrderStatusRequest_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_OrderStatusRequest_FinancingDetails );
    ( "OrderID" , string_opt_to_json x.f_OrderStatusRequest_OrderID );
    ( "ClOrdID" , string_to_json x.f_OrderStatusRequest_ClOrdID );
    ( "SecondaryClOrdID" , string_opt_to_json x.f_OrderStatusRequest_SecondaryClOrdID );
    ( "ClOrdLinkID" , string_opt_to_json x.f_OrderStatusRequest_ClOrdLinkID );
    ( "OrdStatusReqID" , string_opt_to_json x.f_OrderStatusRequest_OrdStatusReqID );
    ( "Account" , string_opt_to_json x.f_OrderStatusRequest_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_OrderStatusRequest_AcctIDSource );
    ( "Side" , side_to_json x.f_OrderStatusRequest_Side );
    ( "Parties" , rg parties_to_json x.f_OrderStatusRequest_Parties );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_OrderStatusRequest_UndInstrmtGrp )
    ]
;;

let positionmaintenancereport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_PositionMaintenanceReport_Instrument );
    ( "PosMaintRptID" , string_to_json x.f_PositionMaintenanceReport_PosMaintRptID );
    ( "PosTransType" , postranstype_to_json x.f_PositionMaintenanceReport_PosTransType );
    ( "PosReqID" , string_opt_to_json x.f_PositionMaintenanceReport_PosReqID );
    ( "PosMaintAction" , posmaintaction_to_json x.f_PositionMaintenanceReport_PosMaintAction );
    ( "OrigPosReqRefID" , string_to_json x.f_PositionMaintenanceReport_OrigPosReqRefID );
    ( "PosMaintStatus" , posmaintstatus_to_json x.f_PositionMaintenanceReport_PosMaintStatus );
    ( "PosMaintResult" , posmaintresult_opt_to_json x.f_PositionMaintenanceReport_PosMaintResult );
    ( "ClearingBusinessDate" , localmktdate_to_json x.f_PositionMaintenanceReport_ClearingBusinessDate );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_PositionMaintenanceReport_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_PositionMaintenanceReport_SettlSessSubID );
    ( "Account" , string_to_json x.f_PositionMaintenanceReport_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_PositionMaintenanceReport_AcctIDSource );
    ( "AccountType" , accounttype_to_json x.f_PositionMaintenanceReport_AccountType );
    ( "Currency" , currency_opt_to_json x.f_PositionMaintenanceReport_Currency );
    ( "TransactTime" , utctimestamp_to_json x.f_PositionMaintenanceReport_TransactTime );
    ( "AdjustmentType" , adjustmenttype_opt_to_json x.f_PositionMaintenanceReport_AdjustmentType );
    ( "ThresholdAmount" , float_4_opt_to_json x.f_PositionMaintenanceReport_ThresholdAmount );
    ( "Text" , string_opt_to_json x.f_PositionMaintenanceReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_PositionMaintenanceReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_PositionMaintenanceReport_EncodedText );
    ( "Parties" , rg parties_to_json x.f_PositionMaintenanceReport_Parties );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_PositionMaintenanceReport_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_PositionMaintenanceReport_UndInstrmtGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_PositionMaintenanceReport_TrdgSesGrp );
    ( "PositionQty" , rg positionqty_to_json x.f_PositionMaintenanceReport_PositionQty );
    ( "PositionAmountData" , rg positionamountdata_to_json x.f_PositionMaintenanceReport_PositionAmountData )
    ]
;;

let positionmaintenancerequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_PositionMaintenanceRequest_Instrument );
    ( "PosReqID" , string_to_json x.f_PositionMaintenanceRequest_PosReqID );
    ( "PosTransType" , postranstype_to_json x.f_PositionMaintenanceRequest_PosTransType );
    ( "PosMaintAction" , posmaintaction_to_json x.f_PositionMaintenanceRequest_PosMaintAction );
    ( "OrigPosReqRefID" , string_opt_to_json x.f_PositionMaintenanceRequest_OrigPosReqRefID );
    ( "PosMaintRptRefID" , string_opt_to_json x.f_PositionMaintenanceRequest_PosMaintRptRefID );
    ( "ClearingBusinessDate" , localmktdate_to_json x.f_PositionMaintenanceRequest_ClearingBusinessDate );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_PositionMaintenanceRequest_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_PositionMaintenanceRequest_SettlSessSubID );
    ( "Account" , string_to_json x.f_PositionMaintenanceRequest_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_PositionMaintenanceRequest_AcctIDSource );
    ( "AccountType" , accounttype_to_json x.f_PositionMaintenanceRequest_AccountType );
    ( "Currency" , currency_opt_to_json x.f_PositionMaintenanceRequest_Currency );
    ( "TransactTime" , utctimestamp_to_json x.f_PositionMaintenanceRequest_TransactTime );
    ( "AdjustmentType" , adjustmenttype_opt_to_json x.f_PositionMaintenanceRequest_AdjustmentType );
    ( "ContraryInstructionIndicator" , bool_opt_to_json x.f_PositionMaintenanceRequest_ContraryInstructionIndicator );
    ( "PriorSpreadIndicator" , bool_opt_to_json x.f_PositionMaintenanceRequest_PriorSpreadIndicator );
    ( "ThresholdAmount" , float_4_opt_to_json x.f_PositionMaintenanceRequest_ThresholdAmount );
    ( "Text" , string_opt_to_json x.f_PositionMaintenanceRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_PositionMaintenanceRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_PositionMaintenanceRequest_EncodedText );
    ( "Parties" , rg parties_to_json x.f_PositionMaintenanceRequest_Parties );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_PositionMaintenanceRequest_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_PositionMaintenanceRequest_UndInstrmtGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_PositionMaintenanceRequest_TrdgSesGrp );
    ( "PositionQty" , rg positionqty_to_json x.f_PositionMaintenanceRequest_PositionQty )
    ]
;;

let positionreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_PositionReport_Instrument );
    ( "PosMaintRptID" , string_to_json x.f_PositionReport_PosMaintRptID );
    ( "PosReqID" , string_opt_to_json x.f_PositionReport_PosReqID );
    ( "PosReqType" , posreqtype_opt_to_json x.f_PositionReport_PosReqType );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_PositionReport_SubscriptionRequestType );
    ( "TotalNumPosReports" , int_opt_to_json x.f_PositionReport_TotalNumPosReports );
    ( "UnsolicitedIndicator" , unsolicitedindicator_opt_to_json x.f_PositionReport_UnsolicitedIndicator );
    ( "PosReqResult" , posreqresult_to_json x.f_PositionReport_PosReqResult );
    ( "ClearingBusinessDate" , localmktdate_to_json x.f_PositionReport_ClearingBusinessDate );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_PositionReport_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_PositionReport_SettlSessSubID );
    ( "Account" , string_to_json x.f_PositionReport_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_PositionReport_AcctIDSource );
    ( "AccountType" , accounttype_to_json x.f_PositionReport_AccountType );
    ( "Currency" , currency_opt_to_json x.f_PositionReport_Currency );
    ( "SettlPrice" , float_4_to_json x.f_PositionReport_SettlPrice );
    ( "SettlPriceType" , settlpricetype_to_json x.f_PositionReport_SettlPriceType );
    ( "PriorSettlPrice" , float_4_to_json x.f_PositionReport_PriorSettlPrice );
    ( "RegistStatus" , registstatus_opt_to_json x.f_PositionReport_RegistStatus );
    ( "DeliveryDate" , localmktdate_opt_to_json x.f_PositionReport_DeliveryDate );
    ( "Text" , string_opt_to_json x.f_PositionReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_PositionReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_PositionReport_EncodedText );
    ( "Parties" , rg parties_to_json x.f_PositionReport_Parties );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_PositionReport_InstrmtLegGrp );
    ( "PosUndInstrmtGrp" , rg posundinstrmtgrp_to_json x.f_PositionReport_PosUndInstrmtGrp );
    ( "PositionQty" , rg positionqty_to_json x.f_PositionReport_PositionQty );
    ( "PositionAmountData" , rg positionamountdata_to_json x.f_PositionReport_PositionAmountData )
    ]
;;

let quote_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_Quote_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_Quote_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_Quote_OrderQtyData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_Quote_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_Quote_YieldData );
    ( "QuoteReqID" , string_opt_to_json x.f_Quote_QuoteReqID );
    ( "QuoteID" , string_to_json x.f_Quote_QuoteID );
    ( "QuoteRespID" , string_opt_to_json x.f_Quote_QuoteRespID );
    ( "QuoteType" , quotetype_opt_to_json x.f_Quote_QuoteType );
    ( "QuoteResponseLevel" , quoteresponselevel_opt_to_json x.f_Quote_QuoteResponseLevel );
    ( "TradingSessionID" , string_opt_to_json x.f_Quote_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_Quote_TradingSessionSubID );
    ( "Side" , side_opt_to_json x.f_Quote_Side );
    ( "SettlType" , settltype_opt_to_json x.f_Quote_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_Quote_SettlDate );
    ( "SettlDate2" , localmktdate_opt_to_json x.f_Quote_SettlDate2 );
    ( "OrderQty2" , float_4_opt_to_json x.f_Quote_OrderQty2 );
    ( "Currency" , currency_opt_to_json x.f_Quote_Currency );
    ( "Account" , string_opt_to_json x.f_Quote_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_Quote_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_Quote_AccountType );
    ( "BidPx" , float_4_opt_to_json x.f_Quote_BidPx );
    ( "OfferPx" , float_4_opt_to_json x.f_Quote_OfferPx );
    ( "MktBidPx" , float_4_opt_to_json x.f_Quote_MktBidPx );
    ( "MktOfferPx" , float_4_opt_to_json x.f_Quote_MktOfferPx );
    ( "MinBidSize" , float_4_opt_to_json x.f_Quote_MinBidSize );
    ( "BidSize" , float_4_opt_to_json x.f_Quote_BidSize );
    ( "MinOfferSize" , float_4_opt_to_json x.f_Quote_MinOfferSize );
    ( "OfferSize" , float_4_opt_to_json x.f_Quote_OfferSize );
    ( "ValidUntilTime" , utctimestamp_opt_to_json x.f_Quote_ValidUntilTime );
    ( "BidSpotRate" , float_4_opt_to_json x.f_Quote_BidSpotRate );
    ( "OfferSpotRate" , float_4_opt_to_json x.f_Quote_OfferSpotRate );
    ( "BidForwardPoints" , float_4_opt_to_json x.f_Quote_BidForwardPoints );
    ( "OfferForwardPoints" , float_4_opt_to_json x.f_Quote_OfferForwardPoints );
    ( "MidPx" , float_4_opt_to_json x.f_Quote_MidPx );
    ( "BidYield" , float_4_opt_to_json x.f_Quote_BidYield );
    ( "MidYield" , float_4_opt_to_json x.f_Quote_MidYield );
    ( "OfferYield" , float_4_opt_to_json x.f_Quote_OfferYield );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_Quote_TransactTime );
    ( "OrdType" , ordtype_opt_to_json x.f_Quote_OrdType );
    ( "BidForwardPoints2" , float_4_opt_to_json x.f_Quote_BidForwardPoints2 );
    ( "OfferForwardPoints2" , float_4_opt_to_json x.f_Quote_OfferForwardPoints2 );
    ( "SettlCurrBidFxRate" , float_4_opt_to_json x.f_Quote_SettlCurrBidFxRate );
    ( "SettlCurrOfferFxRate" , float_4_opt_to_json x.f_Quote_SettlCurrOfferFxRate );
    ( "SettlCurrFxRateCalc" , settlcurrfxratecalc_opt_to_json x.f_Quote_SettlCurrFxRateCalc );
    ( "CommType" , commtype_opt_to_json x.f_Quote_CommType );
    ( "Commission" , float_4_opt_to_json x.f_Quote_Commission );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_Quote_CustOrderCapacity );
    ( "ExDestination" , exchange_opt_to_json x.f_Quote_ExDestination );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_Quote_OrderCapacity );
    ( "PriceType" , pricetype_opt_to_json x.f_Quote_PriceType );
    ( "Text" , string_opt_to_json x.f_Quote_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_Quote_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_Quote_EncodedText );
    ( "QuotQualGrp" , rg quotqualgrp_to_json x.f_Quote_QuotQualGrp );
    ( "Parties" , rg parties_to_json x.f_Quote_Parties );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_Quote_UndInstrmtGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_Quote_Stipulations );
    ( "LegQuotGrp" , rg legquotgrp_to_json x.f_Quote_LegQuotGrp )
    ]
;;

let quotecancel_to_json x : json =
     assoc_filter_nulls [
    ( "QuoteReqID" , string_opt_to_json x.f_QuoteCancel_QuoteReqID );
    ( "QuoteID" , string_to_json x.f_QuoteCancel_QuoteID );
    ( "QuoteCancelType" , quotecanceltype_to_json x.f_QuoteCancel_QuoteCancelType );
    ( "QuoteResponseLevel" , quoteresponselevel_opt_to_json x.f_QuoteCancel_QuoteResponseLevel );
    ( "Account" , string_opt_to_json x.f_QuoteCancel_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_QuoteCancel_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_QuoteCancel_AccountType );
    ( "TradingSessionID" , string_opt_to_json x.f_QuoteCancel_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_QuoteCancel_TradingSessionSubID );
    ( "Parties" , rg parties_to_json x.f_QuoteCancel_Parties );
    ( "QuotCxlEntriesGrp" , rg quotcxlentriesgrp_to_json x.f_QuoteCancel_QuotCxlEntriesGrp )
    ]
;;

let quoterequest_to_json x : json =
     assoc_filter_nulls [
    ( "QuoteReqID" , string_to_json x.f_QuoteRequest_QuoteReqID );
    ( "RFQReqID" , string_opt_to_json x.f_QuoteRequest_RFQReqID );
    ( "ClOrdID" , string_opt_to_json x.f_QuoteRequest_ClOrdID );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_QuoteRequest_OrderCapacity );
    ( "Text" , string_opt_to_json x.f_QuoteRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_QuoteRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_QuoteRequest_EncodedText );
    ( "QuotReqGrp" , rg quotreqgrp_to_json x.f_QuoteRequest_QuotReqGrp )
    ]
;;

let quoterequestreject_to_json x : json =
     assoc_filter_nulls [
    ( "QuoteReqID" , string_to_json x.f_QuoteRequestReject_QuoteReqID );
    ( "RFQReqID" , string_opt_to_json x.f_QuoteRequestReject_RFQReqID );
    ( "QuoteRequestRejectReason" , quoterequestrejectreason_to_json x.f_QuoteRequestReject_QuoteRequestRejectReason );
    ( "Text" , string_opt_to_json x.f_QuoteRequestReject_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_QuoteRequestReject_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_QuoteRequestReject_EncodedText );
    ( "QuotReqRjctGrp" , rg quotreqrjctgrp_to_json x.f_QuoteRequestReject_QuotReqRjctGrp )
    ]
;;

let quoteresponse_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_QuoteResponse_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_QuoteResponse_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_QuoteResponse_OrderQtyData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_QuoteResponse_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_QuoteResponse_YieldData );
    ( "QuoteRespID" , string_to_json x.f_QuoteResponse_QuoteRespID );
    ( "QuoteID" , string_opt_to_json x.f_QuoteResponse_QuoteID );
    ( "QuoteRespType" , quoteresptype_to_json x.f_QuoteResponse_QuoteRespType );
    ( "ClOrdID" , string_opt_to_json x.f_QuoteResponse_ClOrdID );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_QuoteResponse_OrderCapacity );
    ( "IOIID" , string_opt_to_json x.f_QuoteResponse_IOIID );
    ( "QuoteType" , quotetype_opt_to_json x.f_QuoteResponse_QuoteType );
    ( "TradingSessionID" , string_opt_to_json x.f_QuoteResponse_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_QuoteResponse_TradingSessionSubID );
    ( "Side" , side_opt_to_json x.f_QuoteResponse_Side );
    ( "SettlType" , settltype_opt_to_json x.f_QuoteResponse_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_QuoteResponse_SettlDate );
    ( "SettlDate2" , localmktdate_opt_to_json x.f_QuoteResponse_SettlDate2 );
    ( "OrderQty2" , float_4_opt_to_json x.f_QuoteResponse_OrderQty2 );
    ( "Currency" , currency_opt_to_json x.f_QuoteResponse_Currency );
    ( "Account" , string_opt_to_json x.f_QuoteResponse_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_QuoteResponse_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_QuoteResponse_AccountType );
    ( "BidPx" , float_4_opt_to_json x.f_QuoteResponse_BidPx );
    ( "OfferPx" , float_4_opt_to_json x.f_QuoteResponse_OfferPx );
    ( "MktBidPx" , float_4_opt_to_json x.f_QuoteResponse_MktBidPx );
    ( "MktOfferPx" , float_4_opt_to_json x.f_QuoteResponse_MktOfferPx );
    ( "MinBidSize" , float_4_opt_to_json x.f_QuoteResponse_MinBidSize );
    ( "BidSize" , float_4_opt_to_json x.f_QuoteResponse_BidSize );
    ( "MinOfferSize" , float_4_opt_to_json x.f_QuoteResponse_MinOfferSize );
    ( "OfferSize" , float_4_opt_to_json x.f_QuoteResponse_OfferSize );
    ( "ValidUntilTime" , utctimestamp_opt_to_json x.f_QuoteResponse_ValidUntilTime );
    ( "BidSpotRate" , float_4_opt_to_json x.f_QuoteResponse_BidSpotRate );
    ( "OfferSpotRate" , float_4_opt_to_json x.f_QuoteResponse_OfferSpotRate );
    ( "BidForwardPoints" , float_4_opt_to_json x.f_QuoteResponse_BidForwardPoints );
    ( "OfferForwardPoints" , float_4_opt_to_json x.f_QuoteResponse_OfferForwardPoints );
    ( "MidPx" , float_4_opt_to_json x.f_QuoteResponse_MidPx );
    ( "BidYield" , float_4_opt_to_json x.f_QuoteResponse_BidYield );
    ( "MidYield" , float_4_opt_to_json x.f_QuoteResponse_MidYield );
    ( "OfferYield" , float_4_opt_to_json x.f_QuoteResponse_OfferYield );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_QuoteResponse_TransactTime );
    ( "OrdType" , ordtype_opt_to_json x.f_QuoteResponse_OrdType );
    ( "BidForwardPoints2" , float_4_opt_to_json x.f_QuoteResponse_BidForwardPoints2 );
    ( "OfferForwardPoints2" , float_4_opt_to_json x.f_QuoteResponse_OfferForwardPoints2 );
    ( "SettlCurrBidFxRate" , float_4_opt_to_json x.f_QuoteResponse_SettlCurrBidFxRate );
    ( "SettlCurrOfferFxRate" , float_4_opt_to_json x.f_QuoteResponse_SettlCurrOfferFxRate );
    ( "SettlCurrFxRateCalc" , settlcurrfxratecalc_opt_to_json x.f_QuoteResponse_SettlCurrFxRateCalc );
    ( "Commission" , float_4_opt_to_json x.f_QuoteResponse_Commission );
    ( "CommType" , commtype_opt_to_json x.f_QuoteResponse_CommType );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_QuoteResponse_CustOrderCapacity );
    ( "ExDestination" , exchange_opt_to_json x.f_QuoteResponse_ExDestination );
    ( "Text" , string_opt_to_json x.f_QuoteResponse_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_QuoteResponse_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_QuoteResponse_EncodedText );
    ( "Price" , float_4_opt_to_json x.f_QuoteResponse_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_QuoteResponse_PriceType );
    ( "QuotQualGrp" , rg quotqualgrp_to_json x.f_QuoteResponse_QuotQualGrp );
    ( "Parties" , rg parties_to_json x.f_QuoteResponse_Parties );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_QuoteResponse_UndInstrmtGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_QuoteResponse_Stipulations );
    ( "LegQuotGrp" , rg legquotgrp_to_json x.f_QuoteResponse_LegQuotGrp )
    ]
;;

let quotestatusreport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_QuoteStatusReport_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_QuoteStatusReport_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_QuoteStatusReport_OrderQtyData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_QuoteStatusReport_SpreadOrBenchmarkCurveData );
    ( "YieldData" , yielddata_to_json x.f_QuoteStatusReport_YieldData );
    ( "QuoteStatusReqID" , string_opt_to_json x.f_QuoteStatusReport_QuoteStatusReqID );
    ( "QuoteReqID" , string_opt_to_json x.f_QuoteStatusReport_QuoteReqID );
    ( "QuoteID" , string_to_json x.f_QuoteStatusReport_QuoteID );
    ( "QuoteRespID" , string_opt_to_json x.f_QuoteStatusReport_QuoteRespID );
    ( "QuoteType" , quotetype_opt_to_json x.f_QuoteStatusReport_QuoteType );
    ( "TradingSessionID" , string_opt_to_json x.f_QuoteStatusReport_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_QuoteStatusReport_TradingSessionSubID );
    ( "Side" , side_opt_to_json x.f_QuoteStatusReport_Side );
    ( "SettlType" , settltype_opt_to_json x.f_QuoteStatusReport_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_QuoteStatusReport_SettlDate );
    ( "SettlDate2" , localmktdate_opt_to_json x.f_QuoteStatusReport_SettlDate2 );
    ( "OrderQty2" , float_4_opt_to_json x.f_QuoteStatusReport_OrderQty2 );
    ( "Currency" , currency_opt_to_json x.f_QuoteStatusReport_Currency );
    ( "Account" , string_opt_to_json x.f_QuoteStatusReport_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_QuoteStatusReport_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_QuoteStatusReport_AccountType );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_QuoteStatusReport_ExpireTime );
    ( "Price" , float_4_opt_to_json x.f_QuoteStatusReport_Price );
    ( "PriceType" , pricetype_opt_to_json x.f_QuoteStatusReport_PriceType );
    ( "BidPx" , float_4_opt_to_json x.f_QuoteStatusReport_BidPx );
    ( "OfferPx" , float_4_opt_to_json x.f_QuoteStatusReport_OfferPx );
    ( "MktBidPx" , float_4_opt_to_json x.f_QuoteStatusReport_MktBidPx );
    ( "MktOfferPx" , float_4_opt_to_json x.f_QuoteStatusReport_MktOfferPx );
    ( "MinBidSize" , float_4_opt_to_json x.f_QuoteStatusReport_MinBidSize );
    ( "BidSize" , float_4_opt_to_json x.f_QuoteStatusReport_BidSize );
    ( "MinOfferSize" , float_4_opt_to_json x.f_QuoteStatusReport_MinOfferSize );
    ( "OfferSize" , float_4_opt_to_json x.f_QuoteStatusReport_OfferSize );
    ( "ValidUntilTime" , utctimestamp_opt_to_json x.f_QuoteStatusReport_ValidUntilTime );
    ( "BidSpotRate" , float_4_opt_to_json x.f_QuoteStatusReport_BidSpotRate );
    ( "OfferSpotRate" , float_4_opt_to_json x.f_QuoteStatusReport_OfferSpotRate );
    ( "BidForwardPoints" , float_4_opt_to_json x.f_QuoteStatusReport_BidForwardPoints );
    ( "OfferForwardPoints" , float_4_opt_to_json x.f_QuoteStatusReport_OfferForwardPoints );
    ( "MidPx" , float_4_opt_to_json x.f_QuoteStatusReport_MidPx );
    ( "BidYield" , float_4_opt_to_json x.f_QuoteStatusReport_BidYield );
    ( "MidYield" , float_4_opt_to_json x.f_QuoteStatusReport_MidYield );
    ( "OfferYield" , float_4_opt_to_json x.f_QuoteStatusReport_OfferYield );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_QuoteStatusReport_TransactTime );
    ( "OrdType" , ordtype_opt_to_json x.f_QuoteStatusReport_OrdType );
    ( "BidForwardPoints2" , float_4_opt_to_json x.f_QuoteStatusReport_BidForwardPoints2 );
    ( "OfferForwardPoints2" , float_4_opt_to_json x.f_QuoteStatusReport_OfferForwardPoints2 );
    ( "SettlCurrBidFxRate" , float_4_opt_to_json x.f_QuoteStatusReport_SettlCurrBidFxRate );
    ( "SettlCurrOfferFxRate" , float_4_opt_to_json x.f_QuoteStatusReport_SettlCurrOfferFxRate );
    ( "SettlCurrFxRateCalc" , settlcurrfxratecalc_opt_to_json x.f_QuoteStatusReport_SettlCurrFxRateCalc );
    ( "CommType" , commtype_opt_to_json x.f_QuoteStatusReport_CommType );
    ( "Commission" , float_4_opt_to_json x.f_QuoteStatusReport_Commission );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_QuoteStatusReport_CustOrderCapacity );
    ( "ExDestination" , exchange_opt_to_json x.f_QuoteStatusReport_ExDestination );
    ( "QuoteStatus" , quotestatus_opt_to_json x.f_QuoteStatusReport_QuoteStatus );
    ( "Text" , string_opt_to_json x.f_QuoteStatusReport_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_QuoteStatusReport_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_QuoteStatusReport_EncodedText );
    ( "Parties" , rg parties_to_json x.f_QuoteStatusReport_Parties );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_QuoteStatusReport_UndInstrmtGrp );
    ( "Stipulations" , rg stipulations_to_json x.f_QuoteStatusReport_Stipulations );
    ( "LegQuotStatGrp" , rg legquotstatgrp_to_json x.f_QuoteStatusReport_LegQuotStatGrp );
    ( "QuotQualGrp" , rg quotqualgrp_to_json x.f_QuoteStatusReport_QuotQualGrp )
    ]
;;

let quotestatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_QuoteStatusRequest_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_QuoteStatusRequest_FinancingDetails );
    ( "QuoteStatusReqID" , string_opt_to_json x.f_QuoteStatusRequest_QuoteStatusReqID );
    ( "QuoteID" , string_opt_to_json x.f_QuoteStatusRequest_QuoteID );
    ( "Account" , string_opt_to_json x.f_QuoteStatusRequest_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_QuoteStatusRequest_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_QuoteStatusRequest_AccountType );
    ( "TradingSessionID" , string_opt_to_json x.f_QuoteStatusRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_QuoteStatusRequest_TradingSessionSubID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_QuoteStatusRequest_SubscriptionRequestType );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_QuoteStatusRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_QuoteStatusRequest_InstrmtLegGrp );
    ( "Parties" , rg parties_to_json x.f_QuoteStatusRequest_Parties )
    ]
;;

let rfqrequest_to_json x : json =
     assoc_filter_nulls [
    ( "RFQReqID" , string_to_json x.f_RFQRequest_RFQReqID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_RFQRequest_SubscriptionRequestType );
    ( "RFQReqGrp" , rg rfqreqgrp_to_json x.f_RFQRequest_RFQReqGrp )
    ]
;;

let registrationinstructions_to_json x : json =
     assoc_filter_nulls [
    ( "RegistID" , string_to_json x.f_RegistrationInstructions_RegistID );
    ( "RegistTransType" , registtranstype_to_json x.f_RegistrationInstructions_RegistTransType );
    ( "RegistRefID" , string_to_json x.f_RegistrationInstructions_RegistRefID );
    ( "ClOrdID" , string_opt_to_json x.f_RegistrationInstructions_ClOrdID );
    ( "Account" , string_opt_to_json x.f_RegistrationInstructions_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_RegistrationInstructions_AcctIDSource );
    ( "RegistAcctType" , string_opt_to_json x.f_RegistrationInstructions_RegistAcctType );
    ( "TaxAdvantageType" , taxadvantagetype_opt_to_json x.f_RegistrationInstructions_TaxAdvantageType );
    ( "OwnershipType" , ownershiptype_opt_to_json x.f_RegistrationInstructions_OwnershipType );
    ( "Parties" , rg parties_to_json x.f_RegistrationInstructions_Parties );
    ( "RgstDtlsGrp" , rg rgstdtlsgrp_to_json x.f_RegistrationInstructions_RgstDtlsGrp );
    ( "RgstDistInstGrp" , rg rgstdistinstgrp_to_json x.f_RegistrationInstructions_RgstDistInstGrp )
    ]
;;

let registrationinstructionsresponse_to_json x : json =
     assoc_filter_nulls [
    ( "RegistID" , string_to_json x.f_RegistrationInstructionsResponse_RegistID );
    ( "RegistTransType" , registtranstype_to_json x.f_RegistrationInstructionsResponse_RegistTransType );
    ( "RegistRefID" , string_to_json x.f_RegistrationInstructionsResponse_RegistRefID );
    ( "ClOrdID" , string_opt_to_json x.f_RegistrationInstructionsResponse_ClOrdID );
    ( "Account" , string_opt_to_json x.f_RegistrationInstructionsResponse_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_RegistrationInstructionsResponse_AcctIDSource );
    ( "RegistStatus" , registstatus_to_json x.f_RegistrationInstructionsResponse_RegistStatus );
    ( "RegistRejReasonCode" , registrejreasoncode_opt_to_json x.f_RegistrationInstructionsResponse_RegistRejReasonCode );
    ( "RegistRejReasonText" , string_opt_to_json x.f_RegistrationInstructionsResponse_RegistRejReasonText );
    ( "Parties" , rg parties_to_json x.f_RegistrationInstructionsResponse_Parties )
    ]
;;

let requestforpositions_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_RequestForPositions_Instrument );
    ( "PosReqID" , string_to_json x.f_RequestForPositions_PosReqID );
    ( "PosReqType" , posreqtype_to_json x.f_RequestForPositions_PosReqType );
    ( "MatchStatus" , matchstatus_opt_to_json x.f_RequestForPositions_MatchStatus );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_RequestForPositions_SubscriptionRequestType );
    ( "Account" , string_to_json x.f_RequestForPositions_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_RequestForPositions_AcctIDSource );
    ( "AccountType" , accounttype_to_json x.f_RequestForPositions_AccountType );
    ( "Currency" , currency_opt_to_json x.f_RequestForPositions_Currency );
    ( "ClearingBusinessDate" , localmktdate_to_json x.f_RequestForPositions_ClearingBusinessDate );
    ( "SettlSessID" , settlsessid_opt_to_json x.f_RequestForPositions_SettlSessID );
    ( "SettlSessSubID" , string_opt_to_json x.f_RequestForPositions_SettlSessSubID );
    ( "TransactTime" , utctimestamp_to_json x.f_RequestForPositions_TransactTime );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_RequestForPositions_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_RequestForPositions_ResponseDestination );
    ( "Text" , string_opt_to_json x.f_RequestForPositions_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_RequestForPositions_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_RequestForPositions_EncodedText );
    ( "Parties" , rg parties_to_json x.f_RequestForPositions_Parties );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_RequestForPositions_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_RequestForPositions_UndInstrmtGrp );
    ( "TrdgSesGrp" , rg trdgsesgrp_to_json x.f_RequestForPositions_TrdgSesGrp )
    ]
;;

let requestforpositionsack_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_RequestForPositionsAck_Instrument );
    ( "PosMaintRptID" , string_to_json x.f_RequestForPositionsAck_PosMaintRptID );
    ( "PosReqID" , string_opt_to_json x.f_RequestForPositionsAck_PosReqID );
    ( "TotalNumPosReports" , int_opt_to_json x.f_RequestForPositionsAck_TotalNumPosReports );
    ( "UnsolicitedIndicator" , unsolicitedindicator_opt_to_json x.f_RequestForPositionsAck_UnsolicitedIndicator );
    ( "PosReqResult" , posreqresult_to_json x.f_RequestForPositionsAck_PosReqResult );
    ( "PosReqStatus" , posreqstatus_to_json x.f_RequestForPositionsAck_PosReqStatus );
    ( "Account" , string_to_json x.f_RequestForPositionsAck_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_RequestForPositionsAck_AcctIDSource );
    ( "AccountType" , accounttype_to_json x.f_RequestForPositionsAck_AccountType );
    ( "Currency" , currency_opt_to_json x.f_RequestForPositionsAck_Currency );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_RequestForPositionsAck_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_RequestForPositionsAck_ResponseDestination );
    ( "Text" , string_opt_to_json x.f_RequestForPositionsAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_RequestForPositionsAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_RequestForPositionsAck_EncodedText );
    ( "Parties" , rg parties_to_json x.f_RequestForPositionsAck_Parties );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_RequestForPositionsAck_InstrmtLegGrp );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_RequestForPositionsAck_UndInstrmtGrp )
    ]
;;

let securitydefinition_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_SecurityDefinition_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_SecurityDefinition_InstrumentExtension );
    ( "SecurityReqID" , string_to_json x.f_SecurityDefinition_SecurityReqID );
    ( "SecurityResponseID" , string_to_json x.f_SecurityDefinition_SecurityResponseID );
    ( "SecurityResponseType" , securityresponsetype_to_json x.f_SecurityDefinition_SecurityResponseType );
    ( "Currency" , currency_opt_to_json x.f_SecurityDefinition_Currency );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityDefinition_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityDefinition_TradingSessionSubID );
    ( "Text" , string_opt_to_json x.f_SecurityDefinition_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SecurityDefinition_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SecurityDefinition_EncodedText );
    ( "ExpirationCycle" , expirationcycle_opt_to_json x.f_SecurityDefinition_ExpirationCycle );
    ( "RoundLot" , float_4_opt_to_json x.f_SecurityDefinition_RoundLot );
    ( "MinTradeVol" , float_4_opt_to_json x.f_SecurityDefinition_MinTradeVol );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_SecurityDefinition_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_SecurityDefinition_InstrmtLegGrp )
    ]
;;

let securitydefinitionrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_SecurityDefinitionRequest_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_SecurityDefinitionRequest_InstrumentExtension );
    ( "SecurityReqID" , string_to_json x.f_SecurityDefinitionRequest_SecurityReqID );
    ( "SecurityRequestType" , securityrequesttype_to_json x.f_SecurityDefinitionRequest_SecurityRequestType );
    ( "Currency" , currency_opt_to_json x.f_SecurityDefinitionRequest_Currency );
    ( "Text" , string_opt_to_json x.f_SecurityDefinitionRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SecurityDefinitionRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SecurityDefinitionRequest_EncodedText );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityDefinitionRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityDefinitionRequest_TradingSessionSubID );
    ( "ExpirationCycle" , expirationcycle_opt_to_json x.f_SecurityDefinitionRequest_ExpirationCycle );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_SecurityDefinitionRequest_SubscriptionRequestType );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_SecurityDefinitionRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_SecurityDefinitionRequest_InstrmtLegGrp )
    ]
;;

let securitylist_to_json x : json =
     assoc_filter_nulls [
    ( "SecurityReqID" , string_to_json x.f_SecurityList_SecurityReqID );
    ( "SecurityResponseID" , string_to_json x.f_SecurityList_SecurityResponseID );
    ( "SecurityRequestResult" , securityrequestresult_to_json x.f_SecurityList_SecurityRequestResult );
    ( "TotNoRelatedSym" , int_opt_to_json x.f_SecurityList_TotNoRelatedSym );
    ( "LastFragment" , lastfragment_opt_to_json x.f_SecurityList_LastFragment );
    ( "SecListGrp" , rg seclistgrp_to_json x.f_SecurityList_SecListGrp )
    ]
;;

let securitylistrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_SecurityListRequest_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_SecurityListRequest_InstrumentExtension );
    ( "FinancingDetails" , financingdetails_to_json x.f_SecurityListRequest_FinancingDetails );
    ( "SecurityReqID" , string_to_json x.f_SecurityListRequest_SecurityReqID );
    ( "SecurityListRequestType" , securitylistrequesttype_to_json x.f_SecurityListRequest_SecurityListRequestType );
    ( "Currency" , currency_opt_to_json x.f_SecurityListRequest_Currency );
    ( "Text" , string_opt_to_json x.f_SecurityListRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SecurityListRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SecurityListRequest_EncodedText );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityListRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityListRequest_TradingSessionSubID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_SecurityListRequest_SubscriptionRequestType );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_SecurityListRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_SecurityListRequest_InstrmtLegGrp )
    ]
;;

let securitystatus_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_SecurityStatus_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_SecurityStatus_InstrumentExtension );
    ( "SecurityStatusReqID" , string_opt_to_json x.f_SecurityStatus_SecurityStatusReqID );
    ( "Currency" , currency_opt_to_json x.f_SecurityStatus_Currency );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityStatus_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityStatus_TradingSessionSubID );
    ( "UnsolicitedIndicator" , unsolicitedindicator_opt_to_json x.f_SecurityStatus_UnsolicitedIndicator );
    ( "SecurityTradingStatus" , securitytradingstatus_opt_to_json x.f_SecurityStatus_SecurityTradingStatus );
    ( "FinancialStatus" , financialstatus_opt_to_json x.f_SecurityStatus_FinancialStatus );
    ( "CorporateAction" , corporateaction_opt_to_json x.f_SecurityStatus_CorporateAction );
    ( "HaltReason" , haltreason_opt_to_json x.f_SecurityStatus_HaltReason );
    ( "InViewOfCommon" , inviewofcommon_opt_to_json x.f_SecurityStatus_InViewOfCommon );
    ( "DueToRelated" , duetorelated_opt_to_json x.f_SecurityStatus_DueToRelated );
    ( "BuyVolume" , float_4_opt_to_json x.f_SecurityStatus_BuyVolume );
    ( "SellVolume" , float_4_opt_to_json x.f_SecurityStatus_SellVolume );
    ( "HighPx" , float_4_opt_to_json x.f_SecurityStatus_HighPx );
    ( "LowPx" , float_4_opt_to_json x.f_SecurityStatus_LowPx );
    ( "LastPx" , float_4_opt_to_json x.f_SecurityStatus_LastPx );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_SecurityStatus_TransactTime );
    ( "Adjustment" , adjustment_opt_to_json x.f_SecurityStatus_Adjustment );
    ( "Text" , string_opt_to_json x.f_SecurityStatus_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SecurityStatus_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SecurityStatus_EncodedText );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_SecurityStatus_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_SecurityStatus_InstrmtLegGrp )
    ]
;;

let securitystatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_SecurityStatusRequest_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_SecurityStatusRequest_InstrumentExtension );
    ( "SecurityStatusReqID" , string_to_json x.f_SecurityStatusRequest_SecurityStatusReqID );
    ( "Currency" , currency_opt_to_json x.f_SecurityStatusRequest_Currency );
    ( "SubscriptionRequestType" , subscriptionrequesttype_to_json x.f_SecurityStatusRequest_SubscriptionRequestType );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityStatusRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityStatusRequest_TradingSessionSubID );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_SecurityStatusRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_SecurityStatusRequest_InstrmtLegGrp )
    ]
;;

let securitytyperequest_to_json x : json =
     assoc_filter_nulls [
    ( "SecurityReqID" , string_to_json x.f_SecurityTypeRequest_SecurityReqID );
    ( "Text" , string_opt_to_json x.f_SecurityTypeRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SecurityTypeRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SecurityTypeRequest_EncodedText );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityTypeRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityTypeRequest_TradingSessionSubID );
    ( "Product" , product_opt_to_json x.f_SecurityTypeRequest_Product );
    ( "SecurityType" , securitytype_opt_to_json x.f_SecurityTypeRequest_SecurityType );
    ( "SecuritySubType" , string_opt_to_json x.f_SecurityTypeRequest_SecuritySubType )
    ]
;;

let securitytypes_to_json x : json =
     assoc_filter_nulls [
    ( "SecurityReqID" , string_to_json x.f_SecurityTypes_SecurityReqID );
    ( "SecurityResponseID" , string_to_json x.f_SecurityTypes_SecurityResponseID );
    ( "SecurityResponseType" , securityresponsetype_to_json x.f_SecurityTypes_SecurityResponseType );
    ( "TotNoSecurityTypes" , int_opt_to_json x.f_SecurityTypes_TotNoSecurityTypes );
    ( "LastFragment" , lastfragment_opt_to_json x.f_SecurityTypes_LastFragment );
    ( "Text" , string_opt_to_json x.f_SecurityTypes_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SecurityTypes_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SecurityTypes_EncodedText );
    ( "TradingSessionID" , string_opt_to_json x.f_SecurityTypes_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_SecurityTypes_TradingSessionSubID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_SecurityTypes_SubscriptionRequestType );
    ( "SecTypesGrp" , rg sectypesgrp_to_json x.f_SecurityTypes_SecTypesGrp )
    ]
;;

let settlementinstructionrequest_to_json x : json =
     assoc_filter_nulls [
    ( "SettlInstReqID" , string_to_json x.f_SettlementInstructionRequest_SettlInstReqID );
    ( "TransactTime" , utctimestamp_to_json x.f_SettlementInstructionRequest_TransactTime );
    ( "AllocAccount" , string_opt_to_json x.f_SettlementInstructionRequest_AllocAccount );
    ( "AllocAcctIDSource" , int_opt_to_json x.f_SettlementInstructionRequest_AllocAcctIDSource );
    ( "Side" , side_opt_to_json x.f_SettlementInstructionRequest_Side );
    ( "Product" , product_opt_to_json x.f_SettlementInstructionRequest_Product );
    ( "SecurityType" , securitytype_opt_to_json x.f_SettlementInstructionRequest_SecurityType );
    ( "CFICode" , string_opt_to_json x.f_SettlementInstructionRequest_CFICode );
    ( "EffectiveTime" , utctimestamp_opt_to_json x.f_SettlementInstructionRequest_EffectiveTime );
    ( "ExpireTime" , utctimestamp_opt_to_json x.f_SettlementInstructionRequest_ExpireTime );
    ( "LastUpdateTime" , utctimestamp_opt_to_json x.f_SettlementInstructionRequest_LastUpdateTime );
    ( "StandInstDbType" , standinstdbtype_opt_to_json x.f_SettlementInstructionRequest_StandInstDbType );
    ( "StandInstDbName" , string_opt_to_json x.f_SettlementInstructionRequest_StandInstDbName );
    ( "StandInstDbID" , string_opt_to_json x.f_SettlementInstructionRequest_StandInstDbID );
    ( "Parties" , rg parties_to_json x.f_SettlementInstructionRequest_Parties )
    ]
;;

let settlementinstructions_to_json x : json =
     assoc_filter_nulls [
    ( "SettlInstMsgID" , string_to_json x.f_SettlementInstructions_SettlInstMsgID );
    ( "SettlInstReqID" , string_opt_to_json x.f_SettlementInstructions_SettlInstReqID );
    ( "SettlInstMode" , settlinstmode_to_json x.f_SettlementInstructions_SettlInstMode );
    ( "SettlInstReqRejCode" , settlinstreqrejcode_opt_to_json x.f_SettlementInstructions_SettlInstReqRejCode );
    ( "Text" , string_opt_to_json x.f_SettlementInstructions_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_SettlementInstructions_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_SettlementInstructions_EncodedText );
    ( "ClOrdID" , string_opt_to_json x.f_SettlementInstructions_ClOrdID );
    ( "TransactTime" , utctimestamp_to_json x.f_SettlementInstructions_TransactTime );
    ( "SettlInstGrp" , rg settlinstgrp_to_json x.f_SettlementInstructions_SettlInstGrp )
    ]
;;

let tradecapturereport_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_TradeCaptureReport_Instrument );
    ( "FinancingDetails" , financingdetails_to_json x.f_TradeCaptureReport_FinancingDetails );
    ( "OrderQtyData" , orderqtydata_to_json x.f_TradeCaptureReport_OrderQtyData );
    ( "YieldData" , yielddata_to_json x.f_TradeCaptureReport_YieldData );
    ( "SpreadOrBenchmarkCurveData" , spreadorbenchmarkcurvedata_to_json x.f_TradeCaptureReport_SpreadOrBenchmarkCurveData );
    ( "TradeReportID" , string_to_json x.f_TradeCaptureReport_TradeReportID );
    ( "TradeReportTransType" , int_opt_to_json x.f_TradeCaptureReport_TradeReportTransType );
    ( "TradeReportType" , tradereporttype_opt_to_json x.f_TradeCaptureReport_TradeReportType );
    ( "TradeRequestID" , string_opt_to_json x.f_TradeCaptureReport_TradeRequestID );
    ( "TrdType" , trdtype_opt_to_json x.f_TradeCaptureReport_TrdType );
    ( "TrdSubType" , int_opt_to_json x.f_TradeCaptureReport_TrdSubType );
    ( "SecondaryTrdType" , int_opt_to_json x.f_TradeCaptureReport_SecondaryTrdType );
    ( "TransferReason" , string_opt_to_json x.f_TradeCaptureReport_TransferReason );
    ( "ExecType" , exectype_opt_to_json x.f_TradeCaptureReport_ExecType );
    ( "TotNumTradeReports" , int_opt_to_json x.f_TradeCaptureReport_TotNumTradeReports );
    ( "LastRptRequested" , bool_opt_to_json x.f_TradeCaptureReport_LastRptRequested );
    ( "UnsolicitedIndicator" , unsolicitedindicator_opt_to_json x.f_TradeCaptureReport_UnsolicitedIndicator );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_TradeCaptureReport_SubscriptionRequestType );
    ( "TradeReportRefID" , string_opt_to_json x.f_TradeCaptureReport_TradeReportRefID );
    ( "SecondaryTradeReportRefID" , string_opt_to_json x.f_TradeCaptureReport_SecondaryTradeReportRefID );
    ( "SecondaryTradeReportID" , string_opt_to_json x.f_TradeCaptureReport_SecondaryTradeReportID );
    ( "TradeLinkID" , string_opt_to_json x.f_TradeCaptureReport_TradeLinkID );
    ( "TrdMatchID" , string_opt_to_json x.f_TradeCaptureReport_TrdMatchID );
    ( "ExecID" , string_opt_to_json x.f_TradeCaptureReport_ExecID );
    ( "OrdStatus" , ordstatus_opt_to_json x.f_TradeCaptureReport_OrdStatus );
    ( "SecondaryExecID" , string_opt_to_json x.f_TradeCaptureReport_SecondaryExecID );
    ( "ExecRestatementReason" , execrestatementreason_opt_to_json x.f_TradeCaptureReport_ExecRestatementReason );
    ( "PreviouslyReported" , previouslyreported_to_json x.f_TradeCaptureReport_PreviouslyReported );
    ( "PriceType" , pricetype_opt_to_json x.f_TradeCaptureReport_PriceType );
    ( "QtyType" , qtytype_opt_to_json x.f_TradeCaptureReport_QtyType );
    ( "UnderlyingTradingSessionID" , string_opt_to_json x.f_TradeCaptureReport_UnderlyingTradingSessionID );
    ( "UnderlyingTradingSessionSubID" , string_opt_to_json x.f_TradeCaptureReport_UnderlyingTradingSessionSubID );
    ( "LastQty" , float_4_to_json x.f_TradeCaptureReport_LastQty );
    ( "LastPx" , float_4_to_json x.f_TradeCaptureReport_LastPx );
    ( "LastParPx" , float_4_opt_to_json x.f_TradeCaptureReport_LastParPx );
    ( "LastSpotRate" , float_4_opt_to_json x.f_TradeCaptureReport_LastSpotRate );
    ( "LastForwardPoints" , float_4_opt_to_json x.f_TradeCaptureReport_LastForwardPoints );
    ( "LastMkt" , exchange_opt_to_json x.f_TradeCaptureReport_LastMkt );
    ( "TradeDate" , localmktdate_to_json x.f_TradeCaptureReport_TradeDate );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_TradeCaptureReport_ClearingBusinessDate );
    ( "AvgPx" , float_4_opt_to_json x.f_TradeCaptureReport_AvgPx );
    ( "AvgPxIndicator" , avgpxindicator_opt_to_json x.f_TradeCaptureReport_AvgPxIndicator );
    ( "MultiLegReportingType" , multilegreportingtype_opt_to_json x.f_TradeCaptureReport_MultiLegReportingType );
    ( "TradeLegRefID" , string_opt_to_json x.f_TradeCaptureReport_TradeLegRefID );
    ( "TransactTime" , utctimestamp_to_json x.f_TradeCaptureReport_TransactTime );
    ( "SettlType" , settltype_opt_to_json x.f_TradeCaptureReport_SettlType );
    ( "SettlDate" , localmktdate_opt_to_json x.f_TradeCaptureReport_SettlDate );
    ( "MatchStatus" , matchstatus_opt_to_json x.f_TradeCaptureReport_MatchStatus );
    ( "MatchType" , matchtype_opt_to_json x.f_TradeCaptureReport_MatchType );
    ( "CopyMsgIndicator" , bool_opt_to_json x.f_TradeCaptureReport_CopyMsgIndicator );
    ( "PublishTrdIndicator" , publishtrdindicator_opt_to_json x.f_TradeCaptureReport_PublishTrdIndicator );
    ( "ShortSaleReason" , shortsalereason_opt_to_json x.f_TradeCaptureReport_ShortSaleReason );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_TradeCaptureReport_UndInstrmtGrp );
    ( "PositionAmountData" , rg positionamountdata_to_json x.f_TradeCaptureReport_PositionAmountData );
    ( "TrdInstrmtLegGrp" , rg trdinstrmtleggrp_to_json x.f_TradeCaptureReport_TrdInstrmtLegGrp );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_TradeCaptureReport_TrdRegTimestamps );
    ( "TrdCapRptSideGrp" , rg trdcaprptsidegrp_to_json x.f_TradeCaptureReport_TrdCapRptSideGrp )
    ]
;;

let tradecapturereportack_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_TradeCaptureReportAck_Instrument );
    ( "TradeReportID" , string_to_json x.f_TradeCaptureReportAck_TradeReportID );
    ( "TradeReportTransType" , int_opt_to_json x.f_TradeCaptureReportAck_TradeReportTransType );
    ( "TradeReportType" , tradereporttype_opt_to_json x.f_TradeCaptureReportAck_TradeReportType );
    ( "TrdType" , trdtype_opt_to_json x.f_TradeCaptureReportAck_TrdType );
    ( "TrdSubType" , int_opt_to_json x.f_TradeCaptureReportAck_TrdSubType );
    ( "SecondaryTrdType" , int_opt_to_json x.f_TradeCaptureReportAck_SecondaryTrdType );
    ( "TransferReason" , string_opt_to_json x.f_TradeCaptureReportAck_TransferReason );
    ( "ExecType" , exectype_to_json x.f_TradeCaptureReportAck_ExecType );
    ( "TradeReportRefID" , string_opt_to_json x.f_TradeCaptureReportAck_TradeReportRefID );
    ( "SecondaryTradeReportRefID" , string_opt_to_json x.f_TradeCaptureReportAck_SecondaryTradeReportRefID );
    ( "TrdRptStatus" , trdrptstatus_opt_to_json x.f_TradeCaptureReportAck_TrdRptStatus );
    ( "TradeReportRejectReason" , tradereportrejectreason_opt_to_json x.f_TradeCaptureReportAck_TradeReportRejectReason );
    ( "SecondaryTradeReportID" , string_opt_to_json x.f_TradeCaptureReportAck_SecondaryTradeReportID );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_TradeCaptureReportAck_SubscriptionRequestType );
    ( "TradeLinkID" , string_opt_to_json x.f_TradeCaptureReportAck_TradeLinkID );
    ( "TrdMatchID" , string_opt_to_json x.f_TradeCaptureReportAck_TrdMatchID );
    ( "ExecID" , string_opt_to_json x.f_TradeCaptureReportAck_ExecID );
    ( "SecondaryExecID" , string_opt_to_json x.f_TradeCaptureReportAck_SecondaryExecID );
    ( "TransactTime" , utctimestamp_opt_to_json x.f_TradeCaptureReportAck_TransactTime );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_TradeCaptureReportAck_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_TradeCaptureReportAck_ResponseDestination );
    ( "Text" , string_opt_to_json x.f_TradeCaptureReportAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_TradeCaptureReportAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_TradeCaptureReportAck_EncodedText );
    ( "ClearingFeeIndicator" , clearingfeeindicator_opt_to_json x.f_TradeCaptureReportAck_ClearingFeeIndicator );
    ( "OrderCapacity" , ordercapacity_opt_to_json x.f_TradeCaptureReportAck_OrderCapacity );
    ( "OrderRestrictions" , orderrestrictions_opt_to_json x.f_TradeCaptureReportAck_OrderRestrictions );
    ( "CustOrderCapacity" , custordercapacity_opt_to_json x.f_TradeCaptureReportAck_CustOrderCapacity );
    ( "Account" , string_opt_to_json x.f_TradeCaptureReportAck_Account );
    ( "AcctIDSource" , acctidsource_opt_to_json x.f_TradeCaptureReportAck_AcctIDSource );
    ( "AccountType" , accounttype_opt_to_json x.f_TradeCaptureReportAck_AccountType );
    ( "PositionEffect" , positioneffect_opt_to_json x.f_TradeCaptureReportAck_PositionEffect );
    ( "PreallocMethod" , preallocmethod_opt_to_json x.f_TradeCaptureReportAck_PreallocMethod );
    ( "TrdRegTimestamps" , rg trdregtimestamps_to_json x.f_TradeCaptureReportAck_TrdRegTimestamps );
    ( "TrdInstrmtLegGrp" , rg trdinstrmtleggrp_to_json x.f_TradeCaptureReportAck_TrdInstrmtLegGrp );
    ( "TrdAllocGrp" , rg trdallocgrp_to_json x.f_TradeCaptureReportAck_TrdAllocGrp )
    ]
;;

let tradecapturereportrequest_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_TradeCaptureReportRequest_Instrument );
    ( "InstrumentExtension" , instrumentextension_to_json x.f_TradeCaptureReportRequest_InstrumentExtension );
    ( "FinancingDetails" , financingdetails_to_json x.f_TradeCaptureReportRequest_FinancingDetails );
    ( "TradeRequestID" , string_to_json x.f_TradeCaptureReportRequest_TradeRequestID );
    ( "TradeRequestType" , traderequesttype_to_json x.f_TradeCaptureReportRequest_TradeRequestType );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_TradeCaptureReportRequest_SubscriptionRequestType );
    ( "TradeReportID" , string_opt_to_json x.f_TradeCaptureReportRequest_TradeReportID );
    ( "SecondaryTradeReportID" , string_opt_to_json x.f_TradeCaptureReportRequest_SecondaryTradeReportID );
    ( "ExecID" , string_opt_to_json x.f_TradeCaptureReportRequest_ExecID );
    ( "ExecType" , exectype_opt_to_json x.f_TradeCaptureReportRequest_ExecType );
    ( "OrderID" , string_opt_to_json x.f_TradeCaptureReportRequest_OrderID );
    ( "ClOrdID" , string_opt_to_json x.f_TradeCaptureReportRequest_ClOrdID );
    ( "MatchStatus" , matchstatus_opt_to_json x.f_TradeCaptureReportRequest_MatchStatus );
    ( "TrdType" , trdtype_opt_to_json x.f_TradeCaptureReportRequest_TrdType );
    ( "TrdSubType" , int_opt_to_json x.f_TradeCaptureReportRequest_TrdSubType );
    ( "TransferReason" , string_opt_to_json x.f_TradeCaptureReportRequest_TransferReason );
    ( "SecondaryTrdType" , int_opt_to_json x.f_TradeCaptureReportRequest_SecondaryTrdType );
    ( "TradeLinkID" , string_opt_to_json x.f_TradeCaptureReportRequest_TradeLinkID );
    ( "TrdMatchID" , string_opt_to_json x.f_TradeCaptureReportRequest_TrdMatchID );
    ( "ClearingBusinessDate" , localmktdate_opt_to_json x.f_TradeCaptureReportRequest_ClearingBusinessDate );
    ( "TradingSessionID" , string_opt_to_json x.f_TradeCaptureReportRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_TradeCaptureReportRequest_TradingSessionSubID );
    ( "TimeBracket" , string_opt_to_json x.f_TradeCaptureReportRequest_TimeBracket );
    ( "Side" , side_opt_to_json x.f_TradeCaptureReportRequest_Side );
    ( "MultiLegReportingType" , multilegreportingtype_opt_to_json x.f_TradeCaptureReportRequest_MultiLegReportingType );
    ( "TradeInputSource" , string_opt_to_json x.f_TradeCaptureReportRequest_TradeInputSource );
    ( "TradeInputDevice" , string_opt_to_json x.f_TradeCaptureReportRequest_TradeInputDevice );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_TradeCaptureReportRequest_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_TradeCaptureReportRequest_ResponseDestination );
    ( "Text" , string_opt_to_json x.f_TradeCaptureReportRequest_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_TradeCaptureReportRequest_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_TradeCaptureReportRequest_EncodedText );
    ( "Parties" , rg parties_to_json x.f_TradeCaptureReportRequest_Parties );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_TradeCaptureReportRequest_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_TradeCaptureReportRequest_InstrmtLegGrp );
    ( "TrdCapDtGrp" , rg trdcapdtgrp_to_json x.f_TradeCaptureReportRequest_TrdCapDtGrp )
    ]
;;

let tradecapturereportrequestack_to_json x : json =
     assoc_filter_nulls [
    ( "Instrument" , instrument_to_json x.f_TradeCaptureReportRequestAck_Instrument );
    ( "TradeRequestID" , string_to_json x.f_TradeCaptureReportRequestAck_TradeRequestID );
    ( "TradeRequestType" , traderequesttype_to_json x.f_TradeCaptureReportRequestAck_TradeRequestType );
    ( "SubscriptionRequestType" , subscriptionrequesttype_opt_to_json x.f_TradeCaptureReportRequestAck_SubscriptionRequestType );
    ( "TotNumTradeReports" , int_opt_to_json x.f_TradeCaptureReportRequestAck_TotNumTradeReports );
    ( "TradeRequestResult" , traderequestresult_to_json x.f_TradeCaptureReportRequestAck_TradeRequestResult );
    ( "TradeRequestStatus" , traderequeststatus_to_json x.f_TradeCaptureReportRequestAck_TradeRequestStatus );
    ( "MultiLegReportingType" , multilegreportingtype_opt_to_json x.f_TradeCaptureReportRequestAck_MultiLegReportingType );
    ( "ResponseTransportType" , responsetransporttype_opt_to_json x.f_TradeCaptureReportRequestAck_ResponseTransportType );
    ( "ResponseDestination" , string_opt_to_json x.f_TradeCaptureReportRequestAck_ResponseDestination );
    ( "Text" , string_opt_to_json x.f_TradeCaptureReportRequestAck_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_TradeCaptureReportRequestAck_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_TradeCaptureReportRequestAck_EncodedText );
    ( "UndInstrmtGrp" , rg undinstrmtgrp_to_json x.f_TradeCaptureReportRequestAck_UndInstrmtGrp );
    ( "InstrmtLegGrp" , rg instrmtleggrp_to_json x.f_TradeCaptureReportRequestAck_InstrmtLegGrp )
    ]
;;

let tradingsessionstatus_to_json x : json =
     assoc_filter_nulls [
    ( "TradSesReqID" , string_opt_to_json x.f_TradingSessionStatus_TradSesReqID );
    ( "TradingSessionID" , string_to_json x.f_TradingSessionStatus_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_TradingSessionStatus_TradingSessionSubID );
    ( "TradSesMethod" , tradsesmethod_opt_to_json x.f_TradingSessionStatus_TradSesMethod );
    ( "TradSesMode" , tradsesmode_opt_to_json x.f_TradingSessionStatus_TradSesMode );
    ( "UnsolicitedIndicator" , unsolicitedindicator_opt_to_json x.f_TradingSessionStatus_UnsolicitedIndicator );
    ( "TradSesStatus" , tradsesstatus_to_json x.f_TradingSessionStatus_TradSesStatus );
    ( "TradSesStatusRejReason" , tradsesstatusrejreason_opt_to_json x.f_TradingSessionStatus_TradSesStatusRejReason );
    ( "TradSesStartTime" , utctimestamp_opt_to_json x.f_TradingSessionStatus_TradSesStartTime );
    ( "TradSesOpenTime" , utctimestamp_opt_to_json x.f_TradingSessionStatus_TradSesOpenTime );
    ( "TradSesPreCloseTime" , utctimestamp_opt_to_json x.f_TradingSessionStatus_TradSesPreCloseTime );
    ( "TradSesCloseTime" , utctimestamp_opt_to_json x.f_TradingSessionStatus_TradSesCloseTime );
    ( "TradSesEndTime" , utctimestamp_opt_to_json x.f_TradingSessionStatus_TradSesEndTime );
    ( "TotalVolumeTraded" , float_4_opt_to_json x.f_TradingSessionStatus_TotalVolumeTraded );
    ( "Text" , string_opt_to_json x.f_TradingSessionStatus_Text );
    ( "EncodedTextLen" , int_opt_to_json x.f_TradingSessionStatus_EncodedTextLen );
    ( "EncodedText" , string_opt_to_json x.f_TradingSessionStatus_EncodedText )
    ]
;;

let tradingsessionstatusrequest_to_json x : json =
     assoc_filter_nulls [
    ( "TradSesReqID" , string_to_json x.f_TradingSessionStatusRequest_TradSesReqID );
    ( "TradingSessionID" , string_opt_to_json x.f_TradingSessionStatusRequest_TradingSessionID );
    ( "TradingSessionSubID" , string_opt_to_json x.f_TradingSessionStatusRequest_TradingSessionSubID );
    ( "TradSesMethod" , tradsesmethod_opt_to_json x.f_TradingSessionStatusRequest_TradSesMethod );
    ( "TradSesMode" , tradsesmode_opt_to_json x.f_TradingSessionStatusRequest_TradSesMode );
    ( "SubscriptionRequestType" , subscriptionrequesttype_to_json x.f_TradingSessionStatusRequest_SubscriptionRequestType )
    ]
;;

let userrequest_to_json x : json =
     assoc_filter_nulls [
    ( "UserRequestID" , string_to_json x.f_UserRequest_UserRequestID );
    ( "UserRequestType" , userrequesttype_to_json x.f_UserRequest_UserRequestType );
    ( "Username" , string_to_json x.f_UserRequest_Username );
    ( "Password" , string_opt_to_json x.f_UserRequest_Password );
    ( "NewPassword" , string_opt_to_json x.f_UserRequest_NewPassword );
    ( "RawDataLength" , int_opt_to_json x.f_UserRequest_RawDataLength );
    ( "RawData" , string_opt_to_json x.f_UserRequest_RawData )
    ]
;;

let userresponse_to_json x : json =
     assoc_filter_nulls [
    ( "UserRequestID" , string_to_json x.f_UserResponse_UserRequestID );
    ( "Username" , string_to_json x.f_UserResponse_Username );
    ( "UserStatus" , userstatus_opt_to_json x.f_UserResponse_UserStatus );
    ( "UserStatusText" , string_opt_to_json x.f_UserResponse_UserStatusText )
    ]
;;

let full_app_msg_to_json x : json = match x with
    | FIX_Full_Msg_Advertisement x -> `Assoc [( "Advertisement", advertisement_to_json x)]
    | FIX_Full_Msg_AllocationInstruction x -> `Assoc [( "AllocationInstruction", allocationinstruction_to_json x)]
    | FIX_Full_Msg_AllocationInstructionAck x -> `Assoc [( "AllocationInstructionAck", allocationinstructionack_to_json x)]
    | FIX_Full_Msg_AllocationReport x -> `Assoc [( "AllocationReport", allocationreport_to_json x)]
    | FIX_Full_Msg_AllocationReportAck x -> `Assoc [( "AllocationReportAck", allocationreportack_to_json x)]
    | FIX_Full_Msg_AssignmentReport x -> `Assoc [( "AssignmentReport", assignmentreport_to_json x)]
    | FIX_Full_Msg_BidRequest x -> `Assoc [( "BidRequest", bidrequest_to_json x)]
    | FIX_Full_Msg_BidResponse x -> `Assoc [( "BidResponse", bidresponse_to_json x)]
    | FIX_Full_Msg_CollateralAssignment x -> `Assoc [( "CollateralAssignment", collateralassignment_to_json x)]
    | FIX_Full_Msg_CollateralInquiry x -> `Assoc [( "CollateralInquiry", collateralinquiry_to_json x)]
    | FIX_Full_Msg_CollateralInquiryAck x -> `Assoc [( "CollateralInquiryAck", collateralinquiryack_to_json x)]
    | FIX_Full_Msg_CollateralReport x -> `Assoc [( "CollateralReport", collateralreport_to_json x)]
    | FIX_Full_Msg_CollateralRequest x -> `Assoc [( "CollateralRequest", collateralrequest_to_json x)]
    | FIX_Full_Msg_CollateralResponse x -> `Assoc [( "CollateralResponse", collateralresponse_to_json x)]
    | FIX_Full_Msg_Confirmation x -> `Assoc [( "Confirmation", confirmation_to_json x)]
    | FIX_Full_Msg_ConfirmationAck x -> `Assoc [( "ConfirmationAck", confirmationack_to_json x)]
    | FIX_Full_Msg_ConfirmationRequest x -> `Assoc [( "ConfirmationRequest", confirmationrequest_to_json x)]
    | FIX_Full_Msg_CrossOrderCancelReplaceRequest x -> `Assoc [( "CrossOrderCancelReplaceRequest", crossordercancelreplacerequest_to_json x)]
    | FIX_Full_Msg_CrossOrderCancelRequest x -> `Assoc [( "CrossOrderCancelRequest", crossordercancelrequest_to_json x)]
    | FIX_Full_Msg_DerivativeSecurityList x -> `Assoc [( "DerivativeSecurityList", derivativesecuritylist_to_json x)]
    | FIX_Full_Msg_DerivativeSecurityListRequest x -> `Assoc [( "DerivativeSecurityListRequest", derivativesecuritylistrequest_to_json x)]
    | FIX_Full_Msg_DontKnowTrade x -> `Assoc [( "DontKnowTrade", dontknowtrade_to_json x)]
    | FIX_Full_Msg_Email x -> `Assoc [( "Email", email_to_json x)]
    | FIX_Full_Msg_ExecutionReport x -> `Assoc [( "ExecutionReport", executionreport_to_json x)]
    | FIX_Full_Msg_IOI x -> `Assoc [( "IOI", ioi_to_json x)]
    | FIX_Full_Msg_ListCancelRequest x -> `Assoc [( "ListCancelRequest", listcancelrequest_to_json x)]
    | FIX_Full_Msg_ListExecute x -> `Assoc [( "ListExecute", listexecute_to_json x)]
    | FIX_Full_Msg_ListStatus x -> `Assoc [( "ListStatus", liststatus_to_json x)]
    | FIX_Full_Msg_ListStatusRequest x -> `Assoc [( "ListStatusRequest", liststatusrequest_to_json x)]
    | FIX_Full_Msg_ListStrikePrice x -> `Assoc [( "ListStrikePrice", liststrikeprice_to_json x)]
    | FIX_Full_Msg_MarketDataIncrementalRefresh x -> `Assoc [( "MarketDataIncrementalRefresh", marketdataincrementalrefresh_to_json x)]
    | FIX_Full_Msg_MarketDataRequest x -> `Assoc [( "MarketDataRequest", marketdatarequest_to_json x)]
    | FIX_Full_Msg_MarketDataRequestReject x -> `Assoc [( "MarketDataRequestReject", marketdatarequestreject_to_json x)]
    | FIX_Full_Msg_MarketDataSnapshotFullRefresh x -> `Assoc [( "MarketDataSnapshotFullRefresh", marketdatasnapshotfullrefresh_to_json x)]
    | FIX_Full_Msg_MassQuote x -> `Assoc [( "MassQuote", massquote_to_json x)]
    | FIX_Full_Msg_MassQuoteAcknowledgement x -> `Assoc [( "MassQuoteAcknowledgement", massquoteacknowledgement_to_json x)]
    | FIX_Full_Msg_MultilegOrderCancelReplace x -> `Assoc [( "MultilegOrderCancelReplace", multilegordercancelreplace_to_json x)]
    | FIX_Full_Msg_NetworkCounterpartySystemStatusRequest x -> `Assoc [( "NetworkCounterpartySystemStatusRequest", networkcounterpartysystemstatusrequest_to_json x)]
    | FIX_Full_Msg_NetworkCounterpartySystemStatusResponse x -> `Assoc [( "NetworkCounterpartySystemStatusResponse", networkcounterpartysystemstatusresponse_to_json x)]
    | FIX_Full_Msg_NewOrderCross x -> `Assoc [( "NewOrderCross", newordercross_to_json x)]
    | FIX_Full_Msg_NewOrderList x -> `Assoc [( "NewOrderList", neworderlist_to_json x)]
    | FIX_Full_Msg_NewOrderMultileg x -> `Assoc [( "NewOrderMultileg", newordermultileg_to_json x)]
    | FIX_Full_Msg_NewOrderSingle x -> `Assoc [( "NewOrderSingle", newordersingle_to_json x)]
    | FIX_Full_Msg_News x -> `Assoc [( "News", news_to_json x)]
    | FIX_Full_Msg_OrderCancelReject x -> `Assoc [( "OrderCancelReject", ordercancelreject_to_json x)]
    | FIX_Full_Msg_OrderCancelReplaceRequest x -> `Assoc [( "OrderCancelReplaceRequest", ordercancelreplacerequest_to_json x)]
    | FIX_Full_Msg_OrderCancelRequest x -> `Assoc [( "OrderCancelRequest", ordercancelrequest_to_json x)]
    | FIX_Full_Msg_OrderMassCancelReport x -> `Assoc [( "OrderMassCancelReport", ordermasscancelreport_to_json x)]
    | FIX_Full_Msg_OrderMassCancelRequest x -> `Assoc [( "OrderMassCancelRequest", ordermasscancelrequest_to_json x)]
    | FIX_Full_Msg_OrderMassStatusRequest x -> `Assoc [( "OrderMassStatusRequest", ordermassstatusrequest_to_json x)]
    | FIX_Full_Msg_OrderStatusRequest x -> `Assoc [( "OrderStatusRequest", orderstatusrequest_to_json x)]
    | FIX_Full_Msg_PositionMaintenanceReport x -> `Assoc [( "PositionMaintenanceReport", positionmaintenancereport_to_json x)]
    | FIX_Full_Msg_PositionMaintenanceRequest x -> `Assoc [( "PositionMaintenanceRequest", positionmaintenancerequest_to_json x)]
    | FIX_Full_Msg_PositionReport x -> `Assoc [( "PositionReport", positionreport_to_json x)]
    | FIX_Full_Msg_Quote x -> `Assoc [( "Quote", quote_to_json x)]
    | FIX_Full_Msg_QuoteCancel x -> `Assoc [( "QuoteCancel", quotecancel_to_json x)]
    | FIX_Full_Msg_QuoteRequest x -> `Assoc [( "QuoteRequest", quoterequest_to_json x)]
    | FIX_Full_Msg_QuoteRequestReject x -> `Assoc [( "QuoteRequestReject", quoterequestreject_to_json x)]
    | FIX_Full_Msg_QuoteResponse x -> `Assoc [( "QuoteResponse", quoteresponse_to_json x)]
    | FIX_Full_Msg_QuoteStatusReport x -> `Assoc [( "QuoteStatusReport", quotestatusreport_to_json x)]
    | FIX_Full_Msg_QuoteStatusRequest x -> `Assoc [( "QuoteStatusRequest", quotestatusrequest_to_json x)]
    | FIX_Full_Msg_RFQRequest x -> `Assoc [( "RFQRequest", rfqrequest_to_json x)]
    | FIX_Full_Msg_RegistrationInstructions x -> `Assoc [( "RegistrationInstructions", registrationinstructions_to_json x)]
    | FIX_Full_Msg_RegistrationInstructionsResponse x -> `Assoc [( "RegistrationInstructionsResponse", registrationinstructionsresponse_to_json x)]
    | FIX_Full_Msg_RequestForPositions x -> `Assoc [( "RequestForPositions", requestforpositions_to_json x)]
    | FIX_Full_Msg_RequestForPositionsAck x -> `Assoc [( "RequestForPositionsAck", requestforpositionsack_to_json x)]
    | FIX_Full_Msg_SecurityDefinition x -> `Assoc [( "SecurityDefinition", securitydefinition_to_json x)]
    | FIX_Full_Msg_SecurityDefinitionRequest x -> `Assoc [( "SecurityDefinitionRequest", securitydefinitionrequest_to_json x)]
    | FIX_Full_Msg_SecurityList x -> `Assoc [( "SecurityList", securitylist_to_json x)]
    | FIX_Full_Msg_SecurityListRequest x -> `Assoc [( "SecurityListRequest", securitylistrequest_to_json x)]
    | FIX_Full_Msg_SecurityStatus x -> `Assoc [( "SecurityStatus", securitystatus_to_json x)]
    | FIX_Full_Msg_SecurityStatusRequest x -> `Assoc [( "SecurityStatusRequest", securitystatusrequest_to_json x)]
    | FIX_Full_Msg_SecurityTypeRequest x -> `Assoc [( "SecurityTypeRequest", securitytyperequest_to_json x)]
    | FIX_Full_Msg_SecurityTypes x -> `Assoc [( "SecurityTypes", securitytypes_to_json x)]
    | FIX_Full_Msg_SettlementInstructionRequest x -> `Assoc [( "SettlementInstructionRequest", settlementinstructionrequest_to_json x)]
    | FIX_Full_Msg_SettlementInstructions x -> `Assoc [( "SettlementInstructions", settlementinstructions_to_json x)]
    | FIX_Full_Msg_TradeCaptureReport x -> `Assoc [( "TradeCaptureReport", tradecapturereport_to_json x)]
    | FIX_Full_Msg_TradeCaptureReportAck x -> `Assoc [( "TradeCaptureReportAck", tradecapturereportack_to_json x)]
    | FIX_Full_Msg_TradeCaptureReportRequest x -> `Assoc [( "TradeCaptureReportRequest", tradecapturereportrequest_to_json x)]
    | FIX_Full_Msg_TradeCaptureReportRequestAck x -> `Assoc [( "TradeCaptureReportRequestAck", tradecapturereportrequestack_to_json x)]
    | FIX_Full_Msg_TradingSessionStatus x -> `Assoc [( "TradingSessionStatus", tradingsessionstatus_to_json x)]
    | FIX_Full_Msg_TradingSessionStatusRequest x -> `Assoc [( "TradingSessionStatusRequest", tradingsessionstatusrequest_to_json x)]
    | FIX_Full_Msg_UserRequest x -> `Assoc [( "UserRequest", userrequest_to_json x)]
    | FIX_Full_Msg_UserResponse x -> `Assoc [( "UserResponse", userresponse_to_json x)]
;;
