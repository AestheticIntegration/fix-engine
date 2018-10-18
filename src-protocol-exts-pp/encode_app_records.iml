(* Aesthetic Integration copyright 2018 *)
open Encode_app_enums;;
open Encode_base_types;;
open Encode_datetime;;
open Encode_utils;;
open Full_app_records;;
open TimeDefaults_pp;;

let encode_TrdCollGrp (msg)  =
    (@) (("818",enc_opt encode_string msg.f_TrdCollGrp_SecondaryTradeReportID) :: (("571",enc_opt encode_string msg.f_TrdCollGrp_TradeReportID) :: [])) []
;;

let encode_NstdPtys3SubGrp (msg)  =
    (@) (("953",enc_opt encode_string msg.f_NstdPtys3SubGrp_Nested3PartySubID) :: (("954",enc_opt encode_int msg.f_NstdPtys3SubGrp_Nested3PartySubIDType) :: [])) []
;;

let encode_CpctyConfGrp (msg)  =
    (@) (("528",enc_opt encode_OrderCapacity msg.f_CpctyConfGrp_OrderCapacity) :: (("863",enc_opt encode_float_6 msg.f_CpctyConfGrp_OrderCapacityQty) :: (("529",enc_opt encode_OrderRestrictions msg.f_CpctyConfGrp_OrderRestrictions) :: []))) []
;;

let encode_CompIDStatGrp (msg)  =
    (@) (("929",enc_opt encode_string msg.f_CompIDStatGrp_StatusText) :: (("283",enc_opt encode_string msg.f_CompIDStatGrp_LocationID) :: (("931",enc_opt encode_string msg.f_CompIDStatGrp_RefSubID) :: (("930",enc_opt encode_string msg.f_CompIDStatGrp_RefCompID) :: (("284",enc_opt encode_string msg.f_CompIDStatGrp_DeskID) :: (("928",enc_opt encode_StatusValue msg.f_CompIDStatGrp_StatusValue) :: [])))))) []
;;

let encode_CommissionData (msg)  =
    (@) (("497",enc_opt encode_FundRenewWaiv msg.f_CommissionData_FundRenewWaiv) :: (("12",enc_opt encode_float_6 msg.f_CommissionData_Commission) :: (("479",enc_opt encode_Currency msg.f_CommissionData_CommCurrency) :: (("13",enc_opt encode_CommType msg.f_CommissionData_CommType) :: [])))) []
;;

let encode_MiscFeesGrp (msg)  =
    (@) (("891",enc_opt encode_MiscFeeBasis msg.f_MiscFeesGrp_MiscFeeBasis) :: (("138",enc_opt encode_Currency msg.f_MiscFeesGrp_MiscFeeCurr) :: (("139",enc_opt encode_MiscFeeType msg.f_MiscFeesGrp_MiscFeeType) :: (("137",enc_opt encode_float_6 msg.f_MiscFeesGrp_MiscFeeAmt) :: [])))) []
;;

let encode_ExecAllocGrp (msg)  =
    (@) (("31",enc_opt encode_float_6 msg.f_ExecAllocGrp_LastPx) :: (("17",enc_opt encode_string msg.f_ExecAllocGrp_ExecID) :: (("669",enc_opt encode_float_6 msg.f_ExecAllocGrp_LastParPx) :: (("32",enc_opt encode_float_6 msg.f_ExecAllocGrp_LastQty) :: (("527",enc_opt encode_string msg.f_ExecAllocGrp_SecondaryExecID) :: (("29",enc_opt encode_LastCapacity msg.f_ExecAllocGrp_LastCapacity) :: [])))))) []
;;

let encode_FinancingDetails (msg)  =
    (@) (("788",enc_opt encode_TerminationType msg.f_FinancingDetails_TerminationType) :: (("914",enc_opt encode_string msg.f_FinancingDetails_AgreementID) :: (("918",enc_opt encode_Currency msg.f_FinancingDetails_AgreementCurrency) :: (("913",enc_opt encode_string msg.f_FinancingDetails_AgreementDesc) :: (("898",enc_opt encode_float_6 msg.f_FinancingDetails_MarginRatio) :: (("915",enc_opt encode_LocalMktDate msg.f_FinancingDetails_AgreementDate) :: (("917",enc_opt encode_LocalMktDate msg.f_FinancingDetails_EndDate) :: (("919",enc_opt encode_DeliveryType msg.f_FinancingDetails_DeliveryType) :: (("916",enc_opt encode_LocalMktDate msg.f_FinancingDetails_StartDate) :: []))))))))) []
;;

let encode_PositionAmountData (msg)  =
    (@) (("708",enc_opt encode_float_6 msg.f_PositionAmountData_PosAmt) :: (("707",enc_opt encode_PosAmtType msg.f_PositionAmountData_PosAmtType) :: [])) []
;;

let encode_TrdRegTimestamps (msg)  =
    (@) (("771",enc_opt encode_string msg.f_TrdRegTimestamps_TrdRegTimestampOrigin) :: (("770",enc_opt encode_TrdRegTimestampType msg.f_TrdRegTimestamps_TrdRegTimestampType) :: (("769",enc_opt encode_UTCTimestamp msg.f_TrdRegTimestamps_TrdRegTimestamp) :: []))) []
;;

let encode_UndSecAltIDGrp (msg)  =
    (@) (("458",enc_opt encode_string msg.f_UndSecAltIDGrp_UnderlyingSecurityAltID) :: (("459",enc_opt encode_string msg.f_UndSecAltIDGrp_UnderlyingSecurityAltIDSource) :: [])) []
;;

let encode_IOIQualGrp (msg)  =
    (@) (("104",enc_opt encode_IOIQualifier msg.f_IOIQualGrp_IOIQualifier) :: []) []
;;

let encode_ContAmtGrp (msg)  =
    (@) (("520",enc_opt encode_float msg.f_ContAmtGrp_ContAmtValue) :: (("521",enc_opt encode_Currency msg.f_ContAmtGrp_ContAmtCurr) :: (("519",enc_opt encode_ContAmtType msg.f_ContAmtGrp_ContAmtType) :: []))) []
;;

let encode_LegBenchmarkCurveData (msg)  =
    (@) (("680",enc_opt encode_int msg.f_LegBenchmarkCurveData_LegBenchmarkPriceType) :: (("676",enc_opt encode_Currency msg.f_LegBenchmarkCurveData_LegBenchmarkCurveCurrency) :: (("678",enc_opt encode_string msg.f_LegBenchmarkCurveData_LegBenchmarkCurvePoint) :: (("677",enc_opt encode_string msg.f_LegBenchmarkCurveData_LegBenchmarkCurveName) :: (("679",enc_opt encode_float_6 msg.f_LegBenchmarkCurveData_LegBenchmarkPrice) :: []))))) []
;;

let encode_LegSecAltIDGrp (msg)  =
    (@) (("605",enc_opt encode_string msg.f_LegSecAltIDGrp_LegSecurityAltID) :: (("606",enc_opt encode_string msg.f_LegSecAltIDGrp_LegSecurityAltIDSource) :: [])) []
;;

let encode_PtysSubGrp (msg)  =
    (@) (("803",enc_opt encode_PartySubIDType msg.f_PtysSubGrp_PartySubIDType) :: (("523",enc_opt encode_string msg.f_PtysSubGrp_PartySubID) :: [])) []
;;

let encode_SecAltIDGrp (msg)  =
    (@) (("456",enc_opt encode_string msg.f_SecAltIDGrp_SecurityAltIDSource) :: (("455",enc_opt encode_string msg.f_SecAltIDGrp_SecurityAltID) :: [])) []
;;

let encode_SpreadOrBenchmarkCurveData (msg)  =
    (@) (("662",enc_opt encode_float_6 msg.f_SpreadOrBenchmarkCurveData_BenchmarkPrice) :: (("221",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkCurveName) :: (("218",enc_opt encode_float_6 msg.f_SpreadOrBenchmarkCurveData_Spread) :: (("663",enc_opt encode_int msg.f_SpreadOrBenchmarkCurveData_BenchmarkPriceType) :: (("222",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkCurvePoint) :: (("699",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkSecurityID) :: (("761",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkSecurityIDSource) :: (("220",enc_opt encode_Currency msg.f_SpreadOrBenchmarkCurveData_BenchmarkCurveCurrency) :: [])))))))) []
;;

let encode_RoutingGrp (msg)  =
    (@) (("216",enc_opt encode_RoutingType msg.f_RoutingGrp_RoutingType) :: (("217",enc_opt encode_string msg.f_RoutingGrp_RoutingID) :: [])) []
;;

let encode_ExecCollGrp (msg)  =
    (@) (("17",enc_opt encode_string msg.f_ExecCollGrp_ExecID) :: []) []
;;

let encode_YieldData (msg)  =
    (@) (("696",enc_opt encode_LocalMktDate msg.f_YieldData_YieldRedemptionDate) :: (("235",enc_opt encode_YieldType msg.f_YieldData_YieldType) :: (("698",enc_opt encode_int msg.f_YieldData_YieldRedemptionPriceType) :: (("701",enc_opt encode_LocalMktDate msg.f_YieldData_YieldCalcDate) :: (("697",enc_opt encode_float_6 msg.f_YieldData_YieldRedemptionPrice) :: (("236",enc_opt encode_float_6 msg.f_YieldData_Yield) :: [])))))) []
;;

let encode_DiscretionInstructions (msg)  =
    (@) (("846",enc_opt encode_DiscretionScope msg.f_DiscretionInstructions_DiscretionScope) :: (("389",enc_opt encode_float msg.f_DiscretionInstructions_DiscretionOffsetValue) :: (("842",enc_opt encode_DiscretionOffsetType msg.f_DiscretionInstructions_DiscretionOffsetType) :: (("841",enc_opt encode_DiscretionMoveType msg.f_DiscretionInstructions_DiscretionMoveType) :: (("844",enc_opt encode_DiscretionRoundDirection msg.f_DiscretionInstructions_DiscretionRoundDirection) :: (("388",enc_opt encode_DiscretionInst msg.f_DiscretionInstructions_DiscretionInst) :: (("843",enc_opt encode_DiscretionLimitType msg.f_DiscretionInstructions_DiscretionLimitType) :: []))))))) []
;;

let encode_PegInstructions (msg)  =
    (@) (("211",enc_opt encode_float msg.f_PegInstructions_PegOffsetValue) :: (("835",enc_opt encode_PegMoveType msg.f_PegInstructions_PegMoveType) :: (("837",enc_opt encode_PegLimitType msg.f_PegInstructions_PegLimitType) :: (("840",enc_opt encode_PegScope msg.f_PegInstructions_PegScope) :: (("838",enc_opt encode_PegRoundDirection msg.f_PegInstructions_PegRoundDirection) :: (("836",enc_opt encode_PegOffsetType msg.f_PegInstructions_PegOffsetType) :: [])))))) []
;;

let encode_EvntGrp (msg)  =
    (@) (("865",enc_opt encode_EventType msg.f_EvntGrp_EventType) :: (("868",enc_opt encode_string msg.f_EvntGrp_EventText) :: (("866",enc_opt encode_LocalMktDate msg.f_EvntGrp_EventDate) :: (("867",enc_opt encode_float_6 msg.f_EvntGrp_EventPx) :: [])))) []
;;

let encode_CollInqQualGrp (msg)  =
    (@) (("896",enc_opt encode_CollInquiryQualifier msg.f_CollInqQualGrp_CollInquiryQualifier) :: []) []
;;

let encode_AllocAckGrp (msg)  =
    (@) (("366",enc_opt encode_float_6 msg.f_AllocAckGrp_AllocPrice) :: (("467",enc_opt encode_string msg.f_AllocAckGrp_IndividualAllocID) :: (("361",enc_opt encode_string msg.f_AllocAckGrp_EncodedAllocText) :: (("661",enc_opt encode_int msg.f_AllocAckGrp_AllocAcctIDSource) :: (("776",enc_opt encode_int msg.f_AllocAckGrp_IndividualAllocRejCode) :: (("161",enc_opt encode_string msg.f_AllocAckGrp_AllocText) :: (("360",enc_opt encode_int msg.f_AllocAckGrp_EncodedAllocTextLen) :: (("79",enc_opt encode_string msg.f_AllocAckGrp_AllocAccount) :: [])))))))) []
;;

let encode_LogonMsgTypes (msg)  =
    (@) (("385",enc_opt encode_MsgDirection msg.f_LogonMsgTypes_MsgDirection) :: (("372",enc_opt encode_string msg.f_LogonMsgTypes_RefMsgType) :: [])) []
;;

let encode_TrdgSesGrp (msg)  =
    (@) (("625",enc_opt encode_string msg.f_TrdgSesGrp_TradingSessionSubID) :: (("336",enc_opt encode_string msg.f_TrdgSesGrp_TradingSessionID) :: [])) []
;;

let encode_ContraGrp (msg)  =
    (@) (("437",enc_opt encode_float_6 msg.f_ContraGrp_ContraTradeQty) :: (("337",enc_opt encode_string msg.f_ContraGrp_ContraTrader) :: (("655",enc_opt encode_string msg.f_ContraGrp_ContraLegRefID) :: (("375",enc_opt encode_string msg.f_ContraGrp_ContraBroker) :: (("438",enc_opt encode_UTCTimestamp msg.f_ContraGrp_ContraTradeTime) :: []))))) []
;;

let encode_AttrbGrp (msg)  =
    (@) (("872",enc_opt encode_string msg.f_AttrbGrp_InstrAttribValue) :: (("871",enc_opt encode_InstrAttribType msg.f_AttrbGrp_InstrAttribType) :: [])) []
;;

let encode_Hop (msg)  =
    (@) (("629",enc_opt encode_UTCTimestamp msg.f_Hop_HopSendingTime) :: (("628",enc_opt encode_string msg.f_Hop_HopCompID) :: (("630",enc_opt encode_int msg.f_Hop_HopRefID) :: []))) []
;;

let encode_BidDescReqGrp (msg)  =
    (@) (("441",enc_opt encode_int msg.f_BidDescReqGrp_LiquidityNumSecurities) :: (("402",enc_opt encode_float_6 msg.f_BidDescReqGrp_LiquidityPctLow) :: (("406",enc_opt encode_float_6 msg.f_BidDescReqGrp_FairValue) :: (("408",enc_opt encode_float_6 msg.f_BidDescReqGrp_ValueOfFutures) :: (("399",enc_opt encode_BidDescriptorType msg.f_BidDescReqGrp_BidDescriptorType) :: (("401",enc_opt encode_SideValueInd msg.f_BidDescReqGrp_SideValueInd) :: (("407",enc_opt encode_float_6 msg.f_BidDescReqGrp_OutsideIndexPct) :: (("400",enc_opt encode_string msg.f_BidDescReqGrp_BidDescriptor) :: (("404",enc_opt encode_float_6 msg.f_BidDescReqGrp_LiquidityValue) :: (("403",enc_opt encode_float_6 msg.f_BidDescReqGrp_LiquidityPctHigh) :: (("405",enc_opt encode_float_6 msg.f_BidDescReqGrp_EFPTrackingError) :: []))))))))))) []
;;

let encode_LegStipulations (msg)  =
    (@) (("688",enc_opt encode_string msg.f_LegStipulations_LegStipulationType) :: (("689",enc_opt encode_string msg.f_LegStipulations_LegStipulationValue) :: [])) []
;;

let encode_OrdListStatGrp (msg)  =
    (@) (("14",enc_opt encode_float_6 msg.f_OrdListStatGrp_CumQty) :: (("103",enc_opt encode_OrdRejReason msg.f_OrdListStatGrp_OrdRejReason) :: (("355",enc_opt encode_string msg.f_OrdListStatGrp_EncodedText) :: (("11",enc_opt encode_string msg.f_OrdListStatGrp_ClOrdID) :: (("58",enc_opt encode_string msg.f_OrdListStatGrp_Text) :: (("526",enc_opt encode_string msg.f_OrdListStatGrp_SecondaryClOrdID) :: (("636",enc_opt encode_WorkingIndicator msg.f_OrdListStatGrp_WorkingIndicator) :: (("6",enc_opt encode_float_6 msg.f_OrdListStatGrp_AvgPx) :: (("354",enc_opt encode_int msg.f_OrdListStatGrp_EncodedTextLen) :: (("39",enc_opt encode_OrdStatus msg.f_OrdListStatGrp_OrdStatus) :: (("84",enc_opt encode_float_6 msg.f_OrdListStatGrp_CxlQty) :: (("151",enc_opt encode_float_6 msg.f_OrdListStatGrp_LeavesQty) :: [])))))))))))) []
;;

let encode_MDRjctGrp (msg)  =
    (@) (("817",enc_opt encode_string msg.f_MDRjctGrp_AltMDSourceID) :: []) []
;;

let encode_SecTypesGrp (msg)  =
    (@) (("167",enc_opt encode_SecurityType msg.f_SecTypesGrp_SecurityType) :: (("460",enc_opt encode_Product msg.f_SecTypesGrp_Product) :: (("762",enc_opt encode_string msg.f_SecTypesGrp_SecuritySubType) :: (("461",enc_opt encode_string msg.f_SecTypesGrp_CFICode) :: [])))) []
;;

let encode_MDFullGrp (msg)  =
    (@) (("275",enc_opt encode_Exchange msg.f_MDFullGrp_MDMkt) :: (("58",enc_opt encode_string msg.f_MDFullGrp_Text) :: (("273",enc_opt encode_UTCTimeOnly msg.f_MDFullGrp_MDEntryTime) :: (("277",enc_opt encode_TradeCondition msg.f_MDFullGrp_TradeCondition) :: (("625",enc_opt encode_string msg.f_MDFullGrp_TradingSessionSubID) :: (("346",enc_opt encode_int msg.f_MDFullGrp_NumberOfOrders) :: (("289",enc_opt encode_string msg.f_MDFullGrp_MDEntrySeller) :: (("546",enc_opt encode_Scope msg.f_MDFullGrp_Scope) :: (("290",enc_opt encode_int msg.f_MDFullGrp_MDEntryPositionNo) :: (("287",enc_opt encode_int msg.f_MDFullGrp_SellerDays) :: (("126",enc_opt encode_UTCTimestamp msg.f_MDFullGrp_ExpireTime) :: (("270",enc_opt encode_float_6 msg.f_MDFullGrp_MDEntryPx) :: (("110",enc_opt encode_float_6 msg.f_MDFullGrp_MinQty) :: (("432",enc_opt encode_LocalMktDate msg.f_MDFullGrp_ExpireDate) :: (("355",enc_opt encode_string msg.f_MDFullGrp_EncodedText) :: (("272",enc_opt encode_UTCDateOnly msg.f_MDFullGrp_MDEntryDate) :: (("336",enc_opt encode_string msg.f_MDFullGrp_TradingSessionID) :: (("37",enc_opt encode_string msg.f_MDFullGrp_OrderID) :: (("286",enc_opt encode_OpenCloseSettlFlag msg.f_MDFullGrp_OpenCloseSettlFlag) :: (("271",enc_opt encode_float_6 msg.f_MDFullGrp_MDEntrySize) :: (("274",enc_opt encode_TickDirection msg.f_MDFullGrp_TickDirection) :: (("354",enc_opt encode_int msg.f_MDFullGrp_EncodedTextLen) :: (("288",enc_opt encode_string msg.f_MDFullGrp_MDEntryBuyer) :: (("276",enc_opt encode_QuoteCondition msg.f_MDFullGrp_QuoteCondition) :: (("282",enc_opt encode_string msg.f_MDFullGrp_MDEntryOriginator) :: (("15",enc_opt encode_Currency msg.f_MDFullGrp_Currency) :: (("59",enc_opt encode_TimeInForce msg.f_MDFullGrp_TimeInForce) :: (("811",enc_opt encode_float msg.f_MDFullGrp_PriceDelta) :: (("283",enc_opt encode_string msg.f_MDFullGrp_LocationID) :: (("299",enc_opt encode_string msg.f_MDFullGrp_QuoteEntryID) :: (("18",enc_opt encode_ExecInst msg.f_MDFullGrp_ExecInst) :: (("284",enc_opt encode_string msg.f_MDFullGrp_DeskID) :: (("269",enc_opt encode_MDEntryType msg.f_MDFullGrp_MDEntryType) :: []))))))))))))))))))))))))))))))))) []
;;

let encode_NstdPtysSubGrp (msg)  =
    (@) (("805",enc_opt encode_int msg.f_NstdPtysSubGrp_NestedPartySubIDType) :: (("545",enc_opt encode_string msg.f_NstdPtysSubGrp_NestedPartySubID) :: [])) []
;;

let encode_Stipulations (msg)  =
    (@) (("233",enc_opt encode_StipulationType msg.f_Stipulations_StipulationType) :: (("234",enc_opt encode_string msg.f_Stipulations_StipulationValue) :: [])) []
;;

let encode_AffectedOrdGrp (msg)  =
    (@) (("536",enc_opt encode_string msg.f_AffectedOrdGrp_AffectedSecondaryOrderID) :: (("535",enc_opt encode_string msg.f_AffectedOrdGrp_AffectedOrderID) :: (("41",enc_opt encode_string msg.f_AffectedOrdGrp_OrigClOrdID) :: []))) []
;;

let encode_TrdCapDtGrp (msg)  =
    (@) (("75",enc_opt encode_LocalMktDate msg.f_TrdCapDtGrp_TradeDate) :: (("60",enc_opt encode_UTCTimestamp msg.f_TrdCapDtGrp_TransactTime) :: [])) []
;;

let encode_CompIDReqGrp (msg)  =
    (@) (("283",enc_opt encode_string msg.f_CompIDReqGrp_LocationID) :: (("931",enc_opt encode_string msg.f_CompIDReqGrp_RefSubID) :: (("930",enc_opt encode_string msg.f_CompIDReqGrp_RefCompID) :: (("284",enc_opt encode_string msg.f_CompIDReqGrp_DeskID) :: [])))) []
;;

let encode_LinesOfTextGrp (msg)  =
    (@) (("354",enc_opt encode_int msg.f_LinesOfTextGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_LinesOfTextGrp_EncodedText) :: (("58",enc_opt encode_string msg.f_LinesOfTextGrp_Text) :: []))) []
;;

let encode_ClrInstGrp (msg)  =
    (@) (("577",enc_opt encode_ClearingInstruction msg.f_ClrInstGrp_ClearingInstruction) :: []) []
;;

let encode_RgstDistInstGrp (msg)  =
    (@) (("499",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentCode) :: (("501",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribPayRef) :: (("500",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentAcctNumber) :: (("477",enc_opt encode_DistribPaymentMethod msg.f_RgstDistInstGrp_DistribPaymentMethod) :: (("478",enc_opt encode_Currency msg.f_RgstDistInstGrp_CashDistribCurr) :: (("498",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentName) :: (("512",enc_opt encode_float_6 msg.f_RgstDistInstGrp_DistribPercentage) :: (("502",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentAcctName) :: [])))))))) []
;;

let encode_BidCompReqGrp (msg)  =
    (@) (("1",enc_opt encode_string msg.f_BidCompReqGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_BidCompReqGrp_AcctIDSource) :: (("54",enc_opt encode_Side msg.f_BidCompReqGrp_Side) :: (("625",enc_opt encode_string msg.f_BidCompReqGrp_TradingSessionSubID) :: (("66",enc_opt encode_string msg.f_BidCompReqGrp_ListID) :: (("63",enc_opt encode_SettlType msg.f_BidCompReqGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_BidCompReqGrp_SettlDate) :: (("336",enc_opt encode_string msg.f_BidCompReqGrp_TradingSessionID) :: (("430",enc_opt encode_NetGrossInd msg.f_BidCompReqGrp_NetGrossInd) :: []))))))))) []
;;

let encode_QuotQualGrp (msg)  =
    (@) (("695",enc_opt encode_char msg.f_QuotQualGrp_QuoteQualifier) :: []) []
;;

let encode_SettlPtysSubGrp (msg)  =
    (@) (("786",enc_opt encode_int msg.f_SettlPtysSubGrp_SettlPartySubIDType) :: (("785",enc_opt encode_string msg.f_SettlPtysSubGrp_SettlPartySubID) :: [])) []
;;

let encode_NstdPtys2SubGrp (msg)  =
    (@) (("760",enc_opt encode_string msg.f_NstdPtys2SubGrp_Nested2PartySubID) :: (("807",enc_opt encode_int msg.f_NstdPtys2SubGrp_Nested2PartySubIDType) :: [])) []
;;

let encode_ExecsGrp (msg)  =
    (@) (("17",enc_opt encode_string msg.f_ExecsGrp_ExecID) :: []) []
;;

let encode_OrderQtyData (msg)  =
    (@) (("468",enc_opt encode_RoundingDirection msg.f_OrderQtyData_RoundingDirection) :: (("469",enc_opt encode_float msg.f_OrderQtyData_RoundingModulus) :: (("516",enc_opt encode_float_6 msg.f_OrderQtyData_OrderPercent) :: (("152",enc_opt encode_float_6 msg.f_OrderQtyData_CashOrderQty) :: (("38",enc_opt encode_float_6 msg.f_OrderQtyData_OrderQty) :: []))))) []
;;

let encode_MDReqGrp (msg)  =
    (@) (("269",enc_opt encode_MDEntryType msg.f_MDReqGrp_MDEntryType) :: []) []
;;

let encode_UnderlyingStipulations (msg)  =
    (@) (("889",enc_opt encode_string msg.f_UnderlyingStipulations_UnderlyingStipValue) :: (("888",enc_opt encode_string msg.f_UnderlyingStipulations_UnderlyingStipType) :: [])) []
;;

let encode_NestedParties2 (msg)  =
    (@) (("759",enc_opt encode_int msg.f_NestedParties2_Nested2PartyRole) :: (("758",enc_opt encode_char msg.f_NestedParties2_Nested2PartyIDSource) :: (("757",enc_opt encode_string msg.f_NestedParties2_Nested2PartyID) :: []))) ((@) (enc_repeat encode_NstdPtys2SubGrp "806" msg.f_NestedParties2_NstdPtys2SubGrp) [])
;;

let encode_SettlParties (msg)  =
    (@) (("783",enc_opt encode_char msg.f_SettlParties_SettlPartyIDSource) :: (("784",enc_opt encode_int msg.f_SettlParties_SettlPartyRole) :: (("782",enc_opt encode_string msg.f_SettlParties_SettlPartyID) :: []))) ((@) (enc_repeat encode_SettlPtysSubGrp "801" msg.f_SettlParties_SettlPtysSubGrp) [])
;;

let encode_NestedParties (msg)  =
    (@) (("524",enc_opt encode_string msg.f_NestedParties_NestedPartyID) :: (("538",enc_opt encode_int msg.f_NestedParties_NestedPartyRole) :: (("525",enc_opt encode_char msg.f_NestedParties_NestedPartyIDSource) :: []))) ((@) (enc_repeat encode_NstdPtysSubGrp "804" msg.f_NestedParties_NstdPtysSubGrp) [])
;;

let encode_InstrumentExtension (msg)  =
    (@) (("869",enc_opt encode_float_6 msg.f_InstrumentExtension_PctAtRisk) :: (("668",enc_opt encode_DeliveryForm msg.f_InstrumentExtension_DeliveryForm) :: [])) ((@) (enc_repeat encode_AttrbGrp "870" msg.f_InstrumentExtension_AttrbGrp) [])
;;

let encode_Instrument (msg)  =
    (@) (("107",enc_opt encode_string msg.f_Instrument_SecurityDesc) :: (("223",enc_opt encode_float_6 msg.f_Instrument_CouponRate) :: (("202",enc_opt encode_float_6 msg.f_Instrument_StrikePrice) :: (("255",enc_opt encode_string msg.f_Instrument_CreditRating) :: (("225",enc_opt encode_LocalMktDate msg.f_Instrument_IssueDate) :: (("206",enc_opt encode_char msg.f_Instrument_OptAttribute) :: (("541",enc_opt encode_LocalMktDate msg.f_Instrument_MaturityDate) :: (("22",enc_opt encode_SecurityIDSource msg.f_Instrument_SecurityIDSource) :: (("873",enc_opt encode_LocalMktDate msg.f_Instrument_DatedDate) :: (("348",enc_opt encode_int msg.f_Instrument_EncodedIssuerLen) :: (("876",enc_opt encode_string msg.f_Instrument_CPRegType) :: (("874",enc_opt encode_LocalMktDate msg.f_Instrument_InterestAccrualDate) :: (("231",enc_opt encode_float msg.f_Instrument_ContractMultiplier) :: (("350",enc_opt encode_int msg.f_Instrument_EncodedSecurityDescLen) :: (("471",enc_opt encode_string msg.f_Instrument_StateOrProvinceOfIssue) :: (("240",enc_opt encode_LocalMktDate msg.f_Instrument_RedemptionDate) :: (("239",enc_opt encode_string msg.f_Instrument_RepoCollateralSecurityType) :: (("470",enc_opt encode_Country msg.f_Instrument_CountryOfIssue) :: (("167",enc_opt encode_SecurityType msg.f_Instrument_SecurityType) :: (("65",enc_opt encode_string msg.f_Instrument_SymbolSfx) :: (("106",enc_opt encode_string msg.f_Instrument_Issuer) :: (("667",enc_opt encode_MonthYear msg.f_Instrument_ContractSettlMonth) :: (("200",enc_opt encode_MonthYear msg.f_Instrument_MaturityMonthYear) :: (("460",enc_opt encode_Product msg.f_Instrument_Product) :: (("55",enc_opt encode_string msg.f_Instrument_Symbol) :: (("947",enc_opt encode_Currency msg.f_Instrument_StrikeCurrency) :: (("349",enc_opt encode_string msg.f_Instrument_EncodedIssuer) :: (("461",enc_opt encode_string msg.f_Instrument_CFICode) :: (("543",enc_opt encode_string msg.f_Instrument_InstrRegistry) :: (("226",enc_opt encode_int msg.f_Instrument_RepurchaseTerm) :: (("228",enc_opt encode_float msg.f_Instrument_Factor) :: (("224",enc_opt encode_LocalMktDate msg.f_Instrument_CouponPaymentDate) :: (("875",enc_opt encode_CPProgram msg.f_Instrument_CPProgram) :: (("48",enc_opt encode_string msg.f_Instrument_SecurityID) :: (("762",enc_opt encode_string msg.f_Instrument_SecuritySubType) :: (("472",enc_opt encode_string msg.f_Instrument_LocaleOfIssue) :: (("227",enc_opt encode_float_6 msg.f_Instrument_RepurchaseRate) :: (("207",enc_opt encode_Exchange msg.f_Instrument_SecurityExchange) :: (("691",enc_opt encode_string msg.f_Instrument_Pool) :: (("351",enc_opt encode_string msg.f_Instrument_EncodedSecurityDesc) :: [])))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_SecAltIDGrp "454" msg.f_Instrument_SecAltIDGrp) ((@) (enc_repeat encode_EvntGrp "864" msg.f_Instrument_EvntGrp) []))
;;

let encode_Parties (msg)  =
    (@) (("447",enc_opt encode_PartyIDSource msg.f_Parties_PartyIDSource) :: (("448",enc_opt encode_string msg.f_Parties_PartyID) :: (("452",enc_opt encode_PartyRole msg.f_Parties_PartyRole) :: []))) ((@) (enc_repeat encode_PtysSubGrp "802" msg.f_Parties_PtysSubGrp) [])
;;

let encode_InstrumentLeg (msg)  =
    (@) (("624",enc_opt encode_char msg.f_InstrumentLeg_LegSide) :: (("600",enc_opt encode_string msg.f_InstrumentLeg_LegSymbol) :: (("617",enc_opt encode_string msg.f_InstrumentLeg_LegIssuer) :: (("608",enc_opt encode_string msg.f_InstrumentLeg_LegCFICode) :: (("254",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegRedemptionDate) :: (("739",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegDatedDate) :: (("955",enc_opt encode_MonthYear msg.f_InstrumentLeg_LegContractSettlMonth) :: (("249",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegIssueDate) :: (("616",enc_opt encode_Exchange msg.f_InstrumentLeg_LegSecurityExchange) :: (("740",enc_opt encode_string msg.f_InstrumentLeg_LegPool) :: (("598",enc_opt encode_string msg.f_InstrumentLeg_LegLocaleOfIssue) :: (("956",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegInterestAccrualDate) :: (("764",enc_opt encode_string msg.f_InstrumentLeg_LegSecuritySubType) :: (("620",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityDesc) :: (("621",enc_opt encode_int msg.f_InstrumentLeg_EncodedLegSecurityDescLen) :: (("609",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityType) :: (("614",enc_opt encode_float msg.f_InstrumentLeg_LegContractMultiplier) :: (("603",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityIDSource) :: (("599",enc_opt encode_string msg.f_InstrumentLeg_LegInstrRegistry) :: (("942",enc_opt encode_Currency msg.f_InstrumentLeg_LegStrikeCurrency) :: (("619",enc_opt encode_string msg.f_InstrumentLeg_EncodedLegIssuer) :: (("250",enc_opt encode_string msg.f_InstrumentLeg_LegRepoCollateralSecurityType) :: (("597",enc_opt encode_string msg.f_InstrumentLeg_LegStateOrProvinceOfIssue) :: (("623",enc_opt encode_float msg.f_InstrumentLeg_LegRatioQty) :: (("613",enc_opt encode_char msg.f_InstrumentLeg_LegOptAttribute) :: (("602",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityID) :: (("607",enc_opt encode_int msg.f_InstrumentLeg_LegProduct) :: (("257",enc_opt encode_string msg.f_InstrumentLeg_LegCreditRating) :: (("601",enc_opt encode_string msg.f_InstrumentLeg_LegSymbolSfx) :: (("618",enc_opt encode_int msg.f_InstrumentLeg_EncodedLegIssuerLen) :: (("596",enc_opt encode_Country msg.f_InstrumentLeg_LegCountryOfIssue) :: (("248",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegCouponPaymentDate) :: (("252",enc_opt encode_float_6 msg.f_InstrumentLeg_LegRepurchaseRate) :: (("622",enc_opt encode_string msg.f_InstrumentLeg_EncodedLegSecurityDesc) :: (("556",enc_opt encode_Currency msg.f_InstrumentLeg_LegCurrency) :: (("615",enc_opt encode_float_6 msg.f_InstrumentLeg_LegCouponRate) :: (("610",enc_opt encode_MonthYear msg.f_InstrumentLeg_LegMaturityMonthYear) :: (("611",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegMaturityDate) :: (("612",enc_opt encode_float_6 msg.f_InstrumentLeg_LegStrikePrice) :: (("253",enc_opt encode_float msg.f_InstrumentLeg_LegFactor) :: (("251",enc_opt encode_int msg.f_InstrumentLeg_LegRepurchaseTerm) :: []))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_LegSecAltIDGrp "604" msg.f_InstrumentLeg_LegSecAltIDGrp) [])
;;

let encode_UnderlyingInstrument (msg)  =
    (@) (("462",enc_opt encode_int msg.f_UnderlyingInstrument_UnderlyingProduct) :: (("884",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingStartValue) :: (("877",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCPProgram) :: (("879",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingQty) :: (("885",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingCurrentValue) :: (("318",enc_opt encode_Currency msg.f_UnderlyingInstrument_UnderlyingCurrency) :: (("810",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingPx) :: (("310",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityType) :: (("246",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingFactor) :: (("592",enc_opt encode_Country msg.f_UnderlyingInstrument_UnderlyingCountryOfIssue) :: (("309",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityID) :: (("595",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingInstrRegistry) :: (("436",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingContractMultiplier) :: (("312",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSymbolSfx) :: (("883",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingEndPrice) :: (("763",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecuritySubType) :: (("362",enc_opt encode_int msg.f_UnderlyingInstrument_EncodedUnderlyingIssuerLen) :: (("306",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingIssuer) :: (("316",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingStrikePrice) :: (("886",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingEndValue) :: (("311",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSymbol) :: (("542",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingMaturityDate) :: (("317",enc_opt encode_char msg.f_UnderlyingInstrument_UnderlyingOptAttribute) :: (("305",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityIDSource) :: (("593",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingStateOrProvinceOfIssue) :: (("247",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingRedemptionDate) :: (("363",enc_opt encode_string msg.f_UnderlyingInstrument_EncodedUnderlyingIssuer) :: (("313",enc_opt encode_MonthYear msg.f_UnderlyingInstrument_UnderlyingMaturityMonthYear) :: (("941",enc_opt encode_Currency msg.f_UnderlyingInstrument_UnderlyingStrikeCurrency) :: (("241",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingCouponPaymentDate) :: (("435",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingCouponRate) :: (("256",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCreditRating) :: (("308",enc_opt encode_Exchange msg.f_UnderlyingInstrument_UnderlyingSecurityExchange) :: (("242",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingIssueDate) :: (("245",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingRepurchaseRate) :: (("463",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCFICode) :: (("364",enc_opt encode_int msg.f_UnderlyingInstrument_EncodedUnderlyingSecurityDescLen) :: (("882",enc_opt encode_float_6 msg.f_UnderlyingInstrument_UnderlyingDirtyPrice) :: (("243",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingRepoCollateralSecurityType) :: (("594",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingLocaleOfIssue) :: (("307",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityDesc) :: (("365",enc_opt encode_string msg.f_UnderlyingInstrument_EncodedUnderlyingSecurityDesc) :: (("878",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCPRegType) :: (("244",enc_opt encode_int msg.f_UnderlyingInstrument_UnderlyingRepurchaseTerm) :: [])))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_UnderlyingStipulations "887" msg.f_UnderlyingInstrument_UnderlyingStipulations) ((@) (enc_repeat encode_UndSecAltIDGrp "457" msg.f_UnderlyingInstrument_UndSecAltIDGrp) []))
;;

let encode_BidCompRspGrp (msg)  =
    (@) (encode_CommissionData msg.f_BidCompRspGrp_CommissionData) ((@) (("406",enc_opt encode_float_6 msg.f_BidCompRspGrp_FairValue) :: (("355",enc_opt encode_string msg.f_BidCompRspGrp_EncodedText) :: (("336",enc_opt encode_string msg.f_BidCompRspGrp_TradingSessionID) :: (("58",enc_opt encode_string msg.f_BidCompRspGrp_Text) :: (("430",enc_opt encode_NetGrossInd msg.f_BidCompRspGrp_NetGrossInd) :: (("54",enc_opt encode_Side msg.f_BidCompRspGrp_Side) :: (("625",enc_opt encode_string msg.f_BidCompRspGrp_TradingSessionSubID) :: (("354",enc_opt encode_int msg.f_BidCompRspGrp_EncodedTextLen) :: (("44",enc_opt encode_float_6 msg.f_BidCompRspGrp_Price) :: (("66",enc_opt encode_string msg.f_BidCompRspGrp_ListID) :: (("63",enc_opt encode_SettlType msg.f_BidCompRspGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_BidCompRspGrp_SettlDate) :: (("421",enc_opt encode_Country msg.f_BidCompRspGrp_Country) :: (("423",enc_opt encode_PriceType msg.f_BidCompRspGrp_PriceType) :: [])))))))))))))) [])
;;

let encode_NestedParties3 (msg)  =
    (@) (("951",enc_opt encode_int msg.f_NestedParties3_Nested3PartyRole) :: (("950",enc_opt encode_char msg.f_NestedParties3_Nested3PartyIDSource) :: (("949",enc_opt encode_string msg.f_NestedParties3_Nested3PartyID) :: []))) ((@) (enc_repeat encode_NstdPtys3SubGrp "952" msg.f_NestedParties3_NstdPtys3SubGrp) [])
;;

let encode_PreAllocMlegGrp (msg)  =
    (@) (("467",enc_opt encode_string msg.f_PreAllocMlegGrp_IndividualAllocID) :: (("736",enc_opt encode_Currency msg.f_PreAllocMlegGrp_AllocSettlCurrency) :: (("80",enc_opt encode_float_6 msg.f_PreAllocMlegGrp_AllocQty) :: (("661",enc_opt encode_int msg.f_PreAllocMlegGrp_AllocAcctIDSource) :: (("79",enc_opt encode_string msg.f_PreAllocMlegGrp_AllocAccount) :: []))))) ((@) (enc_repeat encode_NestedParties3 "948" msg.f_PreAllocMlegGrp_NestedParties3) [])
;;

let encode_UndInstrmtStrkPxGrp (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_UndInstrmtStrkPxGrp_UnderlyingInstrument) ((@) (("54",enc_opt encode_Side msg.f_UndInstrmtStrkPxGrp_Side) :: (("354",enc_opt encode_int msg.f_UndInstrmtStrkPxGrp_EncodedTextLen) :: (("44",enc_opt encode_float_6 msg.f_UndInstrmtStrkPxGrp_Price) :: (("15",enc_opt encode_Currency msg.f_UndInstrmtStrkPxGrp_Currency) :: (("355",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_EncodedText) :: (("140",enc_opt encode_float_6 msg.f_UndInstrmtStrkPxGrp_PrevClosePx) :: (("11",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_ClOrdID) :: (("58",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_Text) :: (("526",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_SecondaryClOrdID) :: []))))))))) [])
;;

let encode_PosUndInstrmtGrp (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_PosUndInstrmtGrp_UnderlyingInstrument) ((@) (("733",enc_opt encode_int msg.f_PosUndInstrmtGrp_UnderlyingSettlPriceType) :: (("732",enc_opt encode_float_6 msg.f_PosUndInstrmtGrp_UnderlyingSettlPrice) :: [])) [])
;;

let encode_UndInstrmtGrp (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_UndInstrmtGrp_UnderlyingInstrument) ((@) [] [])
;;

let encode_UndInstrmtCollGrp (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_UndInstrmtCollGrp_UnderlyingInstrument) ((@) (("944",enc_opt encode_CollAction msg.f_UndInstrmtCollGrp_CollAction) :: []) [])
;;

let encode_InstrmtLegGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegGrp_InstrumentLeg) ((@) [] [])
;;

let encode_InstrmtLegIOIGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegIOIGrp_InstrumentLeg) ((@) (("682",enc_opt encode_string msg.f_InstrmtLegIOIGrp_LegIOIQty) :: []) ((@) (enc_repeat encode_LegStipulations "683" msg.f_InstrmtLegIOIGrp_LegStipulations) []))
;;

let encode_InstrmtLegSecListGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegSecListGrp_InstrumentLeg) ((@) (encode_LegBenchmarkCurveData msg.f_InstrmtLegSecListGrp_LegBenchmarkCurveData) ((@) (("690",enc_opt encode_LegSwapType msg.f_InstrmtLegSecListGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_InstrmtLegSecListGrp_LegSettlType) :: [])) ((@) (enc_repeat encode_LegStipulations "683" msg.f_InstrmtLegSecListGrp_LegStipulations) [])))
;;

let encode_SideCrossOrdCxlGrp (msg)  =
    (@) (encode_OrderQtyData msg.f_SideCrossOrdCxlGrp_OrderQtyData) ((@) (("355",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_EncodedText) :: (("11",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_ClOrdID) :: (("229",enc_opt encode_LocalMktDate msg.f_SideCrossOrdCxlGrp_TradeOriginationDate) :: (("58",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_Text) :: (("526",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_SecondaryClOrdID) :: (("54",enc_opt encode_Side msg.f_SideCrossOrdCxlGrp_Side) :: (("354",enc_opt encode_int msg.f_SideCrossOrdCxlGrp_EncodedTextLen) :: (("586",enc_opt encode_UTCTimestamp msg.f_SideCrossOrdCxlGrp_OrigOrdModTime) :: (("376",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_ComplianceID) :: (("583",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_ClOrdLinkID) :: (("75",enc_opt encode_LocalMktDate msg.f_SideCrossOrdCxlGrp_TradeDate) :: (("41",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_OrigClOrdID) :: [])))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_SideCrossOrdCxlGrp_Parties) []))
;;

let encode_InstrmtStrkPxGrp (msg)  =
    (@) (encode_Instrument msg.f_InstrmtStrkPxGrp_Instrument) ((@) [] [])
;;

let encode_InstrmtGrp (msg)  =
    (@) (encode_Instrument msg.f_InstrmtGrp_Instrument) ((@) [] [])
;;

let encode_InstrmtLegExecGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegExecGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float_6 msg.f_InstrmtLegExecGrp_LegQty) :: (("564",enc_opt encode_char msg.f_InstrmtLegExecGrp_LegPositionEffect) :: (("587",enc_opt encode_char msg.f_InstrmtLegExecGrp_LegSettlType) :: (("637",enc_opt encode_float_6 msg.f_InstrmtLegExecGrp_LegLastPx) :: (("566",enc_opt encode_float_6 msg.f_InstrmtLegExecGrp_LegPrice) :: (("654",enc_opt encode_string msg.f_InstrmtLegExecGrp_LegRefID) :: (("588",enc_opt encode_LocalMktDate msg.f_InstrmtLegExecGrp_LegSettlDate) :: (("690",enc_opt encode_LegSwapType msg.f_InstrmtLegExecGrp_LegSwapType) :: (("565",enc_opt encode_int msg.f_InstrmtLegExecGrp_LegCoveredOrUncovered) :: []))))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_InstrmtLegExecGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_InstrmtLegExecGrp_LegStipulations) [])))
;;

let encode_PositionQty (msg)  =
    (@) (("703",enc_opt encode_PosType msg.f_PositionQty_PosType) :: (("705",enc_opt encode_float_6 msg.f_PositionQty_ShortQty) :: (("704",enc_opt encode_float_6 msg.f_PositionQty_LongQty) :: (("706",enc_opt encode_PosQtyStatus msg.f_PositionQty_PosQtyStatus) :: [])))) ((@) (enc_repeat encode_NestedParties "539" msg.f_PositionQty_NestedParties) [])
;;

let encode_TrdInstrmtLegGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_TrdInstrmtLegGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float_6 msg.f_TrdInstrmtLegGrp_LegQty) :: (("564",enc_opt encode_char msg.f_TrdInstrmtLegGrp_LegPositionEffect) :: (("587",enc_opt encode_char msg.f_TrdInstrmtLegGrp_LegSettlType) :: (("637",enc_opt encode_float_6 msg.f_TrdInstrmtLegGrp_LegLastPx) :: (("566",enc_opt encode_float_6 msg.f_TrdInstrmtLegGrp_LegPrice) :: (("654",enc_opt encode_string msg.f_TrdInstrmtLegGrp_LegRefID) :: (("588",enc_opt encode_LocalMktDate msg.f_TrdInstrmtLegGrp_LegSettlDate) :: (("690",enc_opt encode_LegSwapType msg.f_TrdInstrmtLegGrp_LegSwapType) :: (("565",enc_opt encode_int msg.f_TrdInstrmtLegGrp_LegCoveredOrUncovered) :: []))))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_TrdInstrmtLegGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_TrdInstrmtLegGrp_LegStipulations) [])))
;;

let encode_LegQuotGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_LegQuotGrp_InstrumentLeg) ((@) (encode_LegBenchmarkCurveData msg.f_LegQuotGrp_LegBenchmarkCurveData) ((@) (("681",enc_opt encode_float_6 msg.f_LegQuotGrp_LegBidPx) :: (("686",enc_opt encode_int msg.f_LegQuotGrp_LegPriceType) :: (("687",enc_opt encode_float_6 msg.f_LegQuotGrp_LegQty) :: (("588",enc_opt encode_LocalMktDate msg.f_LegQuotGrp_LegSettlDate) :: (("684",enc_opt encode_float_6 msg.f_LegQuotGrp_LegOfferPx) :: (("690",enc_opt encode_LegSwapType msg.f_LegQuotGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_LegQuotGrp_LegSettlType) :: []))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_LegQuotGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_LegQuotGrp_LegStipulations) []))))
;;

let encode_LegQuotStatGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_LegQuotStatGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float_6 msg.f_LegQuotStatGrp_LegQty) :: (("588",enc_opt encode_LocalMktDate msg.f_LegQuotStatGrp_LegSettlDate) :: (("690",enc_opt encode_LegSwapType msg.f_LegQuotStatGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_LegQuotStatGrp_LegSettlType) :: [])))) ((@) (enc_repeat encode_NestedParties "539" msg.f_LegQuotStatGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_LegQuotStatGrp_LegStipulations) [])))
;;

let encode_RgstDtlsGrp (msg)  =
    (@) (("509",enc_opt encode_string msg.f_RgstDtlsGrp_RegistDtls) :: (("522",enc_opt encode_OwnerType msg.f_RgstDtlsGrp_OwnerType) :: (("486",enc_opt encode_LocalMktDate msg.f_RgstDtlsGrp_DateOfBirth) :: (("511",enc_opt encode_string msg.f_RgstDtlsGrp_RegistEmail) :: (("475",enc_opt encode_Country msg.f_RgstDtlsGrp_InvestorCountryOfResidence) :: (("474",enc_opt encode_string msg.f_RgstDtlsGrp_MailingDtls) :: (("482",enc_opt encode_string msg.f_RgstDtlsGrp_MailingInst) :: []))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_RgstDtlsGrp_NestedParties) [])
;;

let encode_QuotReqLegsGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_QuotReqLegsGrp_InstrumentLeg) ((@) (encode_LegBenchmarkCurveData msg.f_QuotReqLegsGrp_LegBenchmarkCurveData) ((@) (("687",enc_opt encode_float_6 msg.f_QuotReqLegsGrp_LegQty) :: (("588",enc_opt encode_LocalMktDate msg.f_QuotReqLegsGrp_LegSettlDate) :: (("690",enc_opt encode_LegSwapType msg.f_QuotReqLegsGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_QuotReqLegsGrp_LegSettlType) :: [])))) ((@) (enc_repeat encode_NestedParties "539" msg.f_QuotReqLegsGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_QuotReqLegsGrp_LegStipulations) []))))
;;

let encode_PreAllocGrp (msg)  =
    (@) (("467",enc_opt encode_string msg.f_PreAllocGrp_IndividualAllocID) :: (("736",enc_opt encode_Currency msg.f_PreAllocGrp_AllocSettlCurrency) :: (("80",enc_opt encode_float_6 msg.f_PreAllocGrp_AllocQty) :: (("661",enc_opt encode_int msg.f_PreAllocGrp_AllocAcctIDSource) :: (("79",enc_opt encode_string msg.f_PreAllocGrp_AllocAccount) :: []))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_PreAllocGrp_NestedParties) [])
;;

let encode_DlvyInstGrp (msg)  =
    (@) (("787",enc_opt encode_DlvyInstType msg.f_DlvyInstGrp_DlvyInstType) :: (("165",enc_opt encode_SettlInstSource msg.f_DlvyInstGrp_SettlInstSource) :: [])) ((@) (enc_repeat encode_SettlParties "781" msg.f_DlvyInstGrp_SettlParties) [])
;;

let encode_LegPreAllocGrp (msg)  =
    (@) (("674",enc_opt encode_string msg.f_LegPreAllocGrp_LegAllocAcctIDSource) :: (("672",enc_opt encode_string msg.f_LegPreAllocGrp_LegIndividualAllocID) :: (("673",enc_opt encode_float_6 msg.f_LegPreAllocGrp_LegAllocQty) :: (("675",enc_opt encode_Currency msg.f_LegPreAllocGrp_LegSettlCurrency) :: (("671",enc_opt encode_string msg.f_LegPreAllocGrp_LegAllocAccount) :: []))))) ((@) (enc_repeat encode_NestedParties2 "756" msg.f_LegPreAllocGrp_NestedParties2) [])
;;

let encode_TrdAllocGrp (msg)  =
    (@) (("467",enc_opt encode_string msg.f_TrdAllocGrp_IndividualAllocID) :: (("736",enc_opt encode_Currency msg.f_TrdAllocGrp_AllocSettlCurrency) :: (("80",enc_opt encode_float_6 msg.f_TrdAllocGrp_AllocQty) :: (("661",enc_opt encode_int msg.f_TrdAllocGrp_AllocAcctIDSource) :: (("79",enc_opt encode_string msg.f_TrdAllocGrp_AllocAccount) :: []))))) ((@) (enc_repeat encode_NestedParties2 "756" msg.f_TrdAllocGrp_NestedParties2) [])
;;

let encode_OrdAllocGrp (msg)  =
    (@) (("800",enc_opt encode_float_6 msg.f_OrdAllocGrp_OrderBookingQty) :: (("66",enc_opt encode_string msg.f_OrdAllocGrp_ListID) :: (("198",enc_opt encode_string msg.f_OrdAllocGrp_SecondaryOrderID) :: (("11",enc_opt encode_string msg.f_OrdAllocGrp_ClOrdID) :: (("799",enc_opt encode_float_6 msg.f_OrdAllocGrp_OrderAvgPx) :: (("38",enc_opt encode_float_6 msg.f_OrdAllocGrp_OrderQty) :: (("526",enc_opt encode_string msg.f_OrdAllocGrp_SecondaryClOrdID) :: (("37",enc_opt encode_string msg.f_OrdAllocGrp_OrderID) :: [])))))))) ((@) (enc_repeat encode_NestedParties2 "756" msg.f_OrdAllocGrp_NestedParties2) [])
;;

let encode_TrdCapRptSideGrp (msg)  =
    (@) (encode_CommissionData msg.f_TrdCapRptSideGrp_CommissionData) ((@) (("483",enc_opt encode_UTCTimestamp msg.f_TrdCapRptSideGrp_TransBkdTime) :: (("377",enc_opt encode_SolicitedFlag msg.f_TrdCapRptSideGrp_SolicitedFlag) :: (("528",enc_opt encode_OrderCapacity msg.f_TrdCapRptSideGrp_OrderCapacity) :: (("40",enc_opt encode_OrdType msg.f_TrdCapRptSideGrp_OrdType) :: (("198",enc_opt encode_string msg.f_TrdCapRptSideGrp_SecondaryOrderID) :: (("578",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradeInputSource) :: (("526",enc_opt encode_string msg.f_TrdCapRptSideGrp_SecondaryClOrdID) :: (("581",enc_opt encode_AccountType msg.f_TrdCapRptSideGrp_AccountType) :: (("81",enc_opt encode_ProcessCode msg.f_TrdCapRptSideGrp_ProcessCode) :: (("159",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_AccruedInterestAmt) :: (("238",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_Concession) :: (("943",enc_opt encode_string msg.f_TrdCapRptSideGrp_TimeBracket) :: (("575",enc_opt encode_OddLot msg.f_TrdCapRptSideGrp_OddLot) :: (("1",enc_opt encode_string msg.f_TrdCapRptSideGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_TrdCapRptSideGrp_AcctIDSource) :: (("591",enc_opt encode_PreallocMethod msg.f_TrdCapRptSideGrp_PreallocMethod) :: (("37",enc_opt encode_string msg.f_TrdCapRptSideGrp_OrderID) :: (("54",enc_opt encode_Side msg.f_TrdCapRptSideGrp_Side) :: (("354",enc_opt encode_int msg.f_TrdCapRptSideGrp_EncodedTextLen) :: (("158",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_AccruedInterestRate) :: (("738",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_InterestAtMaturity) :: (("118",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_NetMoney) :: (("376",enc_opt encode_string msg.f_TrdCapRptSideGrp_ComplianceID) :: (("230",enc_opt encode_LocalMktDate msg.f_TrdCapRptSideGrp_ExDate) :: (("821",enc_opt encode_string msg.f_TrdCapRptSideGrp_OrderInputDevice) :: (("18",enc_opt encode_ExecInst msg.f_TrdCapRptSideGrp_ExecInst) :: (("826",enc_opt encode_TradeAllocIndicator msg.f_TrdCapRptSideGrp_TradeAllocIndicator) :: (("237",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_TotalTakedown) :: (("119",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_SettlCurrAmt) :: (("582",enc_opt encode_CustOrderCapacity msg.f_TrdCapRptSideGrp_CustOrderCapacity) :: (("11",enc_opt encode_string msg.f_TrdCapRptSideGrp_ClOrdID) :: (("922",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_EndCash) :: (("921",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_StartCash) :: (("58",enc_opt encode_string msg.f_TrdCapRptSideGrp_Text) :: (("752",enc_opt encode_SideMultiLegReportingType msg.f_TrdCapRptSideGrp_SideMultiLegReportingType) :: (("625",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradingSessionSubID) :: (("381",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_GrossTradeAmt) :: (("66",enc_opt encode_string msg.f_TrdCapRptSideGrp_ListID) :: (("579",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradeInputDevice) :: (("529",enc_opt encode_OrderRestrictions msg.f_TrdCapRptSideGrp_OrderRestrictions) :: (("155",enc_opt encode_float msg.f_TrdCapRptSideGrp_SettlCurrFxRate) :: (("157",enc_opt encode_int msg.f_TrdCapRptSideGrp_NumDaysInterest) :: (("156",enc_opt encode_SettlCurrFxRateCalc msg.f_TrdCapRptSideGrp_SettlCurrFxRateCalc) :: (("355",enc_opt encode_string msg.f_TrdCapRptSideGrp_EncodedText) :: (("70",enc_opt encode_string msg.f_TrdCapRptSideGrp_AllocID) :: (("336",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradingSessionID) :: (("920",enc_opt encode_float_6 msg.f_TrdCapRptSideGrp_EndAccruedInterestAmt) :: (("120",enc_opt encode_Currency msg.f_TrdCapRptSideGrp_SettlCurrency) :: (("77",enc_opt encode_PositionEffect msg.f_TrdCapRptSideGrp_PositionEffect) :: (("15",enc_opt encode_Currency msg.f_TrdCapRptSideGrp_Currency) :: (("825",enc_opt encode_string msg.f_TrdCapRptSideGrp_ExchangeRule) :: []))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_TrdCapRptSideGrp_Parties) ((@) (enc_repeat encode_TrdAllocGrp "78" msg.f_TrdCapRptSideGrp_TrdAllocGrp) ((@) (enc_repeat encode_ClrInstGrp "576" msg.f_TrdCapRptSideGrp_ClrInstGrp) ((@) (enc_repeat encode_MiscFeesGrp "136" msg.f_TrdCapRptSideGrp_MiscFeesGrp) ((@) (enc_repeat encode_ContAmtGrp "518" msg.f_TrdCapRptSideGrp_ContAmtGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_TrdCapRptSideGrp_Stipulations) [])))))))
;;

let encode_LegOrdGrp (msg)  =
    (@) (encode_InstrumentLeg msg.f_LegOrdGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float_6 msg.f_LegOrdGrp_LegQty) :: (("564",enc_opt encode_char msg.f_LegOrdGrp_LegPositionEffect) :: (("587",enc_opt encode_char msg.f_LegOrdGrp_LegSettlType) :: (("566",enc_opt encode_float_6 msg.f_LegOrdGrp_LegPrice) :: (("654",enc_opt encode_string msg.f_LegOrdGrp_LegRefID) :: (("588",enc_opt encode_LocalMktDate msg.f_LegOrdGrp_LegSettlDate) :: (("690",enc_opt encode_LegSwapType msg.f_LegOrdGrp_LegSwapType) :: (("565",enc_opt encode_int msg.f_LegOrdGrp_LegCoveredOrUncovered) :: [])))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_LegOrdGrp_NestedParties) ((@) (enc_repeat encode_LegPreAllocGrp "670" msg.f_LegOrdGrp_LegPreAllocGrp) ((@) (enc_repeat encode_LegStipulations "683" msg.f_LegOrdGrp_LegStipulations) []))))
;;

let encode_SettlInstructionsData (msg)  =
    (@) (("172",enc_opt encode_SettlDeliveryType msg.f_SettlInstructionsData_SettlDeliveryType) :: (("171",enc_opt encode_string msg.f_SettlInstructionsData_StandInstDbID) :: (("170",enc_opt encode_string msg.f_SettlInstructionsData_StandInstDbName) :: (("169",enc_opt encode_StandInstDbType msg.f_SettlInstructionsData_StandInstDbType) :: [])))) ((@) (enc_repeat encode_DlvyInstGrp "85" msg.f_SettlInstructionsData_DlvyInstGrp) [])
;;

let encode_SideCrossOrdModGrp (msg)  =
    (@) (encode_OrderQtyData msg.f_SideCrossOrdModGrp_OrderQtyData) ((@) (encode_CommissionData msg.f_SideCrossOrdModGrp_CommissionData) ((@) (("377",enc_opt encode_SolicitedFlag msg.f_SideCrossOrdModGrp_SolicitedFlag) :: (("528",enc_opt encode_OrderCapacity msg.f_SideCrossOrdModGrp_OrderCapacity) :: (("582",enc_opt encode_CustOrderCapacity msg.f_SideCrossOrdModGrp_CustOrderCapacity) :: (("544",enc_opt encode_CashMargin msg.f_SideCrossOrdModGrp_CashMargin) :: (("659",enc_opt encode_string msg.f_SideCrossOrdModGrp_SideComplianceID) :: (("11",enc_opt encode_string msg.f_SideCrossOrdModGrp_ClOrdID) :: (("58",enc_opt encode_string msg.f_SideCrossOrdModGrp_Text) :: (("526",enc_opt encode_string msg.f_SideCrossOrdModGrp_SecondaryClOrdID) :: (("581",enc_opt encode_AccountType msg.f_SideCrossOrdModGrp_AccountType) :: (("589",enc_opt encode_DayBookingInst msg.f_SideCrossOrdModGrp_DayBookingInst) :: (("854",enc_opt encode_QtyType msg.f_SideCrossOrdModGrp_QtyType) :: (("635",enc_opt encode_ClearingFeeIndicator msg.f_SideCrossOrdModGrp_ClearingFeeIndicator) :: (("529",enc_opt encode_OrderRestrictions msg.f_SideCrossOrdModGrp_OrderRestrictions) :: (("203",enc_opt encode_CoveredOrUncovered msg.f_SideCrossOrdModGrp_CoveredOrUncovered) :: (("1",enc_opt encode_string msg.f_SideCrossOrdModGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_SideCrossOrdModGrp_AcctIDSource) :: (("591",enc_opt encode_PreallocMethod msg.f_SideCrossOrdModGrp_PreallocMethod) :: (("355",enc_opt encode_string msg.f_SideCrossOrdModGrp_EncodedText) :: (("229",enc_opt encode_LocalMktDate msg.f_SideCrossOrdModGrp_TradeOriginationDate) :: (("70",enc_opt encode_string msg.f_SideCrossOrdModGrp_AllocID) :: (("54",enc_opt encode_Side msg.f_SideCrossOrdModGrp_Side) :: (("354",enc_opt encode_int msg.f_SideCrossOrdModGrp_EncodedTextLen) :: (("590",enc_opt encode_BookingUnit msg.f_SideCrossOrdModGrp_BookingUnit) :: (("121",enc_opt encode_ForexReq msg.f_SideCrossOrdModGrp_ForexReq) :: (("120",enc_opt encode_Currency msg.f_SideCrossOrdModGrp_SettlCurrency) :: (("77",enc_opt encode_PositionEffect msg.f_SideCrossOrdModGrp_PositionEffect) :: (("583",enc_opt encode_string msg.f_SideCrossOrdModGrp_ClOrdLinkID) :: (("75",enc_opt encode_LocalMktDate msg.f_SideCrossOrdModGrp_TradeDate) :: (("775",enc_opt encode_BookingType msg.f_SideCrossOrdModGrp_BookingType) :: []))))))))))))))))))))))))))))) ((@) (enc_repeat encode_PreAllocGrp "78" msg.f_SideCrossOrdModGrp_PreAllocGrp) ((@) (enc_repeat encode_Parties "453" msg.f_SideCrossOrdModGrp_Parties) []))))
;;

let encode_QuotEntryGrp (msg)  =
    (@) (encode_Instrument msg.f_QuotEntryGrp_Instrument) ((@) (("633",enc_opt encode_float_6 msg.f_QuotEntryGrp_MidYield) :: (("631",enc_opt encode_float_6 msg.f_QuotEntryGrp_MidPx) :: (("62",enc_opt encode_UTCTimestamp msg.f_QuotEntryGrp_ValidUntilTime) :: (("40",enc_opt encode_OrdType msg.f_QuotEntryGrp_OrdType) :: (("642",enc_opt encode_float_6 msg.f_QuotEntryGrp_BidForwardPoints2) :: (("190",enc_opt encode_float_6 msg.f_QuotEntryGrp_OfferSpotRate) :: (("634",enc_opt encode_float_6 msg.f_QuotEntryGrp_OfferYield) :: (("189",enc_opt encode_float_6 msg.f_QuotEntryGrp_BidForwardPoints) :: (("625",enc_opt encode_string msg.f_QuotEntryGrp_TradingSessionSubID) :: (("188",enc_opt encode_float_6 msg.f_QuotEntryGrp_BidSpotRate) :: (("133",enc_opt encode_float_6 msg.f_QuotEntryGrp_OfferPx) :: (("135",enc_opt encode_float_6 msg.f_QuotEntryGrp_OfferSize) :: (("336",enc_opt encode_string msg.f_QuotEntryGrp_TradingSessionID) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotEntryGrp_SettlDate2) :: (("134",enc_opt encode_float_6 msg.f_QuotEntryGrp_BidSize) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotEntryGrp_TransactTime) :: (("192",enc_opt encode_float_6 msg.f_QuotEntryGrp_OrderQty2) :: (("15",enc_opt encode_Currency msg.f_QuotEntryGrp_Currency) :: (("299",enc_opt encode_string msg.f_QuotEntryGrp_QuoteEntryID) :: (("132",enc_opt encode_float_6 msg.f_QuotEntryGrp_BidPx) :: (("632",enc_opt encode_float_6 msg.f_QuotEntryGrp_BidYield) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotEntryGrp_SettlDate) :: (("191",enc_opt encode_float_6 msg.f_QuotEntryGrp_OfferForwardPoints) :: (("643",enc_opt encode_float_6 msg.f_QuotEntryGrp_OfferForwardPoints2) :: [])))))))))))))))))))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_QuotEntryGrp_InstrmtLegGrp) []))
;;

let encode_QuotEntryAckGrp (msg)  =
    (@) (encode_Instrument msg.f_QuotEntryAckGrp_Instrument) ((@) (("633",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_MidYield) :: (("631",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_MidPx) :: (("62",enc_opt encode_UTCTimestamp msg.f_QuotEntryAckGrp_ValidUntilTime) :: (("40",enc_opt encode_OrdType msg.f_QuotEntryAckGrp_OrdType) :: (("642",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_BidForwardPoints2) :: (("190",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OfferSpotRate) :: (("634",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OfferYield) :: (("189",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_BidForwardPoints) :: (("625",enc_opt encode_string msg.f_QuotEntryAckGrp_TradingSessionSubID) :: (("188",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_BidSpotRate) :: (("133",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OfferPx) :: (("135",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OfferSize) :: (("336",enc_opt encode_string msg.f_QuotEntryAckGrp_TradingSessionID) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotEntryAckGrp_SettlDate2) :: (("134",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_BidSize) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotEntryAckGrp_TransactTime) :: (("368",enc_opt encode_int msg.f_QuotEntryAckGrp_QuoteEntryRejectReason) :: (("192",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OrderQty2) :: (("15",enc_opt encode_Currency msg.f_QuotEntryAckGrp_Currency) :: (("299",enc_opt encode_string msg.f_QuotEntryAckGrp_QuoteEntryID) :: (("132",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_BidPx) :: (("632",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_BidYield) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotEntryAckGrp_SettlDate) :: (("191",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OfferForwardPoints) :: (("643",enc_opt encode_float_6 msg.f_QuotEntryAckGrp_OfferForwardPoints2) :: []))))))))))))))))))))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_QuotEntryAckGrp_InstrmtLegGrp) []))
;;

let encode_RelSymDerivSecGrp (msg)  =
    (@) (encode_InstrumentExtension msg.f_RelSymDerivSecGrp_InstrumentExtension) ((@) (encode_Instrument msg.f_RelSymDerivSecGrp_Instrument) ((@) (("625",enc_opt encode_string msg.f_RelSymDerivSecGrp_TradingSessionSubID) :: (("827",enc_opt encode_ExpirationCycle msg.f_RelSymDerivSecGrp_ExpirationCycle) :: (("354",enc_opt encode_int msg.f_RelSymDerivSecGrp_EncodedTextLen) :: (("15",enc_opt encode_Currency msg.f_RelSymDerivSecGrp_Currency) :: (("355",enc_opt encode_string msg.f_RelSymDerivSecGrp_EncodedText) :: (("336",enc_opt encode_string msg.f_RelSymDerivSecGrp_TradingSessionID) :: (("58",enc_opt encode_string msg.f_RelSymDerivSecGrp_Text) :: []))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_RelSymDerivSecGrp_InstrmtLegGrp) [])))
;;

let encode_RFQReqGrp (msg)  =
    (@) (encode_Instrument msg.f_RFQReqGrp_Instrument) ((@) (("625",enc_opt encode_string msg.f_RFQReqGrp_TradingSessionSubID) :: (("537",enc_opt encode_QuoteType msg.f_RFQReqGrp_QuoteType) :: (("140",enc_opt encode_float_6 msg.f_RFQReqGrp_PrevClosePx) :: (("303",enc_opt encode_QuoteRequestType msg.f_RFQReqGrp_QuoteRequestType) :: (("336",enc_opt encode_string msg.f_RFQReqGrp_TradingSessionID) :: []))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_RFQReqGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_RFQReqGrp_UndInstrmtGrp) [])))
;;

let encode_QuotCxlEntriesGrp (msg)  =
    (@) (encode_Instrument msg.f_QuotCxlEntriesGrp_Instrument) ((@) (encode_FinancingDetails msg.f_QuotCxlEntriesGrp_FinancingDetails) ((@) [] ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_QuotCxlEntriesGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_QuotCxlEntriesGrp_UndInstrmtGrp) []))))
;;

let encode_QuotReqGrp (msg)  =
    (@) (encode_YieldData msg.f_QuotReqGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_QuotReqGrp_SpreadOrBenchmarkCurveData) ((@) (encode_OrderQtyData msg.f_QuotReqGrp_OrderQtyData) ((@) (encode_FinancingDetails msg.f_QuotReqGrp_FinancingDetails) ((@) (encode_Instrument msg.f_QuotReqGrp_Instrument) ((@) (("40",enc_opt encode_OrdType msg.f_QuotReqGrp_OrdType) :: (("62",enc_opt encode_UTCTimestamp msg.f_QuotReqGrp_ValidUntilTime) :: (("303",enc_opt encode_QuoteRequestType msg.f_QuotReqGrp_QuoteRequestType) :: (("581",enc_opt encode_AccountType msg.f_QuotReqGrp_AccountType) :: (("625",enc_opt encode_string msg.f_QuotReqGrp_TradingSessionSubID) :: (("854",enc_opt encode_QtyType msg.f_QuotReqGrp_QtyType) :: (("44",enc_opt encode_float_6 msg.f_QuotReqGrp_Price) :: (("63",enc_opt encode_SettlType msg.f_QuotReqGrp_SettlType) :: (("537",enc_opt encode_QuoteType msg.f_QuotReqGrp_QuoteType) :: (("126",enc_opt encode_UTCTimestamp msg.f_QuotReqGrp_ExpireTime) :: (("423",enc_opt encode_PriceType msg.f_QuotReqGrp_PriceType) :: (("1",enc_opt encode_string msg.f_QuotReqGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_QuotReqGrp_AcctIDSource) :: (("692",enc_opt encode_QuotePriceType msg.f_QuotReqGrp_QuotePriceType) :: (("229",enc_opt encode_LocalMktDate msg.f_QuotReqGrp_TradeOriginationDate) :: (("336",enc_opt encode_string msg.f_QuotReqGrp_TradingSessionID) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotReqGrp_SettlDate2) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotReqGrp_TransactTime) :: (("192",enc_opt encode_float_6 msg.f_QuotReqGrp_OrderQty2) :: (("54",enc_opt encode_Side msg.f_QuotReqGrp_Side) :: (("640",enc_opt encode_float_6 msg.f_QuotReqGrp_Price2) :: (("15",enc_opt encode_Currency msg.f_QuotReqGrp_Currency) :: (("140",enc_opt encode_float_6 msg.f_QuotReqGrp_PrevClosePx) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotReqGrp_SettlDate) :: [])))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_QuotReqGrp_Parties) ((@) (enc_repeat encode_QuotQualGrp "735" msg.f_QuotReqGrp_QuotQualGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_QuotReqGrp_UndInstrmtGrp) ((@) (enc_repeat encode_QuotReqLegsGrp "555" msg.f_QuotReqGrp_QuotReqLegsGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_QuotReqGrp_Stipulations) []))))))))))
;;

let encode_QuotReqRjctGrp (msg)  =
    (@) (encode_YieldData msg.f_QuotReqRjctGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_QuotReqRjctGrp_SpreadOrBenchmarkCurveData) ((@) (encode_OrderQtyData msg.f_QuotReqRjctGrp_OrderQtyData) ((@) (encode_FinancingDetails msg.f_QuotReqRjctGrp_FinancingDetails) ((@) (encode_Instrument msg.f_QuotReqRjctGrp_Instrument) ((@) (("40",enc_opt encode_OrdType msg.f_QuotReqRjctGrp_OrdType) :: (("303",enc_opt encode_QuoteRequestType msg.f_QuotReqRjctGrp_QuoteRequestType) :: (("581",enc_opt encode_AccountType msg.f_QuotReqRjctGrp_AccountType) :: (("625",enc_opt encode_string msg.f_QuotReqRjctGrp_TradingSessionSubID) :: (("854",enc_opt encode_QtyType msg.f_QuotReqRjctGrp_QtyType) :: (("44",enc_opt encode_float_6 msg.f_QuotReqRjctGrp_Price) :: (("63",enc_opt encode_SettlType msg.f_QuotReqRjctGrp_SettlType) :: (("537",enc_opt encode_QuoteType msg.f_QuotReqRjctGrp_QuoteType) :: (("126",enc_opt encode_UTCTimestamp msg.f_QuotReqRjctGrp_ExpireTime) :: (("423",enc_opt encode_PriceType msg.f_QuotReqRjctGrp_PriceType) :: (("1",enc_opt encode_string msg.f_QuotReqRjctGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_QuotReqRjctGrp_AcctIDSource) :: (("692",enc_opt encode_QuotePriceType msg.f_QuotReqRjctGrp_QuotePriceType) :: (("229",enc_opt encode_LocalMktDate msg.f_QuotReqRjctGrp_TradeOriginationDate) :: (("336",enc_opt encode_string msg.f_QuotReqRjctGrp_TradingSessionID) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotReqRjctGrp_SettlDate2) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotReqRjctGrp_TransactTime) :: (("192",enc_opt encode_float_6 msg.f_QuotReqRjctGrp_OrderQty2) :: (("54",enc_opt encode_Side msg.f_QuotReqRjctGrp_Side) :: (("640",enc_opt encode_float_6 msg.f_QuotReqRjctGrp_Price2) :: (("15",enc_opt encode_Currency msg.f_QuotReqRjctGrp_Currency) :: (("140",enc_opt encode_float_6 msg.f_QuotReqRjctGrp_PrevClosePx) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotReqRjctGrp_SettlDate) :: []))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_QuotReqRjctGrp_Parties) ((@) (enc_repeat encode_QuotQualGrp "735" msg.f_QuotReqRjctGrp_QuotQualGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_QuotReqRjctGrp_UndInstrmtGrp) ((@) (enc_repeat encode_QuotReqLegsGrp "555" msg.f_QuotReqRjctGrp_QuotReqLegsGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_QuotReqRjctGrp_Stipulations) []))))))))))
;;

let encode_MDIncGrp (msg)  =
    (@) (encode_Instrument msg.f_MDIncGrp_Instrument) ((@) (("275",enc_opt encode_Exchange msg.f_MDIncGrp_MDMkt) :: (("58",enc_opt encode_string msg.f_MDIncGrp_Text) :: (("273",enc_opt encode_UTCTimeOnly msg.f_MDIncGrp_MDEntryTime) :: (("277",enc_opt encode_TradeCondition msg.f_MDIncGrp_TradeCondition) :: (("625",enc_opt encode_string msg.f_MDIncGrp_TradingSessionSubID) :: (("346",enc_opt encode_int msg.f_MDIncGrp_NumberOfOrders) :: (("289",enc_opt encode_string msg.f_MDIncGrp_MDEntrySeller) :: (("546",enc_opt encode_Scope msg.f_MDIncGrp_Scope) :: (("278",enc_opt encode_string msg.f_MDIncGrp_MDEntryID) :: (("290",enc_opt encode_int msg.f_MDIncGrp_MDEntryPositionNo) :: (("287",enc_opt encode_int msg.f_MDIncGrp_SellerDays) :: (("126",enc_opt encode_UTCTimestamp msg.f_MDIncGrp_ExpireTime) :: (("292",enc_opt encode_CorporateAction msg.f_MDIncGrp_CorporateAction) :: (("285",enc_opt encode_DeleteReason msg.f_MDIncGrp_DeleteReason) :: (("451",enc_opt encode_float_6 msg.f_MDIncGrp_NetChgPrevDay) :: (("270",enc_opt encode_float_6 msg.f_MDIncGrp_MDEntryPx) :: (("110",enc_opt encode_float_6 msg.f_MDIncGrp_MinQty) :: (("432",enc_opt encode_LocalMktDate msg.f_MDIncGrp_ExpireDate) :: (("355",enc_opt encode_string msg.f_MDIncGrp_EncodedText) :: (("279",enc_opt encode_MDUpdateAction msg.f_MDIncGrp_MDUpdateAction) :: (("272",enc_opt encode_UTCDateOnly msg.f_MDIncGrp_MDEntryDate) :: (("336",enc_opt encode_string msg.f_MDIncGrp_TradingSessionID) :: (("291",enc_opt encode_FinancialStatus msg.f_MDIncGrp_FinancialStatus) :: (("37",enc_opt encode_string msg.f_MDIncGrp_OrderID) :: (("280",enc_opt encode_string msg.f_MDIncGrp_MDEntryRefID) :: (("286",enc_opt encode_OpenCloseSettlFlag msg.f_MDIncGrp_OpenCloseSettlFlag) :: (("271",enc_opt encode_float_6 msg.f_MDIncGrp_MDEntrySize) :: (("274",enc_opt encode_TickDirection msg.f_MDIncGrp_TickDirection) :: (("354",enc_opt encode_int msg.f_MDIncGrp_EncodedTextLen) :: (("288",enc_opt encode_string msg.f_MDIncGrp_MDEntryBuyer) :: (("276",enc_opt encode_QuoteCondition msg.f_MDIncGrp_QuoteCondition) :: (("282",enc_opt encode_string msg.f_MDIncGrp_MDEntryOriginator) :: (("15",enc_opt encode_Currency msg.f_MDIncGrp_Currency) :: (("59",enc_opt encode_TimeInForce msg.f_MDIncGrp_TimeInForce) :: (("811",enc_opt encode_float msg.f_MDIncGrp_PriceDelta) :: (("283",enc_opt encode_string msg.f_MDIncGrp_LocationID) :: (("299",enc_opt encode_string msg.f_MDIncGrp_QuoteEntryID) :: (("18",enc_opt encode_ExecInst msg.f_MDIncGrp_ExecInst) :: (("284",enc_opt encode_string msg.f_MDIncGrp_DeskID) :: (("269",enc_opt encode_MDEntryType msg.f_MDIncGrp_MDEntryType) :: [])))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_MDIncGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_MDIncGrp_UndInstrmtGrp) [])))
;;

let encode_InstrmtMDReqGrp (msg)  =
    (@) (encode_Instrument msg.f_InstrmtMDReqGrp_Instrument) ((@) [] ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_InstrmtMDReqGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_InstrmtMDReqGrp_UndInstrmtGrp) [])))
;;

let encode_ListOrdGrp (msg)  =
    (@) (encode_DiscretionInstructions msg.f_ListOrdGrp_DiscretionInstructions) ((@) (encode_PegInstructions msg.f_ListOrdGrp_PegInstructions) ((@) (encode_Instrument msg.f_ListOrdGrp_Instrument) ((@) (encode_YieldData msg.f_ListOrdGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_ListOrdGrp_SpreadOrBenchmarkCurveData) ((@) (encode_OrderQtyData msg.f_ListOrdGrp_OrderQtyData) ((@) (encode_CommissionData msg.f_ListOrdGrp_CommissionData) ((@) (("377",enc_opt encode_SolicitedFlag msg.f_ListOrdGrp_SolicitedFlag) :: (("528",enc_opt encode_OrderCapacity msg.f_ListOrdGrp_OrderCapacity) :: (("401",enc_opt encode_SideValueInd msg.f_ListOrdGrp_SideValueInd) :: (("40",enc_opt encode_OrdType msg.f_ListOrdGrp_OrdType) :: (("210",enc_opt encode_float_6 msg.f_ListOrdGrp_MaxShow) :: (("526",enc_opt encode_string msg.f_ListOrdGrp_SecondaryClOrdID) :: (("581",enc_opt encode_AccountType msg.f_ListOrdGrp_AccountType) :: (("111",enc_opt encode_float_6 msg.f_ListOrdGrp_MaxFloor) :: (("81",enc_opt encode_ProcessCode msg.f_ListOrdGrp_ProcessCode) :: (("847",enc_opt encode_TargetStrategy msg.f_ListOrdGrp_TargetStrategy) :: (("854",enc_opt encode_QtyType msg.f_ListOrdGrp_QtyType) :: (("635",enc_opt encode_ClearingFeeIndicator msg.f_ListOrdGrp_ClearingFeeIndicator) :: (("427",enc_opt encode_GTBookingInst msg.f_ListOrdGrp_GTBookingInst) :: (("100",enc_opt encode_Exchange msg.f_ListOrdGrp_ExDestination) :: (("423",enc_opt encode_PriceType msg.f_ListOrdGrp_PriceType) :: (("1",enc_opt encode_string msg.f_ListOrdGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_ListOrdGrp_AcctIDSource) :: (("168",enc_opt encode_UTCTimestamp msg.f_ListOrdGrp_EffectiveTime) :: (("110",enc_opt encode_float_6 msg.f_ListOrdGrp_MinQty) :: (("591",enc_opt encode_PreallocMethod msg.f_ListOrdGrp_PreallocMethod) :: (("432",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_ExpireDate) :: (("229",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_TradeOriginationDate) :: (("193",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_SettlDate2) :: (("60",enc_opt encode_UTCTimestamp msg.f_ListOrdGrp_TransactTime) :: (("192",enc_opt encode_float_6 msg.f_ListOrdGrp_OrderQty2) :: (("54",enc_opt encode_Side msg.f_ListOrdGrp_Side) :: (("354",enc_opt encode_int msg.f_ListOrdGrp_EncodedTextLen) :: (("849",enc_opt encode_float_6 msg.f_ListOrdGrp_ParticipationRate) :: (("640",enc_opt encode_float_6 msg.f_ListOrdGrp_Price2) :: (("121",enc_opt encode_ForexReq msg.f_ListOrdGrp_ForexReq) :: (("59",enc_opt encode_TimeInForce msg.f_ListOrdGrp_TimeInForce) :: (("376",enc_opt encode_string msg.f_ListOrdGrp_ComplianceID) :: (("583",enc_opt encode_string msg.f_ListOrdGrp_ClOrdLinkID) :: (("140",enc_opt encode_float_6 msg.f_ListOrdGrp_PrevClosePx) :: (("18",enc_opt encode_ExecInst msg.f_ListOrdGrp_ExecInst) :: (("775",enc_opt encode_BookingType msg.f_ListOrdGrp_BookingType) :: (("494",enc_opt encode_string msg.f_ListOrdGrp_Designation) :: (("160",enc_opt encode_SettlInstMode msg.f_ListOrdGrp_SettlInstMode) :: (("117",enc_opt encode_string msg.f_ListOrdGrp_QuoteID) :: (("114",enc_opt encode_LocateReqd msg.f_ListOrdGrp_LocateReqd) :: (("582",enc_opt encode_CustOrderCapacity msg.f_ListOrdGrp_CustOrderCapacity) :: (("544",enc_opt encode_CashMargin msg.f_ListOrdGrp_CashMargin) :: (("11",enc_opt encode_string msg.f_ListOrdGrp_ClOrdID) :: (("58",enc_opt encode_string msg.f_ListOrdGrp_Text) :: (("67",enc_opt encode_int msg.f_ListOrdGrp_ListSeqNo) :: (("589",enc_opt encode_DayBookingInst msg.f_ListOrdGrp_DayBookingInst) :: (("99",enc_opt encode_float_6 msg.f_ListOrdGrp_StopPx) :: (("848",enc_opt encode_string msg.f_ListOrdGrp_TargetStrategyParameters) :: (("44",enc_opt encode_float_6 msg.f_ListOrdGrp_Price) :: (("63",enc_opt encode_SettlType msg.f_ListOrdGrp_SettlType) :: (("126",enc_opt encode_UTCTimestamp msg.f_ListOrdGrp_ExpireTime) :: (("529",enc_opt encode_OrderRestrictions msg.f_ListOrdGrp_OrderRestrictions) :: (("203",enc_opt encode_CoveredOrUncovered msg.f_ListOrdGrp_CoveredOrUncovered) :: (("355",enc_opt encode_string msg.f_ListOrdGrp_EncodedText) :: (("70",enc_opt encode_string msg.f_ListOrdGrp_AllocID) :: (("590",enc_opt encode_BookingUnit msg.f_ListOrdGrp_BookingUnit) :: (("23",enc_opt encode_string msg.f_ListOrdGrp_IOIID) :: (("120",enc_opt encode_Currency msg.f_ListOrdGrp_SettlCurrency) :: (("77",enc_opt encode_PositionEffect msg.f_ListOrdGrp_PositionEffect) :: (("15",enc_opt encode_Currency msg.f_ListOrdGrp_Currency) :: (("64",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_SettlDate) :: (("75",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_TradeDate) :: (("21",enc_opt encode_HandlInst msg.f_ListOrdGrp_HandlInst) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_ListOrdGrp_Parties) ((@) (enc_repeat encode_TrdgSesGrp "386" msg.f_ListOrdGrp_TrdgSesGrp) ((@) (enc_repeat encode_PreAllocGrp "78" msg.f_ListOrdGrp_PreAllocGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_ListOrdGrp_UndInstrmtGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_ListOrdGrp_Stipulations) []))))))))))))
;;

let encode_SecListGrp (msg)  =
    (@) (encode_YieldData msg.f_SecListGrp_YieldData) ((@) (encode_Instrument msg.f_SecListGrp_Instrument) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_SecListGrp_SpreadOrBenchmarkCurveData) ((@) (encode_InstrumentExtension msg.f_SecListGrp_InstrumentExtension) ((@) (encode_FinancingDetails msg.f_SecListGrp_FinancingDetails) ((@) (("355",enc_opt encode_string msg.f_SecListGrp_EncodedText) :: (("336",enc_opt encode_string msg.f_SecListGrp_TradingSessionID) :: (("58",enc_opt encode_string msg.f_SecListGrp_Text) :: (("562",enc_opt encode_float_6 msg.f_SecListGrp_MinTradeVol) :: (("625",enc_opt encode_string msg.f_SecListGrp_TradingSessionSubID) :: (("827",enc_opt encode_ExpirationCycle msg.f_SecListGrp_ExpirationCycle) :: (("354",enc_opt encode_int msg.f_SecListGrp_EncodedTextLen) :: (("561",enc_opt encode_float_6 msg.f_SecListGrp_RoundLot) :: (("15",enc_opt encode_Currency msg.f_SecListGrp_Currency) :: []))))))))) ((@) (enc_repeat encode_Stipulations "232" msg.f_SecListGrp_Stipulations) ((@) (enc_repeat encode_InstrmtLegSecListGrp "555" msg.f_SecListGrp_InstrmtLegSecListGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_SecListGrp_UndInstrmtGrp) []))))))))
;;

let encode_QuotSetAckGrp (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_QuotSetAckGrp_UnderlyingInstrument) ((@) (("302",enc_opt encode_string msg.f_QuotSetAckGrp_QuoteSetID) :: (("893",enc_opt encode_LastFragment msg.f_QuotSetAckGrp_LastFragment) :: (("304",enc_opt encode_int msg.f_QuotSetAckGrp_TotNoQuoteEntries) :: []))) ((@) (enc_repeat encode_QuotEntryAckGrp "295" msg.f_QuotSetAckGrp_QuotEntryAckGrp) []))
;;

let encode_QuotSetGrp (msg)  =
    (@) (encode_UnderlyingInstrument msg.f_QuotSetGrp_UnderlyingInstrument) ((@) (("302",enc_opt encode_string msg.f_QuotSetGrp_QuoteSetID) :: (("893",enc_opt encode_LastFragment msg.f_QuotSetGrp_LastFragment) :: (("367",enc_opt encode_UTCTimestamp msg.f_QuotSetGrp_QuoteSetValidUntilTime) :: (("304",enc_opt encode_int msg.f_QuotSetGrp_TotNoQuoteEntries) :: [])))) ((@) (enc_repeat encode_QuotEntryGrp "295" msg.f_QuotSetGrp_QuotEntryGrp) []))
;;

let encode_SettlInstGrp (msg)  =
    (@) (encode_SettlInstructionsData msg.f_SettlInstGrp_SettlInstructionsData) ((@) (("214",enc_opt encode_string msg.f_SettlInstGrp_SettlInstRefID) :: (("167",enc_opt encode_SecurityType msg.f_SettlInstGrp_SecurityType) :: (("489",enc_opt encode_string msg.f_SettlInstGrp_CardNumber) :: (("490",enc_opt encode_LocalMktDate msg.f_SettlInstGrp_CardExpDate) :: (("168",enc_opt encode_UTCTimestamp msg.f_SettlInstGrp_EffectiveTime) :: (("504",enc_opt encode_LocalMktDate msg.f_SettlInstGrp_PaymentDate) :: (("505",enc_opt encode_string msg.f_SettlInstGrp_PaymentRemitterID) :: (("163",enc_opt encode_SettlInstTransType msg.f_SettlInstGrp_SettlInstTransType) :: (("460",enc_opt encode_Product msg.f_SettlInstGrp_Product) :: (("461",enc_opt encode_string msg.f_SettlInstGrp_CFICode) :: (("488",enc_opt encode_string msg.f_SettlInstGrp_CardHolderName) :: (("54",enc_opt encode_Side msg.f_SettlInstGrp_Side) :: (("779",enc_opt encode_UTCTimestamp msg.f_SettlInstGrp_LastUpdateTime) :: (("492",enc_opt encode_PaymentMethod msg.f_SettlInstGrp_PaymentMethod) :: (("476",enc_opt encode_string msg.f_SettlInstGrp_PaymentRef) :: (("162",enc_opt encode_string msg.f_SettlInstGrp_SettlInstID) :: (("126",enc_opt encode_UTCTimestamp msg.f_SettlInstGrp_ExpireTime) :: (("491",enc_opt encode_string msg.f_SettlInstGrp_CardIssNum) :: (("503",enc_opt encode_LocalMktDate msg.f_SettlInstGrp_CardStartDate) :: []))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_SettlInstGrp_Parties) []))
;;

let encode_AllocGrp (msg)  =
    (@) (encode_CommissionData msg.f_AllocGrp_CommissionData) ((@) (encode_SettlInstructionsData msg.f_AllocGrp_SettlInstructionsData) ((@) (("742",enc_opt encode_float_6 msg.f_AllocGrp_AllocAccruedInterestAmt) :: (("737",enc_opt encode_float_6 msg.f_AllocGrp_AllocSettlCurrAmt) :: (("119",enc_opt encode_float_6 msg.f_AllocGrp_SettlCurrAmt) :: (("161",enc_opt encode_string msg.f_AllocGrp_AllocText) :: (("780",enc_opt encode_AllocSettlInstType msg.f_AllocGrp_AllocSettlInstType) :: (("81",enc_opt encode_ProcessCode msg.f_AllocGrp_ProcessCode) :: (("361",enc_opt encode_string msg.f_AllocGrp_EncodedAllocText) :: (("153",enc_opt encode_float_6 msg.f_AllocGrp_AllocAvgPx) :: (("360",enc_opt encode_int msg.f_AllocGrp_EncodedAllocTextLen) :: (("209",enc_opt encode_AllocHandlInst msg.f_AllocGrp_AllocHandlInst) :: (("155",enc_opt encode_float msg.f_AllocGrp_SettlCurrFxRate) :: (("154",enc_opt encode_float_6 msg.f_AllocGrp_AllocNetMoney) :: (("80",enc_opt encode_float_6 msg.f_AllocGrp_AllocQty) :: (("661",enc_opt encode_int msg.f_AllocGrp_AllocAcctIDSource) :: (("156",enc_opt encode_SettlCurrFxRateCalc msg.f_AllocGrp_SettlCurrFxRateCalc) :: (("79",enc_opt encode_string msg.f_AllocGrp_AllocAccount) :: (("366",enc_opt encode_float_6 msg.f_AllocGrp_AllocPrice) :: (("467",enc_opt encode_string msg.f_AllocGrp_IndividualAllocID) :: (("736",enc_opt encode_Currency msg.f_AllocGrp_AllocSettlCurrency) :: (("120",enc_opt encode_Currency msg.f_AllocGrp_SettlCurrency) :: (("208",enc_opt encode_NotifyBrokerOfCredit msg.f_AllocGrp_NotifyBrokerOfCredit) :: (("741",enc_opt encode_float_6 msg.f_AllocGrp_AllocInterestAtMaturity) :: (("573",enc_opt encode_MatchStatus msg.f_AllocGrp_MatchStatus) :: []))))))))))))))))))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_AllocGrp_NestedParties) ((@) (enc_repeat encode_MiscFeesGrp "136" msg.f_AllocGrp_MiscFeesGrp) ((@) (enc_repeat encode_ClrInstGrp "576" msg.f_AllocGrp_ClrInstGrp) [])))))
;;
