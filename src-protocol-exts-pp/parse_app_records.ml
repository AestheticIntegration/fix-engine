(* Aesthetic Integration copyright 2018 *)
open Full_app_records;;
open Parse_app_enums;;
open Parse_base_types;;
open Parse_datetime;;
open Parser_utils.Parser;;

let parse_TrdCollGrp (msg)  =
    opt msg "571" parse_string (fun msg f_TrdCollGrp_TradeReportID -> opt msg "897" parse_int (fun msg f_TrdCollGrp_NoTrades -> opt msg "818" parse_string (fun msg f_TrdCollGrp_SecondaryTradeReportID -> (ParseSuccess {
        f_TrdCollGrp_SecondaryTradeReportID = f_TrdCollGrp_SecondaryTradeReportID;
        f_TrdCollGrp_NoTrades = f_TrdCollGrp_NoTrades;
        f_TrdCollGrp_TradeReportID = f_TrdCollGrp_TradeReportID
    },msg)
    )
    )
    )
;;

let parse_ContraGrp (msg)  =
    opt msg "438" parse_UTCTimestamp (fun msg f_ContraGrp_ContraTradeTime -> opt msg "375" parse_string (fun msg f_ContraGrp_ContraBroker -> opt msg "655" parse_string (fun msg f_ContraGrp_ContraLegRefID -> opt msg "337" parse_string (fun msg f_ContraGrp_ContraTrader -> opt msg "382" parse_int (fun msg f_ContraGrp_NoContraBrokers -> opt msg "437" parse_float (fun msg f_ContraGrp_ContraTradeQty -> (ParseSuccess {
        f_ContraGrp_ContraTradeQty = f_ContraGrp_ContraTradeQty;
        f_ContraGrp_NoContraBrokers = f_ContraGrp_NoContraBrokers;
        f_ContraGrp_ContraTrader = f_ContraGrp_ContraTrader;
        f_ContraGrp_ContraLegRefID = f_ContraGrp_ContraLegRefID;
        f_ContraGrp_ContraBroker = f_ContraGrp_ContraBroker;
        f_ContraGrp_ContraTradeTime = f_ContraGrp_ContraTradeTime
    },msg)
    )
    )
    )
    )
    )
    )
;;

let parse_ExecsGrp (msg)  =
    opt msg "124" parse_int (fun msg f_ExecsGrp_NoExecs -> opt msg "17" parse_string (fun msg f_ExecsGrp_ExecID -> (ParseSuccess {
        f_ExecsGrp_ExecID = f_ExecsGrp_ExecID;
        f_ExecsGrp_NoExecs = f_ExecsGrp_NoExecs
    },msg)
    )
    )
;;

let parse_TrdgSesGrp (msg)  =
    opt msg "336" parse_string (fun msg f_TrdgSesGrp_TradingSessionID -> opt msg "625" parse_string (fun msg f_TrdgSesGrp_TradingSessionSubID -> opt msg "386" parse_int (fun msg f_TrdgSesGrp_NoTradingSessions -> (ParseSuccess {
        f_TrdgSesGrp_NoTradingSessions = f_TrdgSesGrp_NoTradingSessions;
        f_TrdgSesGrp_TradingSessionSubID = f_TrdgSesGrp_TradingSessionSubID;
        f_TrdgSesGrp_TradingSessionID = f_TrdgSesGrp_TradingSessionID
    },msg)
    )
    )
    )
;;

let parse_MDFullGrp (msg)  =
    opt msg "269" parse_MDEntryType (fun msg f_MDFullGrp_MDEntryType -> opt msg "284" parse_string (fun msg f_MDFullGrp_DeskID -> opt msg "18" parse_ExecInst (fun msg f_MDFullGrp_ExecInst -> opt msg "299" parse_string (fun msg f_MDFullGrp_QuoteEntryID -> opt msg "283" parse_string (fun msg f_MDFullGrp_LocationID -> opt msg "811" parse_float (fun msg f_MDFullGrp_PriceDelta -> opt msg "59" parse_TimeInForce (fun msg f_MDFullGrp_TimeInForce -> opt msg "15" parse_Currency (fun msg f_MDFullGrp_Currency -> opt msg "282" parse_string (fun msg f_MDFullGrp_MDEntryOriginator -> opt msg "276" parse_QuoteCondition (fun msg f_MDFullGrp_QuoteCondition -> opt msg "288" parse_string (fun msg f_MDFullGrp_MDEntryBuyer -> opt msg "354" parse_int (fun msg f_MDFullGrp_EncodedTextLen -> opt msg "274" parse_TickDirection (fun msg f_MDFullGrp_TickDirection -> opt msg "271" parse_float (fun msg f_MDFullGrp_MDEntrySize -> opt msg "286" parse_OpenCloseSettlFlag (fun msg f_MDFullGrp_OpenCloseSettlFlag -> opt msg "37" parse_string (fun msg f_MDFullGrp_OrderID -> opt msg "336" parse_string (fun msg f_MDFullGrp_TradingSessionID -> opt msg "272" parse_UTCDateOnly (fun msg f_MDFullGrp_MDEntryDate -> opt msg "355" parse_string (fun msg f_MDFullGrp_EncodedText -> opt msg "432" parse_LocalMktDate (fun msg f_MDFullGrp_ExpireDate -> opt msg "110" parse_float (fun msg f_MDFullGrp_MinQty -> opt msg "270" parse_float (fun msg f_MDFullGrp_MDEntryPx -> opt msg "126" parse_UTCTimestamp (fun msg f_MDFullGrp_ExpireTime -> opt msg "287" parse_int (fun msg f_MDFullGrp_SellerDays -> opt msg "290" parse_int (fun msg f_MDFullGrp_MDEntryPositionNo -> opt msg "546" parse_Scope (fun msg f_MDFullGrp_Scope -> opt msg "289" parse_string (fun msg f_MDFullGrp_MDEntrySeller -> opt msg "346" parse_int (fun msg f_MDFullGrp_NumberOfOrders -> opt msg "625" parse_string (fun msg f_MDFullGrp_TradingSessionSubID -> opt msg "268" parse_int (fun msg f_MDFullGrp_NoMDEntries -> opt msg "277" parse_TradeCondition (fun msg f_MDFullGrp_TradeCondition -> opt msg "273" parse_UTCTimeOnly (fun msg f_MDFullGrp_MDEntryTime -> opt msg "58" parse_string (fun msg f_MDFullGrp_Text -> opt msg "275" parse_Exchange (fun msg f_MDFullGrp_MDMkt -> (ParseSuccess {
        f_MDFullGrp_MDMkt = f_MDFullGrp_MDMkt;
        f_MDFullGrp_Text = f_MDFullGrp_Text;
        f_MDFullGrp_MDEntryTime = f_MDFullGrp_MDEntryTime;
        f_MDFullGrp_TradeCondition = f_MDFullGrp_TradeCondition;
        f_MDFullGrp_NoMDEntries = f_MDFullGrp_NoMDEntries;
        f_MDFullGrp_TradingSessionSubID = f_MDFullGrp_TradingSessionSubID;
        f_MDFullGrp_NumberOfOrders = f_MDFullGrp_NumberOfOrders;
        f_MDFullGrp_MDEntrySeller = f_MDFullGrp_MDEntrySeller;
        f_MDFullGrp_Scope = f_MDFullGrp_Scope;
        f_MDFullGrp_MDEntryPositionNo = f_MDFullGrp_MDEntryPositionNo;
        f_MDFullGrp_SellerDays = f_MDFullGrp_SellerDays;
        f_MDFullGrp_ExpireTime = f_MDFullGrp_ExpireTime;
        f_MDFullGrp_MDEntryPx = f_MDFullGrp_MDEntryPx;
        f_MDFullGrp_MinQty = f_MDFullGrp_MinQty;
        f_MDFullGrp_ExpireDate = f_MDFullGrp_ExpireDate;
        f_MDFullGrp_EncodedText = f_MDFullGrp_EncodedText;
        f_MDFullGrp_MDEntryDate = f_MDFullGrp_MDEntryDate;
        f_MDFullGrp_TradingSessionID = f_MDFullGrp_TradingSessionID;
        f_MDFullGrp_OrderID = f_MDFullGrp_OrderID;
        f_MDFullGrp_OpenCloseSettlFlag = f_MDFullGrp_OpenCloseSettlFlag;
        f_MDFullGrp_MDEntrySize = f_MDFullGrp_MDEntrySize;
        f_MDFullGrp_TickDirection = f_MDFullGrp_TickDirection;
        f_MDFullGrp_EncodedTextLen = f_MDFullGrp_EncodedTextLen;
        f_MDFullGrp_MDEntryBuyer = f_MDFullGrp_MDEntryBuyer;
        f_MDFullGrp_QuoteCondition = f_MDFullGrp_QuoteCondition;
        f_MDFullGrp_MDEntryOriginator = f_MDFullGrp_MDEntryOriginator;
        f_MDFullGrp_Currency = f_MDFullGrp_Currency;
        f_MDFullGrp_TimeInForce = f_MDFullGrp_TimeInForce;
        f_MDFullGrp_PriceDelta = f_MDFullGrp_PriceDelta;
        f_MDFullGrp_LocationID = f_MDFullGrp_LocationID;
        f_MDFullGrp_QuoteEntryID = f_MDFullGrp_QuoteEntryID;
        f_MDFullGrp_ExecInst = f_MDFullGrp_ExecInst;
        f_MDFullGrp_DeskID = f_MDFullGrp_DeskID;
        f_MDFullGrp_MDEntryType = f_MDFullGrp_MDEntryType
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_CompIDStatGrp (msg)  =
    opt msg "928" parse_StatusValue (fun msg f_CompIDStatGrp_StatusValue -> opt msg "284" parse_string (fun msg f_CompIDStatGrp_DeskID -> opt msg "930" parse_string (fun msg f_CompIDStatGrp_RefCompID -> opt msg "936" parse_int (fun msg f_CompIDStatGrp_NoCompIDs -> opt msg "931" parse_string (fun msg f_CompIDStatGrp_RefSubID -> opt msg "283" parse_string (fun msg f_CompIDStatGrp_LocationID -> opt msg "929" parse_string (fun msg f_CompIDStatGrp_StatusText -> (ParseSuccess {
        f_CompIDStatGrp_StatusText = f_CompIDStatGrp_StatusText;
        f_CompIDStatGrp_LocationID = f_CompIDStatGrp_LocationID;
        f_CompIDStatGrp_RefSubID = f_CompIDStatGrp_RefSubID;
        f_CompIDStatGrp_NoCompIDs = f_CompIDStatGrp_NoCompIDs;
        f_CompIDStatGrp_RefCompID = f_CompIDStatGrp_RefCompID;
        f_CompIDStatGrp_DeskID = f_CompIDStatGrp_DeskID;
        f_CompIDStatGrp_StatusValue = f_CompIDStatGrp_StatusValue
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_PtysSubGrp (msg)  =
    opt msg "802" parse_int (fun msg f_PtysSubGrp_NoPartySubIDs -> opt msg "523" parse_string (fun msg f_PtysSubGrp_PartySubID -> opt msg "803" parse_PartySubIDType (fun msg f_PtysSubGrp_PartySubIDType -> (ParseSuccess {
        f_PtysSubGrp_PartySubIDType = f_PtysSubGrp_PartySubIDType;
        f_PtysSubGrp_PartySubID = f_PtysSubGrp_PartySubID;
        f_PtysSubGrp_NoPartySubIDs = f_PtysSubGrp_NoPartySubIDs
    },msg)
    )
    )
    )
;;

let parse_IOIQualGrp (msg)  =
    opt msg "104" parse_IOIQualifier (fun msg f_IOIQualGrp_IOIQualifier -> opt msg "199" parse_int (fun msg f_IOIQualGrp_NoIOIQualifiers -> (ParseSuccess {
        f_IOIQualGrp_NoIOIQualifiers = f_IOIQualGrp_NoIOIQualifiers;
        f_IOIQualGrp_IOIQualifier = f_IOIQualGrp_IOIQualifier
    },msg)
    )
    )
;;

let parse_RgstDistInstGrp (msg)  =
    opt msg "502" parse_string (fun msg f_RgstDistInstGrp_CashDistribAgentAcctName -> opt msg "512" parse_float (fun msg f_RgstDistInstGrp_DistribPercentage -> opt msg "498" parse_string (fun msg f_RgstDistInstGrp_CashDistribAgentName -> opt msg "478" parse_Currency (fun msg f_RgstDistInstGrp_CashDistribCurr -> opt msg "477" parse_DistribPaymentMethod (fun msg f_RgstDistInstGrp_DistribPaymentMethod -> opt msg "500" parse_string (fun msg f_RgstDistInstGrp_CashDistribAgentAcctNumber -> opt msg "501" parse_string (fun msg f_RgstDistInstGrp_CashDistribPayRef -> opt msg "499" parse_string (fun msg f_RgstDistInstGrp_CashDistribAgentCode -> opt msg "510" parse_int (fun msg f_RgstDistInstGrp_NoDistribInsts -> (ParseSuccess {
        f_RgstDistInstGrp_NoDistribInsts = f_RgstDistInstGrp_NoDistribInsts;
        f_RgstDistInstGrp_CashDistribAgentCode = f_RgstDistInstGrp_CashDistribAgentCode;
        f_RgstDistInstGrp_CashDistribPayRef = f_RgstDistInstGrp_CashDistribPayRef;
        f_RgstDistInstGrp_CashDistribAgentAcctNumber = f_RgstDistInstGrp_CashDistribAgentAcctNumber;
        f_RgstDistInstGrp_DistribPaymentMethod = f_RgstDistInstGrp_DistribPaymentMethod;
        f_RgstDistInstGrp_CashDistribCurr = f_RgstDistInstGrp_CashDistribCurr;
        f_RgstDistInstGrp_CashDistribAgentName = f_RgstDistInstGrp_CashDistribAgentName;
        f_RgstDistInstGrp_DistribPercentage = f_RgstDistInstGrp_DistribPercentage;
        f_RgstDistInstGrp_CashDistribAgentAcctName = f_RgstDistInstGrp_CashDistribAgentAcctName
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_MDReqGrp (msg)  =
    opt msg "269" parse_MDEntryType (fun msg f_MDReqGrp_MDEntryType -> opt msg "267" parse_int (fun msg f_MDReqGrp_NoMDEntryTypes -> (ParseSuccess {
        f_MDReqGrp_NoMDEntryTypes = f_MDReqGrp_NoMDEntryTypes;
        f_MDReqGrp_MDEntryType = f_MDReqGrp_MDEntryType
    },msg)
    )
    )
;;

let parse_LinesOfTextGrp (msg)  =
    opt msg "58" parse_string (fun msg f_LinesOfTextGrp_Text -> opt msg "355" parse_string (fun msg f_LinesOfTextGrp_EncodedText -> opt msg "33" parse_int (fun msg f_LinesOfTextGrp_NoLinesOfText -> opt msg "354" parse_int (fun msg f_LinesOfTextGrp_EncodedTextLen -> (ParseSuccess {
        f_LinesOfTextGrp_EncodedTextLen = f_LinesOfTextGrp_EncodedTextLen;
        f_LinesOfTextGrp_NoLinesOfText = f_LinesOfTextGrp_NoLinesOfText;
        f_LinesOfTextGrp_EncodedText = f_LinesOfTextGrp_EncodedText;
        f_LinesOfTextGrp_Text = f_LinesOfTextGrp_Text
    },msg)
    )
    )
    )
    )
;;

let parse_OrderQtyData (msg)  =
    opt msg "38" parse_float (fun msg f_OrderQtyData_OrderQty -> opt msg "152" parse_float (fun msg f_OrderQtyData_CashOrderQty -> opt msg "516" parse_float (fun msg f_OrderQtyData_OrderPercent -> opt msg "469" parse_float (fun msg f_OrderQtyData_RoundingModulus -> opt msg "468" parse_RoundingDirection (fun msg f_OrderQtyData_RoundingDirection -> (ParseSuccess {
        f_OrderQtyData_RoundingDirection = f_OrderQtyData_RoundingDirection;
        f_OrderQtyData_RoundingModulus = f_OrderQtyData_RoundingModulus;
        f_OrderQtyData_OrderPercent = f_OrderQtyData_OrderPercent;
        f_OrderQtyData_CashOrderQty = f_OrderQtyData_CashOrderQty;
        f_OrderQtyData_OrderQty = f_OrderQtyData_OrderQty
    },msg)
    )
    )
    )
    )
    )
;;

let parse_SettlPtysSubGrp (msg)  =
    opt msg "785" parse_string (fun msg f_SettlPtysSubGrp_SettlPartySubID -> opt msg "801" parse_int (fun msg f_SettlPtysSubGrp_NoSettlPartySubIDs -> opt msg "786" parse_int (fun msg f_SettlPtysSubGrp_SettlPartySubIDType -> (ParseSuccess {
        f_SettlPtysSubGrp_SettlPartySubIDType = f_SettlPtysSubGrp_SettlPartySubIDType;
        f_SettlPtysSubGrp_NoSettlPartySubIDs = f_SettlPtysSubGrp_NoSettlPartySubIDs;
        f_SettlPtysSubGrp_SettlPartySubID = f_SettlPtysSubGrp_SettlPartySubID
    },msg)
    )
    )
    )
;;

let parse_ExecAllocGrp (msg)  =
    opt msg "29" parse_LastCapacity (fun msg f_ExecAllocGrp_LastCapacity -> opt msg "527" parse_string (fun msg f_ExecAllocGrp_SecondaryExecID -> opt msg "32" parse_float (fun msg f_ExecAllocGrp_LastQty -> opt msg "669" parse_float (fun msg f_ExecAllocGrp_LastParPx -> opt msg "124" parse_int (fun msg f_ExecAllocGrp_NoExecs -> opt msg "17" parse_string (fun msg f_ExecAllocGrp_ExecID -> opt msg "31" parse_float (fun msg f_ExecAllocGrp_LastPx -> (ParseSuccess {
        f_ExecAllocGrp_LastPx = f_ExecAllocGrp_LastPx;
        f_ExecAllocGrp_ExecID = f_ExecAllocGrp_ExecID;
        f_ExecAllocGrp_NoExecs = f_ExecAllocGrp_NoExecs;
        f_ExecAllocGrp_LastParPx = f_ExecAllocGrp_LastParPx;
        f_ExecAllocGrp_LastQty = f_ExecAllocGrp_LastQty;
        f_ExecAllocGrp_SecondaryExecID = f_ExecAllocGrp_SecondaryExecID;
        f_ExecAllocGrp_LastCapacity = f_ExecAllocGrp_LastCapacity
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_NstdPtys3SubGrp (msg)  =
    opt msg "952" parse_int (fun msg f_NstdPtys3SubGrp_NoNested3PartySubIDs -> opt msg "954" parse_int (fun msg f_NstdPtys3SubGrp_Nested3PartySubIDType -> opt msg "953" parse_string (fun msg f_NstdPtys3SubGrp_Nested3PartySubID -> (ParseSuccess {
        f_NstdPtys3SubGrp_Nested3PartySubID = f_NstdPtys3SubGrp_Nested3PartySubID;
        f_NstdPtys3SubGrp_Nested3PartySubIDType = f_NstdPtys3SubGrp_Nested3PartySubIDType;
        f_NstdPtys3SubGrp_NoNested3PartySubIDs = f_NstdPtys3SubGrp_NoNested3PartySubIDs
    },msg)
    )
    )
    )
;;

let parse_Hop (msg)  =
    opt msg "630" parse_int (fun msg f_Hop_HopRefID -> opt msg "628" parse_string (fun msg f_Hop_HopCompID -> opt msg "627" parse_int (fun msg f_Hop_NoHops -> opt msg "629" parse_UTCTimestamp (fun msg f_Hop_HopSendingTime -> (ParseSuccess {
        f_Hop_HopSendingTime = f_Hop_HopSendingTime;
        f_Hop_NoHops = f_Hop_NoHops;
        f_Hop_HopCompID = f_Hop_HopCompID;
        f_Hop_HopRefID = f_Hop_HopRefID
    },msg)
    )
    )
    )
    )
;;

let parse_ClrInstGrp (msg)  =
    opt msg "577" parse_ClearingInstruction (fun msg f_ClrInstGrp_ClearingInstruction -> opt msg "576" parse_int (fun msg f_ClrInstGrp_NoClearingInstructions -> (ParseSuccess {
        f_ClrInstGrp_NoClearingInstructions = f_ClrInstGrp_NoClearingInstructions;
        f_ClrInstGrp_ClearingInstruction = f_ClrInstGrp_ClearingInstruction
    },msg)
    )
    )
;;

let parse_BidDescReqGrp (msg)  =
    opt msg "405" parse_float (fun msg f_BidDescReqGrp_EFPTrackingError -> opt msg "403" parse_float (fun msg f_BidDescReqGrp_LiquidityPctHigh -> opt msg "404" parse_float (fun msg f_BidDescReqGrp_LiquidityValue -> opt msg "400" parse_string (fun msg f_BidDescReqGrp_BidDescriptor -> opt msg "407" parse_float (fun msg f_BidDescReqGrp_OutsideIndexPct -> opt msg "401" parse_SideValueInd (fun msg f_BidDescReqGrp_SideValueInd -> opt msg "399" parse_BidDescriptorType (fun msg f_BidDescReqGrp_BidDescriptorType -> opt msg "408" parse_float (fun msg f_BidDescReqGrp_ValueOfFutures -> opt msg "406" parse_float (fun msg f_BidDescReqGrp_FairValue -> opt msg "402" parse_float (fun msg f_BidDescReqGrp_LiquidityPctLow -> opt msg "398" parse_int (fun msg f_BidDescReqGrp_NoBidDescriptors -> opt msg "441" parse_int (fun msg f_BidDescReqGrp_LiquidityNumSecurities -> (ParseSuccess {
        f_BidDescReqGrp_LiquidityNumSecurities = f_BidDescReqGrp_LiquidityNumSecurities;
        f_BidDescReqGrp_NoBidDescriptors = f_BidDescReqGrp_NoBidDescriptors;
        f_BidDescReqGrp_LiquidityPctLow = f_BidDescReqGrp_LiquidityPctLow;
        f_BidDescReqGrp_FairValue = f_BidDescReqGrp_FairValue;
        f_BidDescReqGrp_ValueOfFutures = f_BidDescReqGrp_ValueOfFutures;
        f_BidDescReqGrp_BidDescriptorType = f_BidDescReqGrp_BidDescriptorType;
        f_BidDescReqGrp_SideValueInd = f_BidDescReqGrp_SideValueInd;
        f_BidDescReqGrp_OutsideIndexPct = f_BidDescReqGrp_OutsideIndexPct;
        f_BidDescReqGrp_BidDescriptor = f_BidDescReqGrp_BidDescriptor;
        f_BidDescReqGrp_LiquidityValue = f_BidDescReqGrp_LiquidityValue;
        f_BidDescReqGrp_LiquidityPctHigh = f_BidDescReqGrp_LiquidityPctHigh;
        f_BidDescReqGrp_EFPTrackingError = f_BidDescReqGrp_EFPTrackingError
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_CpctyConfGrp (msg)  =
    opt msg "529" parse_OrderRestrictions (fun msg f_CpctyConfGrp_OrderRestrictions -> opt msg "863" parse_float (fun msg f_CpctyConfGrp_OrderCapacityQty -> opt msg "862" parse_int (fun msg f_CpctyConfGrp_NoCapacities -> opt msg "528" parse_OrderCapacity (fun msg f_CpctyConfGrp_OrderCapacity -> (ParseSuccess {
        f_CpctyConfGrp_OrderCapacity = f_CpctyConfGrp_OrderCapacity;
        f_CpctyConfGrp_NoCapacities = f_CpctyConfGrp_NoCapacities;
        f_CpctyConfGrp_OrderCapacityQty = f_CpctyConfGrp_OrderCapacityQty;
        f_CpctyConfGrp_OrderRestrictions = f_CpctyConfGrp_OrderRestrictions
    },msg)
    )
    )
    )
    )
;;

let parse_NstdPtysSubGrp (msg)  =
    opt msg "804" parse_int (fun msg f_NstdPtysSubGrp_NoNestedPartySubIDs -> opt msg "545" parse_string (fun msg f_NstdPtysSubGrp_NestedPartySubID -> opt msg "805" parse_int (fun msg f_NstdPtysSubGrp_NestedPartySubIDType -> (ParseSuccess {
        f_NstdPtysSubGrp_NestedPartySubIDType = f_NstdPtysSubGrp_NestedPartySubIDType;
        f_NstdPtysSubGrp_NestedPartySubID = f_NstdPtysSubGrp_NestedPartySubID;
        f_NstdPtysSubGrp_NoNestedPartySubIDs = f_NstdPtysSubGrp_NoNestedPartySubIDs
    },msg)
    )
    )
    )
;;

let parse_SecAltIDGrp (msg)  =
    opt msg "455" parse_string (fun msg f_SecAltIDGrp_SecurityAltID -> opt msg "456" parse_string (fun msg f_SecAltIDGrp_SecurityAltIDSource -> opt msg "454" parse_int (fun msg f_SecAltIDGrp_NoSecurityAltID -> (ParseSuccess {
        f_SecAltIDGrp_NoSecurityAltID = f_SecAltIDGrp_NoSecurityAltID;
        f_SecAltIDGrp_SecurityAltIDSource = f_SecAltIDGrp_SecurityAltIDSource;
        f_SecAltIDGrp_SecurityAltID = f_SecAltIDGrp_SecurityAltID
    },msg)
    )
    )
    )
;;

let parse_UndSecAltIDGrp (msg)  =
    opt msg "459" parse_string (fun msg f_UndSecAltIDGrp_UnderlyingSecurityAltIDSource -> opt msg "458" parse_string (fun msg f_UndSecAltIDGrp_UnderlyingSecurityAltID -> opt msg "457" parse_int (fun msg f_UndSecAltIDGrp_NoUnderlyingSecurityAltID -> (ParseSuccess {
        f_UndSecAltIDGrp_NoUnderlyingSecurityAltID = f_UndSecAltIDGrp_NoUnderlyingSecurityAltID;
        f_UndSecAltIDGrp_UnderlyingSecurityAltID = f_UndSecAltIDGrp_UnderlyingSecurityAltID;
        f_UndSecAltIDGrp_UnderlyingSecurityAltIDSource = f_UndSecAltIDGrp_UnderlyingSecurityAltIDSource
    },msg)
    )
    )
    )
;;

let parse_Stipulations (msg)  =
    opt msg "232" parse_int (fun msg f_Stipulations_NoStipulations -> opt msg "234" parse_string (fun msg f_Stipulations_StipulationValue -> opt msg "233" parse_StipulationType (fun msg f_Stipulations_StipulationType -> (ParseSuccess {
        f_Stipulations_StipulationType = f_Stipulations_StipulationType;
        f_Stipulations_StipulationValue = f_Stipulations_StipulationValue;
        f_Stipulations_NoStipulations = f_Stipulations_NoStipulations
    },msg)
    )
    )
    )
;;

let parse_LegBenchmarkCurveData (msg)  =
    opt msg "679" parse_float (fun msg f_LegBenchmarkCurveData_LegBenchmarkPrice -> opt msg "677" parse_string (fun msg f_LegBenchmarkCurveData_LegBenchmarkCurveName -> opt msg "678" parse_string (fun msg f_LegBenchmarkCurveData_LegBenchmarkCurvePoint -> opt msg "676" parse_Currency (fun msg f_LegBenchmarkCurveData_LegBenchmarkCurveCurrency -> opt msg "680" parse_int (fun msg f_LegBenchmarkCurveData_LegBenchmarkPriceType -> (ParseSuccess {
        f_LegBenchmarkCurveData_LegBenchmarkPriceType = f_LegBenchmarkCurveData_LegBenchmarkPriceType;
        f_LegBenchmarkCurveData_LegBenchmarkCurveCurrency = f_LegBenchmarkCurveData_LegBenchmarkCurveCurrency;
        f_LegBenchmarkCurveData_LegBenchmarkCurvePoint = f_LegBenchmarkCurveData_LegBenchmarkCurvePoint;
        f_LegBenchmarkCurveData_LegBenchmarkCurveName = f_LegBenchmarkCurveData_LegBenchmarkCurveName;
        f_LegBenchmarkCurveData_LegBenchmarkPrice = f_LegBenchmarkCurveData_LegBenchmarkPrice
    },msg)
    )
    )
    )
    )
    )
;;

let parse_RoutingGrp (msg)  =
    opt msg "217" parse_string (fun msg f_RoutingGrp_RoutingID -> opt msg "215" parse_int (fun msg f_RoutingGrp_NoRoutingIDs -> opt msg "216" parse_RoutingType (fun msg f_RoutingGrp_RoutingType -> (ParseSuccess {
        f_RoutingGrp_RoutingType = f_RoutingGrp_RoutingType;
        f_RoutingGrp_NoRoutingIDs = f_RoutingGrp_NoRoutingIDs;
        f_RoutingGrp_RoutingID = f_RoutingGrp_RoutingID
    },msg)
    )
    )
    )
;;

let parse_LogonMsgTypes (msg)  =
    opt msg "372" parse_string (fun msg f_LogonMsgTypes_RefMsgType -> opt msg "384" parse_int (fun msg f_LogonMsgTypes_NoMsgTypes -> opt msg "385" parse_MsgDirection (fun msg f_LogonMsgTypes_MsgDirection -> (ParseSuccess {
        f_LogonMsgTypes_MsgDirection = f_LogonMsgTypes_MsgDirection;
        f_LogonMsgTypes_NoMsgTypes = f_LogonMsgTypes_NoMsgTypes;
        f_LogonMsgTypes_RefMsgType = f_LogonMsgTypes_RefMsgType
    },msg)
    )
    )
    )
;;

let parse_SecTypesGrp (msg)  =
    opt msg "461" parse_string (fun msg f_SecTypesGrp_CFICode -> opt msg "762" parse_string (fun msg f_SecTypesGrp_SecuritySubType -> opt msg "460" parse_Product (fun msg f_SecTypesGrp_Product -> opt msg "558" parse_int (fun msg f_SecTypesGrp_NoSecurityTypes -> opt msg "167" parse_SecurityType (fun msg f_SecTypesGrp_SecurityType -> (ParseSuccess {
        f_SecTypesGrp_SecurityType = f_SecTypesGrp_SecurityType;
        f_SecTypesGrp_NoSecurityTypes = f_SecTypesGrp_NoSecurityTypes;
        f_SecTypesGrp_Product = f_SecTypesGrp_Product;
        f_SecTypesGrp_SecuritySubType = f_SecTypesGrp_SecuritySubType;
        f_SecTypesGrp_CFICode = f_SecTypesGrp_CFICode
    },msg)
    )
    )
    )
    )
    )
;;

let parse_QuotQualGrp (msg)  =
    opt msg "695" parse_char (fun msg f_QuotQualGrp_QuoteQualifier -> opt msg "735" parse_int (fun msg f_QuotQualGrp_NoQuoteQualifiers -> (ParseSuccess {
        f_QuotQualGrp_NoQuoteQualifiers = f_QuotQualGrp_NoQuoteQualifiers;
        f_QuotQualGrp_QuoteQualifier = f_QuotQualGrp_QuoteQualifier
    },msg)
    )
    )
;;

let parse_TrdCapDtGrp (msg)  =
    opt msg "580" parse_int (fun msg f_TrdCapDtGrp_NoDates -> opt msg "60" parse_UTCTimestamp (fun msg f_TrdCapDtGrp_TransactTime -> opt msg "75" parse_LocalMktDate (fun msg f_TrdCapDtGrp_TradeDate -> (ParseSuccess {
        f_TrdCapDtGrp_TradeDate = f_TrdCapDtGrp_TradeDate;
        f_TrdCapDtGrp_TransactTime = f_TrdCapDtGrp_TransactTime;
        f_TrdCapDtGrp_NoDates = f_TrdCapDtGrp_NoDates
    },msg)
    )
    )
    )
;;

let parse_YieldData (msg)  =
    opt msg "236" parse_float (fun msg f_YieldData_Yield -> opt msg "697" parse_float (fun msg f_YieldData_YieldRedemptionPrice -> opt msg "701" parse_LocalMktDate (fun msg f_YieldData_YieldCalcDate -> opt msg "698" parse_int (fun msg f_YieldData_YieldRedemptionPriceType -> opt msg "235" parse_YieldType (fun msg f_YieldData_YieldType -> opt msg "696" parse_LocalMktDate (fun msg f_YieldData_YieldRedemptionDate -> (ParseSuccess {
        f_YieldData_YieldRedemptionDate = f_YieldData_YieldRedemptionDate;
        f_YieldData_YieldType = f_YieldData_YieldType;
        f_YieldData_YieldRedemptionPriceType = f_YieldData_YieldRedemptionPriceType;
        f_YieldData_YieldCalcDate = f_YieldData_YieldCalcDate;
        f_YieldData_YieldRedemptionPrice = f_YieldData_YieldRedemptionPrice;
        f_YieldData_Yield = f_YieldData_Yield
    },msg)
    )
    )
    )
    )
    )
    )
;;

let parse_BidCompReqGrp (msg)  =
    opt msg "430" parse_NetGrossInd (fun msg f_BidCompReqGrp_NetGrossInd -> opt msg "336" parse_string (fun msg f_BidCompReqGrp_TradingSessionID -> opt msg "64" parse_LocalMktDate (fun msg f_BidCompReqGrp_SettlDate -> opt msg "63" parse_SettlType (fun msg f_BidCompReqGrp_SettlType -> opt msg "66" parse_string (fun msg f_BidCompReqGrp_ListID -> opt msg "420" parse_int (fun msg f_BidCompReqGrp_NoBidComponents -> opt msg "625" parse_string (fun msg f_BidCompReqGrp_TradingSessionSubID -> opt msg "54" parse_Side (fun msg f_BidCompReqGrp_Side -> opt msg "660" parse_AcctIDSource (fun msg f_BidCompReqGrp_AcctIDSource -> opt msg "1" parse_string (fun msg f_BidCompReqGrp_Account -> (ParseSuccess {
        f_BidCompReqGrp_Account = f_BidCompReqGrp_Account;
        f_BidCompReqGrp_AcctIDSource = f_BidCompReqGrp_AcctIDSource;
        f_BidCompReqGrp_Side = f_BidCompReqGrp_Side;
        f_BidCompReqGrp_TradingSessionSubID = f_BidCompReqGrp_TradingSessionSubID;
        f_BidCompReqGrp_NoBidComponents = f_BidCompReqGrp_NoBidComponents;
        f_BidCompReqGrp_ListID = f_BidCompReqGrp_ListID;
        f_BidCompReqGrp_SettlType = f_BidCompReqGrp_SettlType;
        f_BidCompReqGrp_SettlDate = f_BidCompReqGrp_SettlDate;
        f_BidCompReqGrp_TradingSessionID = f_BidCompReqGrp_TradingSessionID;
        f_BidCompReqGrp_NetGrossInd = f_BidCompReqGrp_NetGrossInd
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_ExecCollGrp (msg)  =
    opt msg "124" parse_int (fun msg f_ExecCollGrp_NoExecs -> opt msg "17" parse_string (fun msg f_ExecCollGrp_ExecID -> (ParseSuccess {
        f_ExecCollGrp_ExecID = f_ExecCollGrp_ExecID;
        f_ExecCollGrp_NoExecs = f_ExecCollGrp_NoExecs
    },msg)
    )
    )
;;

let parse_AllocAckGrp (msg)  =
    opt msg "79" parse_string (fun msg f_AllocAckGrp_AllocAccount -> opt msg "360" parse_int (fun msg f_AllocAckGrp_EncodedAllocTextLen -> opt msg "161" parse_string (fun msg f_AllocAckGrp_AllocText -> opt msg "776" parse_int (fun msg f_AllocAckGrp_IndividualAllocRejCode -> opt msg "661" parse_int (fun msg f_AllocAckGrp_AllocAcctIDSource -> opt msg "361" parse_string (fun msg f_AllocAckGrp_EncodedAllocText -> opt msg "78" parse_int (fun msg f_AllocAckGrp_NoAllocs -> opt msg "467" parse_string (fun msg f_AllocAckGrp_IndividualAllocID -> opt msg "366" parse_float (fun msg f_AllocAckGrp_AllocPrice -> (ParseSuccess {
        f_AllocAckGrp_AllocPrice = f_AllocAckGrp_AllocPrice;
        f_AllocAckGrp_IndividualAllocID = f_AllocAckGrp_IndividualAllocID;
        f_AllocAckGrp_NoAllocs = f_AllocAckGrp_NoAllocs;
        f_AllocAckGrp_EncodedAllocText = f_AllocAckGrp_EncodedAllocText;
        f_AllocAckGrp_AllocAcctIDSource = f_AllocAckGrp_AllocAcctIDSource;
        f_AllocAckGrp_IndividualAllocRejCode = f_AllocAckGrp_IndividualAllocRejCode;
        f_AllocAckGrp_AllocText = f_AllocAckGrp_AllocText;
        f_AllocAckGrp_EncodedAllocTextLen = f_AllocAckGrp_EncodedAllocTextLen;
        f_AllocAckGrp_AllocAccount = f_AllocAckGrp_AllocAccount
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_LegSecAltIDGrp (msg)  =
    opt msg "604" parse_int (fun msg f_LegSecAltIDGrp_NoLegSecurityAltID -> opt msg "606" parse_string (fun msg f_LegSecAltIDGrp_LegSecurityAltIDSource -> opt msg "605" parse_string (fun msg f_LegSecAltIDGrp_LegSecurityAltID -> (ParseSuccess {
        f_LegSecAltIDGrp_LegSecurityAltID = f_LegSecAltIDGrp_LegSecurityAltID;
        f_LegSecAltIDGrp_LegSecurityAltIDSource = f_LegSecAltIDGrp_LegSecurityAltIDSource;
        f_LegSecAltIDGrp_NoLegSecurityAltID = f_LegSecAltIDGrp_NoLegSecurityAltID
    },msg)
    )
    )
    )
;;

let parse_AttrbGrp (msg)  =
    opt msg "871" parse_InstrAttribType (fun msg f_AttrbGrp_InstrAttribType -> opt msg "870" parse_int (fun msg f_AttrbGrp_NoInstrAttrib -> opt msg "872" parse_string (fun msg f_AttrbGrp_InstrAttribValue -> (ParseSuccess {
        f_AttrbGrp_InstrAttribValue = f_AttrbGrp_InstrAttribValue;
        f_AttrbGrp_NoInstrAttrib = f_AttrbGrp_NoInstrAttrib;
        f_AttrbGrp_InstrAttribType = f_AttrbGrp_InstrAttribType
    },msg)
    )
    )
    )
;;

let parse_MiscFeesGrp (msg)  =
    opt msg "136" parse_int (fun msg f_MiscFeesGrp_NoMiscFees -> opt msg "137" parse_float (fun msg f_MiscFeesGrp_MiscFeeAmt -> opt msg "139" parse_MiscFeeType (fun msg f_MiscFeesGrp_MiscFeeType -> opt msg "138" parse_Currency (fun msg f_MiscFeesGrp_MiscFeeCurr -> opt msg "891" parse_MiscFeeBasis (fun msg f_MiscFeesGrp_MiscFeeBasis -> (ParseSuccess {
        f_MiscFeesGrp_MiscFeeBasis = f_MiscFeesGrp_MiscFeeBasis;
        f_MiscFeesGrp_MiscFeeCurr = f_MiscFeesGrp_MiscFeeCurr;
        f_MiscFeesGrp_MiscFeeType = f_MiscFeesGrp_MiscFeeType;
        f_MiscFeesGrp_MiscFeeAmt = f_MiscFeesGrp_MiscFeeAmt;
        f_MiscFeesGrp_NoMiscFees = f_MiscFeesGrp_NoMiscFees
    },msg)
    )
    )
    )
    )
    )
;;

let parse_TrdRegTimestamps (msg)  =
    opt msg "769" parse_UTCTimestamp (fun msg f_TrdRegTimestamps_TrdRegTimestamp -> opt msg "770" parse_TrdRegTimestampType (fun msg f_TrdRegTimestamps_TrdRegTimestampType -> opt msg "771" parse_string (fun msg f_TrdRegTimestamps_TrdRegTimestampOrigin -> opt msg "768" parse_int (fun msg f_TrdRegTimestamps_NoTrdRegTimestamps -> (ParseSuccess {
        f_TrdRegTimestamps_NoTrdRegTimestamps = f_TrdRegTimestamps_NoTrdRegTimestamps;
        f_TrdRegTimestamps_TrdRegTimestampOrigin = f_TrdRegTimestamps_TrdRegTimestampOrigin;
        f_TrdRegTimestamps_TrdRegTimestampType = f_TrdRegTimestamps_TrdRegTimestampType;
        f_TrdRegTimestamps_TrdRegTimestamp = f_TrdRegTimestamps_TrdRegTimestamp
    },msg)
    )
    )
    )
    )
;;

let parse_MDRjctGrp (msg)  =
    opt msg "817" parse_string (fun msg f_MDRjctGrp_AltMDSourceID -> opt msg "816" parse_int (fun msg f_MDRjctGrp_NoAltMDSource -> (ParseSuccess {
        f_MDRjctGrp_NoAltMDSource = f_MDRjctGrp_NoAltMDSource;
        f_MDRjctGrp_AltMDSourceID = f_MDRjctGrp_AltMDSourceID
    },msg)
    )
    )
;;

let parse_OrdListStatGrp (msg)  =
    opt msg "151" parse_float (fun msg f_OrdListStatGrp_LeavesQty -> opt msg "84" parse_float (fun msg f_OrdListStatGrp_CxlQty -> opt msg "73" parse_int (fun msg f_OrdListStatGrp_NoOrders -> opt msg "39" parse_OrdStatus (fun msg f_OrdListStatGrp_OrdStatus -> opt msg "354" parse_int (fun msg f_OrdListStatGrp_EncodedTextLen -> opt msg "6" parse_float (fun msg f_OrdListStatGrp_AvgPx -> opt msg "636" parse_WorkingIndicator (fun msg f_OrdListStatGrp_WorkingIndicator -> opt msg "526" parse_string (fun msg f_OrdListStatGrp_SecondaryClOrdID -> opt msg "58" parse_string (fun msg f_OrdListStatGrp_Text -> opt msg "11" parse_string (fun msg f_OrdListStatGrp_ClOrdID -> opt msg "355" parse_string (fun msg f_OrdListStatGrp_EncodedText -> opt msg "103" parse_OrdRejReason (fun msg f_OrdListStatGrp_OrdRejReason -> opt msg "14" parse_float (fun msg f_OrdListStatGrp_CumQty -> (ParseSuccess {
        f_OrdListStatGrp_CumQty = f_OrdListStatGrp_CumQty;
        f_OrdListStatGrp_OrdRejReason = f_OrdListStatGrp_OrdRejReason;
        f_OrdListStatGrp_EncodedText = f_OrdListStatGrp_EncodedText;
        f_OrdListStatGrp_ClOrdID = f_OrdListStatGrp_ClOrdID;
        f_OrdListStatGrp_Text = f_OrdListStatGrp_Text;
        f_OrdListStatGrp_SecondaryClOrdID = f_OrdListStatGrp_SecondaryClOrdID;
        f_OrdListStatGrp_WorkingIndicator = f_OrdListStatGrp_WorkingIndicator;
        f_OrdListStatGrp_AvgPx = f_OrdListStatGrp_AvgPx;
        f_OrdListStatGrp_EncodedTextLen = f_OrdListStatGrp_EncodedTextLen;
        f_OrdListStatGrp_OrdStatus = f_OrdListStatGrp_OrdStatus;
        f_OrdListStatGrp_NoOrders = f_OrdListStatGrp_NoOrders;
        f_OrdListStatGrp_CxlQty = f_OrdListStatGrp_CxlQty;
        f_OrdListStatGrp_LeavesQty = f_OrdListStatGrp_LeavesQty
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_EvntGrp (msg)  =
    opt msg "867" parse_float (fun msg f_EvntGrp_EventPx -> opt msg "866" parse_LocalMktDate (fun msg f_EvntGrp_EventDate -> opt msg "868" parse_string (fun msg f_EvntGrp_EventText -> opt msg "864" parse_int (fun msg f_EvntGrp_NoEvents -> opt msg "865" parse_EventType (fun msg f_EvntGrp_EventType -> (ParseSuccess {
        f_EvntGrp_EventType = f_EvntGrp_EventType;
        f_EvntGrp_NoEvents = f_EvntGrp_NoEvents;
        f_EvntGrp_EventText = f_EvntGrp_EventText;
        f_EvntGrp_EventDate = f_EvntGrp_EventDate;
        f_EvntGrp_EventPx = f_EvntGrp_EventPx
    },msg)
    )
    )
    )
    )
    )
;;

let parse_SpreadOrBenchmarkCurveData (msg)  =
    opt msg "220" parse_Currency (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkCurveCurrency -> opt msg "761" parse_string (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkSecurityIDSource -> opt msg "699" parse_string (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkSecurityID -> opt msg "222" parse_string (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkCurvePoint -> opt msg "663" parse_int (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkPriceType -> opt msg "218" parse_float (fun msg f_SpreadOrBenchmarkCurveData_Spread -> opt msg "221" parse_string (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkCurveName -> opt msg "662" parse_float (fun msg f_SpreadOrBenchmarkCurveData_BenchmarkPrice -> (ParseSuccess {
        f_SpreadOrBenchmarkCurveData_BenchmarkPrice = f_SpreadOrBenchmarkCurveData_BenchmarkPrice;
        f_SpreadOrBenchmarkCurveData_BenchmarkCurveName = f_SpreadOrBenchmarkCurveData_BenchmarkCurveName;
        f_SpreadOrBenchmarkCurveData_Spread = f_SpreadOrBenchmarkCurveData_Spread;
        f_SpreadOrBenchmarkCurveData_BenchmarkPriceType = f_SpreadOrBenchmarkCurveData_BenchmarkPriceType;
        f_SpreadOrBenchmarkCurveData_BenchmarkCurvePoint = f_SpreadOrBenchmarkCurveData_BenchmarkCurvePoint;
        f_SpreadOrBenchmarkCurveData_BenchmarkSecurityID = f_SpreadOrBenchmarkCurveData_BenchmarkSecurityID;
        f_SpreadOrBenchmarkCurveData_BenchmarkSecurityIDSource = f_SpreadOrBenchmarkCurveData_BenchmarkSecurityIDSource;
        f_SpreadOrBenchmarkCurveData_BenchmarkCurveCurrency = f_SpreadOrBenchmarkCurveData_BenchmarkCurveCurrency
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_CollInqQualGrp (msg)  =
    opt msg "896" parse_CollInquiryQualifier (fun msg f_CollInqQualGrp_CollInquiryQualifier -> opt msg "938" parse_int (fun msg f_CollInqQualGrp_NoCollInquiryQualifier -> (ParseSuccess {
        f_CollInqQualGrp_NoCollInquiryQualifier = f_CollInqQualGrp_NoCollInquiryQualifier;
        f_CollInqQualGrp_CollInquiryQualifier = f_CollInqQualGrp_CollInquiryQualifier
    },msg)
    )
    )
;;

let parse_PegInstructions (msg)  =
    opt msg "836" parse_PegOffsetType (fun msg f_PegInstructions_PegOffsetType -> opt msg "838" parse_PegRoundDirection (fun msg f_PegInstructions_PegRoundDirection -> opt msg "840" parse_PegScope (fun msg f_PegInstructions_PegScope -> opt msg "837" parse_PegLimitType (fun msg f_PegInstructions_PegLimitType -> opt msg "835" parse_PegMoveType (fun msg f_PegInstructions_PegMoveType -> opt msg "211" parse_float (fun msg f_PegInstructions_PegOffsetValue -> (ParseSuccess {
        f_PegInstructions_PegOffsetValue = f_PegInstructions_PegOffsetValue;
        f_PegInstructions_PegMoveType = f_PegInstructions_PegMoveType;
        f_PegInstructions_PegLimitType = f_PegInstructions_PegLimitType;
        f_PegInstructions_PegScope = f_PegInstructions_PegScope;
        f_PegInstructions_PegRoundDirection = f_PegInstructions_PegRoundDirection;
        f_PegInstructions_PegOffsetType = f_PegInstructions_PegOffsetType
    },msg)
    )
    )
    )
    )
    )
    )
;;

let parse_UnderlyingStipulations (msg)  =
    opt msg "888" parse_string (fun msg f_UnderlyingStipulations_UnderlyingStipType -> opt msg "889" parse_string (fun msg f_UnderlyingStipulations_UnderlyingStipValue -> opt msg "887" parse_int (fun msg f_UnderlyingStipulations_NoUnderlyingStips -> (ParseSuccess {
        f_UnderlyingStipulations_NoUnderlyingStips = f_UnderlyingStipulations_NoUnderlyingStips;
        f_UnderlyingStipulations_UnderlyingStipValue = f_UnderlyingStipulations_UnderlyingStipValue;
        f_UnderlyingStipulations_UnderlyingStipType = f_UnderlyingStipulations_UnderlyingStipType
    },msg)
    )
    )
    )
;;

let parse_CompIDReqGrp (msg)  =
    opt msg "284" parse_string (fun msg f_CompIDReqGrp_DeskID -> opt msg "930" parse_string (fun msg f_CompIDReqGrp_RefCompID -> opt msg "936" parse_int (fun msg f_CompIDReqGrp_NoCompIDs -> opt msg "931" parse_string (fun msg f_CompIDReqGrp_RefSubID -> opt msg "283" parse_string (fun msg f_CompIDReqGrp_LocationID -> (ParseSuccess {
        f_CompIDReqGrp_LocationID = f_CompIDReqGrp_LocationID;
        f_CompIDReqGrp_RefSubID = f_CompIDReqGrp_RefSubID;
        f_CompIDReqGrp_NoCompIDs = f_CompIDReqGrp_NoCompIDs;
        f_CompIDReqGrp_RefCompID = f_CompIDReqGrp_RefCompID;
        f_CompIDReqGrp_DeskID = f_CompIDReqGrp_DeskID
    },msg)
    )
    )
    )
    )
    )
;;

let parse_FinancingDetails (msg)  =
    opt msg "916" parse_LocalMktDate (fun msg f_FinancingDetails_StartDate -> opt msg "919" parse_DeliveryType (fun msg f_FinancingDetails_DeliveryType -> opt msg "917" parse_LocalMktDate (fun msg f_FinancingDetails_EndDate -> opt msg "915" parse_LocalMktDate (fun msg f_FinancingDetails_AgreementDate -> opt msg "898" parse_float (fun msg f_FinancingDetails_MarginRatio -> opt msg "913" parse_string (fun msg f_FinancingDetails_AgreementDesc -> opt msg "918" parse_Currency (fun msg f_FinancingDetails_AgreementCurrency -> opt msg "914" parse_string (fun msg f_FinancingDetails_AgreementID -> opt msg "788" parse_TerminationType (fun msg f_FinancingDetails_TerminationType -> (ParseSuccess {
        f_FinancingDetails_TerminationType = f_FinancingDetails_TerminationType;
        f_FinancingDetails_AgreementID = f_FinancingDetails_AgreementID;
        f_FinancingDetails_AgreementCurrency = f_FinancingDetails_AgreementCurrency;
        f_FinancingDetails_AgreementDesc = f_FinancingDetails_AgreementDesc;
        f_FinancingDetails_MarginRatio = f_FinancingDetails_MarginRatio;
        f_FinancingDetails_AgreementDate = f_FinancingDetails_AgreementDate;
        f_FinancingDetails_EndDate = f_FinancingDetails_EndDate;
        f_FinancingDetails_DeliveryType = f_FinancingDetails_DeliveryType;
        f_FinancingDetails_StartDate = f_FinancingDetails_StartDate
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_DiscretionInstructions (msg)  =
    opt msg "843" parse_DiscretionLimitType (fun msg f_DiscretionInstructions_DiscretionLimitType -> opt msg "388" parse_DiscretionInst (fun msg f_DiscretionInstructions_DiscretionInst -> opt msg "844" parse_DiscretionRoundDirection (fun msg f_DiscretionInstructions_DiscretionRoundDirection -> opt msg "841" parse_DiscretionMoveType (fun msg f_DiscretionInstructions_DiscretionMoveType -> opt msg "842" parse_DiscretionOffsetType (fun msg f_DiscretionInstructions_DiscretionOffsetType -> opt msg "389" parse_float (fun msg f_DiscretionInstructions_DiscretionOffsetValue -> opt msg "846" parse_DiscretionScope (fun msg f_DiscretionInstructions_DiscretionScope -> (ParseSuccess {
        f_DiscretionInstructions_DiscretionScope = f_DiscretionInstructions_DiscretionScope;
        f_DiscretionInstructions_DiscretionOffsetValue = f_DiscretionInstructions_DiscretionOffsetValue;
        f_DiscretionInstructions_DiscretionOffsetType = f_DiscretionInstructions_DiscretionOffsetType;
        f_DiscretionInstructions_DiscretionMoveType = f_DiscretionInstructions_DiscretionMoveType;
        f_DiscretionInstructions_DiscretionRoundDirection = f_DiscretionInstructions_DiscretionRoundDirection;
        f_DiscretionInstructions_DiscretionInst = f_DiscretionInstructions_DiscretionInst;
        f_DiscretionInstructions_DiscretionLimitType = f_DiscretionInstructions_DiscretionLimitType
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_PositionAmountData (msg)  =
    opt msg "707" parse_PosAmtType (fun msg f_PositionAmountData_PosAmtType -> opt msg "708" parse_float (fun msg f_PositionAmountData_PosAmt -> opt msg "753" parse_int (fun msg f_PositionAmountData_NoPosAmt -> (ParseSuccess {
        f_PositionAmountData_NoPosAmt = f_PositionAmountData_NoPosAmt;
        f_PositionAmountData_PosAmt = f_PositionAmountData_PosAmt;
        f_PositionAmountData_PosAmtType = f_PositionAmountData_PosAmtType
    },msg)
    )
    )
    )
;;

let parse_NstdPtys2SubGrp (msg)  =
    opt msg "806" parse_int (fun msg f_NstdPtys2SubGrp_NoNested2PartySubIDs -> opt msg "807" parse_int (fun msg f_NstdPtys2SubGrp_Nested2PartySubIDType -> opt msg "760" parse_string (fun msg f_NstdPtys2SubGrp_Nested2PartySubID -> (ParseSuccess {
        f_NstdPtys2SubGrp_Nested2PartySubID = f_NstdPtys2SubGrp_Nested2PartySubID;
        f_NstdPtys2SubGrp_Nested2PartySubIDType = f_NstdPtys2SubGrp_Nested2PartySubIDType;
        f_NstdPtys2SubGrp_NoNested2PartySubIDs = f_NstdPtys2SubGrp_NoNested2PartySubIDs
    },msg)
    )
    )
    )
;;

let parse_AffectedOrdGrp (msg)  =
    opt msg "41" parse_string (fun msg f_AffectedOrdGrp_OrigClOrdID -> opt msg "535" parse_string (fun msg f_AffectedOrdGrp_AffectedOrderID -> opt msg "534" parse_int (fun msg f_AffectedOrdGrp_NoAffectedOrders -> opt msg "536" parse_string (fun msg f_AffectedOrdGrp_AffectedSecondaryOrderID -> (ParseSuccess {
        f_AffectedOrdGrp_AffectedSecondaryOrderID = f_AffectedOrdGrp_AffectedSecondaryOrderID;
        f_AffectedOrdGrp_NoAffectedOrders = f_AffectedOrdGrp_NoAffectedOrders;
        f_AffectedOrdGrp_AffectedOrderID = f_AffectedOrdGrp_AffectedOrderID;
        f_AffectedOrdGrp_OrigClOrdID = f_AffectedOrdGrp_OrigClOrdID
    },msg)
    )
    )
    )
    )
;;

let parse_ContAmtGrp (msg)  =
    opt msg "519" parse_ContAmtType (fun msg f_ContAmtGrp_ContAmtType -> opt msg "521" parse_Currency (fun msg f_ContAmtGrp_ContAmtCurr -> opt msg "518" parse_int (fun msg f_ContAmtGrp_NoContAmts -> opt msg "520" parse_float (fun msg f_ContAmtGrp_ContAmtValue -> (ParseSuccess {
        f_ContAmtGrp_ContAmtValue = f_ContAmtGrp_ContAmtValue;
        f_ContAmtGrp_NoContAmts = f_ContAmtGrp_NoContAmts;
        f_ContAmtGrp_ContAmtCurr = f_ContAmtGrp_ContAmtCurr;
        f_ContAmtGrp_ContAmtType = f_ContAmtGrp_ContAmtType
    },msg)
    )
    )
    )
    )
;;

let parse_LegStipulations (msg)  =
    opt msg "689" parse_string (fun msg f_LegStipulations_LegStipulationValue -> opt msg "688" parse_string (fun msg f_LegStipulations_LegStipulationType -> opt msg "683" parse_int (fun msg f_LegStipulations_NoLegStipulations -> (ParseSuccess {
        f_LegStipulations_NoLegStipulations = f_LegStipulations_NoLegStipulations;
        f_LegStipulations_LegStipulationType = f_LegStipulations_LegStipulationType;
        f_LegStipulations_LegStipulationValue = f_LegStipulations_LegStipulationValue
    },msg)
    )
    )
    )
;;

let parse_CommissionData (msg)  =
    opt msg "13" parse_CommType (fun msg f_CommissionData_CommType -> opt msg "479" parse_Currency (fun msg f_CommissionData_CommCurrency -> opt msg "12" parse_float (fun msg f_CommissionData_Commission -> opt msg "497" parse_FundRenewWaiv (fun msg f_CommissionData_FundRenewWaiv -> (ParseSuccess {
        f_CommissionData_FundRenewWaiv = f_CommissionData_FundRenewWaiv;
        f_CommissionData_Commission = f_CommissionData_Commission;
        f_CommissionData_CommCurrency = f_CommissionData_CommCurrency;
        f_CommissionData_CommType = f_CommissionData_CommType
    },msg)
    )
    )
    )
    )
;;

let parse_BidCompRspGrp (msg)  =
    opt msg "423" parse_PriceType (fun msg f_BidCompRspGrp_PriceType -> opt msg "421" parse_Country (fun msg f_BidCompRspGrp_Country -> opt msg "64" parse_LocalMktDate (fun msg f_BidCompRspGrp_SettlDate -> opt msg "63" parse_SettlType (fun msg f_BidCompRspGrp_SettlType -> opt msg "66" parse_string (fun msg f_BidCompRspGrp_ListID -> opt msg "44" parse_float (fun msg f_BidCompRspGrp_Price -> opt msg "420" parse_int (fun msg f_BidCompRspGrp_NoBidComponents -> opt msg "354" parse_int (fun msg f_BidCompRspGrp_EncodedTextLen -> opt msg "625" parse_string (fun msg f_BidCompRspGrp_TradingSessionSubID -> opt msg "54" parse_Side (fun msg f_BidCompRspGrp_Side -> opt msg "430" parse_NetGrossInd (fun msg f_BidCompRspGrp_NetGrossInd -> opt msg "58" parse_string (fun msg f_BidCompRspGrp_Text -> opt msg "336" parse_string (fun msg f_BidCompRspGrp_TradingSessionID -> opt msg "355" parse_string (fun msg f_BidCompRspGrp_EncodedText -> opt msg "406" parse_float (fun msg f_BidCompRspGrp_FairValue -> block msg parse_CommissionData (fun msg f_BidCompRspGrp_CommissionData -> (ParseSuccess {
        f_BidCompRspGrp_CommissionData = f_BidCompRspGrp_CommissionData;
        f_BidCompRspGrp_FairValue = f_BidCompRspGrp_FairValue;
        f_BidCompRspGrp_EncodedText = f_BidCompRspGrp_EncodedText;
        f_BidCompRspGrp_TradingSessionID = f_BidCompRspGrp_TradingSessionID;
        f_BidCompRspGrp_Text = f_BidCompRspGrp_Text;
        f_BidCompRspGrp_NetGrossInd = f_BidCompRspGrp_NetGrossInd;
        f_BidCompRspGrp_Side = f_BidCompRspGrp_Side;
        f_BidCompRspGrp_TradingSessionSubID = f_BidCompRspGrp_TradingSessionSubID;
        f_BidCompRspGrp_EncodedTextLen = f_BidCompRspGrp_EncodedTextLen;
        f_BidCompRspGrp_NoBidComponents = f_BidCompRspGrp_NoBidComponents;
        f_BidCompRspGrp_Price = f_BidCompRspGrp_Price;
        f_BidCompRspGrp_ListID = f_BidCompRspGrp_ListID;
        f_BidCompRspGrp_SettlType = f_BidCompRspGrp_SettlType;
        f_BidCompRspGrp_SettlDate = f_BidCompRspGrp_SettlDate;
        f_BidCompRspGrp_Country = f_BidCompRspGrp_Country;
        f_BidCompRspGrp_PriceType = f_BidCompRspGrp_PriceType
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_NestedParties2 (msg)  =
    opt msg "757" parse_string (fun msg f_NestedParties2_Nested2PartyID -> opt msg "758" parse_char (fun msg f_NestedParties2_Nested2PartyIDSource -> opt msg "756" parse_int (fun msg f_NestedParties2_NoNested2PartyIDs -> opt msg "759" parse_int (fun msg f_NestedParties2_Nested2PartyRole -> repeating msg "806" parse_NstdPtys2SubGrp (fun msg f_NestedParties2_NstdPtys2SubGrp -> (ParseSuccess {
        f_NestedParties2_NstdPtys2SubGrp = f_NestedParties2_NstdPtys2SubGrp;
        f_NestedParties2_Nested2PartyRole = f_NestedParties2_Nested2PartyRole;
        f_NestedParties2_NoNested2PartyIDs = f_NestedParties2_NoNested2PartyIDs;
        f_NestedParties2_Nested2PartyIDSource = f_NestedParties2_Nested2PartyIDSource;
        f_NestedParties2_Nested2PartyID = f_NestedParties2_Nested2PartyID
    },msg)
    )
    )
    )
    )
    )
;;

let parse_InstrumentExtension (msg)  =
    opt msg "668" parse_DeliveryForm (fun msg f_InstrumentExtension_DeliveryForm -> opt msg "869" parse_float (fun msg f_InstrumentExtension_PctAtRisk -> repeating msg "870" parse_AttrbGrp (fun msg f_InstrumentExtension_AttrbGrp -> (ParseSuccess {
        f_InstrumentExtension_AttrbGrp = f_InstrumentExtension_AttrbGrp;
        f_InstrumentExtension_PctAtRisk = f_InstrumentExtension_PctAtRisk;
        f_InstrumentExtension_DeliveryForm = f_InstrumentExtension_DeliveryForm
    },msg)
    )
    )
    )
;;

let parse_InstrumentLeg (msg)  =
    opt msg "251" parse_int (fun msg f_InstrumentLeg_LegRepurchaseTerm -> opt msg "253" parse_float (fun msg f_InstrumentLeg_LegFactor -> opt msg "612" parse_float (fun msg f_InstrumentLeg_LegStrikePrice -> opt msg "611" parse_LocalMktDate (fun msg f_InstrumentLeg_LegMaturityDate -> opt msg "610" parse_MonthYear (fun msg f_InstrumentLeg_LegMaturityMonthYear -> opt msg "615" parse_float (fun msg f_InstrumentLeg_LegCouponRate -> opt msg "556" parse_Currency (fun msg f_InstrumentLeg_LegCurrency -> opt msg "622" parse_string (fun msg f_InstrumentLeg_EncodedLegSecurityDesc -> opt msg "252" parse_float (fun msg f_InstrumentLeg_LegRepurchaseRate -> opt msg "248" parse_LocalMktDate (fun msg f_InstrumentLeg_LegCouponPaymentDate -> opt msg "596" parse_Country (fun msg f_InstrumentLeg_LegCountryOfIssue -> opt msg "618" parse_int (fun msg f_InstrumentLeg_EncodedLegIssuerLen -> opt msg "601" parse_string (fun msg f_InstrumentLeg_LegSymbolSfx -> opt msg "257" parse_string (fun msg f_InstrumentLeg_LegCreditRating -> opt msg "607" parse_int (fun msg f_InstrumentLeg_LegProduct -> opt msg "602" parse_string (fun msg f_InstrumentLeg_LegSecurityID -> opt msg "613" parse_char (fun msg f_InstrumentLeg_LegOptAttribute -> opt msg "623" parse_float (fun msg f_InstrumentLeg_LegRatioQty -> opt msg "597" parse_string (fun msg f_InstrumentLeg_LegStateOrProvinceOfIssue -> opt msg "250" parse_string (fun msg f_InstrumentLeg_LegRepoCollateralSecurityType -> opt msg "619" parse_string (fun msg f_InstrumentLeg_EncodedLegIssuer -> opt msg "942" parse_Currency (fun msg f_InstrumentLeg_LegStrikeCurrency -> opt msg "599" parse_string (fun msg f_InstrumentLeg_LegInstrRegistry -> opt msg "603" parse_string (fun msg f_InstrumentLeg_LegSecurityIDSource -> opt msg "614" parse_float (fun msg f_InstrumentLeg_LegContractMultiplier -> opt msg "609" parse_string (fun msg f_InstrumentLeg_LegSecurityType -> opt msg "621" parse_int (fun msg f_InstrumentLeg_EncodedLegSecurityDescLen -> opt msg "620" parse_string (fun msg f_InstrumentLeg_LegSecurityDesc -> opt msg "764" parse_string (fun msg f_InstrumentLeg_LegSecuritySubType -> opt msg "956" parse_LocalMktDate (fun msg f_InstrumentLeg_LegInterestAccrualDate -> opt msg "598" parse_string (fun msg f_InstrumentLeg_LegLocaleOfIssue -> opt msg "740" parse_string (fun msg f_InstrumentLeg_LegPool -> opt msg "616" parse_Exchange (fun msg f_InstrumentLeg_LegSecurityExchange -> opt msg "249" parse_LocalMktDate (fun msg f_InstrumentLeg_LegIssueDate -> opt msg "955" parse_MonthYear (fun msg f_InstrumentLeg_LegContractSettlMonth -> opt msg "739" parse_LocalMktDate (fun msg f_InstrumentLeg_LegDatedDate -> opt msg "254" parse_LocalMktDate (fun msg f_InstrumentLeg_LegRedemptionDate -> opt msg "608" parse_string (fun msg f_InstrumentLeg_LegCFICode -> opt msg "617" parse_string (fun msg f_InstrumentLeg_LegIssuer -> opt msg "600" parse_string (fun msg f_InstrumentLeg_LegSymbol -> opt msg "624" parse_char (fun msg f_InstrumentLeg_LegSide -> repeating msg "604" parse_LegSecAltIDGrp (fun msg f_InstrumentLeg_LegSecAltIDGrp -> (ParseSuccess {
        f_InstrumentLeg_LegSecAltIDGrp = f_InstrumentLeg_LegSecAltIDGrp;
        f_InstrumentLeg_LegSide = f_InstrumentLeg_LegSide;
        f_InstrumentLeg_LegSymbol = f_InstrumentLeg_LegSymbol;
        f_InstrumentLeg_LegIssuer = f_InstrumentLeg_LegIssuer;
        f_InstrumentLeg_LegCFICode = f_InstrumentLeg_LegCFICode;
        f_InstrumentLeg_LegRedemptionDate = f_InstrumentLeg_LegRedemptionDate;
        f_InstrumentLeg_LegDatedDate = f_InstrumentLeg_LegDatedDate;
        f_InstrumentLeg_LegContractSettlMonth = f_InstrumentLeg_LegContractSettlMonth;
        f_InstrumentLeg_LegIssueDate = f_InstrumentLeg_LegIssueDate;
        f_InstrumentLeg_LegSecurityExchange = f_InstrumentLeg_LegSecurityExchange;
        f_InstrumentLeg_LegPool = f_InstrumentLeg_LegPool;
        f_InstrumentLeg_LegLocaleOfIssue = f_InstrumentLeg_LegLocaleOfIssue;
        f_InstrumentLeg_LegInterestAccrualDate = f_InstrumentLeg_LegInterestAccrualDate;
        f_InstrumentLeg_LegSecuritySubType = f_InstrumentLeg_LegSecuritySubType;
        f_InstrumentLeg_LegSecurityDesc = f_InstrumentLeg_LegSecurityDesc;
        f_InstrumentLeg_EncodedLegSecurityDescLen = f_InstrumentLeg_EncodedLegSecurityDescLen;
        f_InstrumentLeg_LegSecurityType = f_InstrumentLeg_LegSecurityType;
        f_InstrumentLeg_LegContractMultiplier = f_InstrumentLeg_LegContractMultiplier;
        f_InstrumentLeg_LegSecurityIDSource = f_InstrumentLeg_LegSecurityIDSource;
        f_InstrumentLeg_LegInstrRegistry = f_InstrumentLeg_LegInstrRegistry;
        f_InstrumentLeg_LegStrikeCurrency = f_InstrumentLeg_LegStrikeCurrency;
        f_InstrumentLeg_EncodedLegIssuer = f_InstrumentLeg_EncodedLegIssuer;
        f_InstrumentLeg_LegRepoCollateralSecurityType = f_InstrumentLeg_LegRepoCollateralSecurityType;
        f_InstrumentLeg_LegStateOrProvinceOfIssue = f_InstrumentLeg_LegStateOrProvinceOfIssue;
        f_InstrumentLeg_LegRatioQty = f_InstrumentLeg_LegRatioQty;
        f_InstrumentLeg_LegOptAttribute = f_InstrumentLeg_LegOptAttribute;
        f_InstrumentLeg_LegSecurityID = f_InstrumentLeg_LegSecurityID;
        f_InstrumentLeg_LegProduct = f_InstrumentLeg_LegProduct;
        f_InstrumentLeg_LegCreditRating = f_InstrumentLeg_LegCreditRating;
        f_InstrumentLeg_LegSymbolSfx = f_InstrumentLeg_LegSymbolSfx;
        f_InstrumentLeg_EncodedLegIssuerLen = f_InstrumentLeg_EncodedLegIssuerLen;
        f_InstrumentLeg_LegCountryOfIssue = f_InstrumentLeg_LegCountryOfIssue;
        f_InstrumentLeg_LegCouponPaymentDate = f_InstrumentLeg_LegCouponPaymentDate;
        f_InstrumentLeg_LegRepurchaseRate = f_InstrumentLeg_LegRepurchaseRate;
        f_InstrumentLeg_EncodedLegSecurityDesc = f_InstrumentLeg_EncodedLegSecurityDesc;
        f_InstrumentLeg_LegCurrency = f_InstrumentLeg_LegCurrency;
        f_InstrumentLeg_LegCouponRate = f_InstrumentLeg_LegCouponRate;
        f_InstrumentLeg_LegMaturityMonthYear = f_InstrumentLeg_LegMaturityMonthYear;
        f_InstrumentLeg_LegMaturityDate = f_InstrumentLeg_LegMaturityDate;
        f_InstrumentLeg_LegStrikePrice = f_InstrumentLeg_LegStrikePrice;
        f_InstrumentLeg_LegFactor = f_InstrumentLeg_LegFactor;
        f_InstrumentLeg_LegRepurchaseTerm = f_InstrumentLeg_LegRepurchaseTerm
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_UnderlyingInstrument (msg)  =
    opt msg "244" parse_int (fun msg f_UnderlyingInstrument_UnderlyingRepurchaseTerm -> opt msg "878" parse_string (fun msg f_UnderlyingInstrument_UnderlyingCPRegType -> opt msg "365" parse_string (fun msg f_UnderlyingInstrument_EncodedUnderlyingSecurityDesc -> opt msg "307" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSecurityDesc -> opt msg "594" parse_string (fun msg f_UnderlyingInstrument_UnderlyingLocaleOfIssue -> opt msg "243" parse_string (fun msg f_UnderlyingInstrument_UnderlyingRepoCollateralSecurityType -> opt msg "882" parse_float (fun msg f_UnderlyingInstrument_UnderlyingDirtyPrice -> opt msg "364" parse_int (fun msg f_UnderlyingInstrument_EncodedUnderlyingSecurityDescLen -> opt msg "463" parse_string (fun msg f_UnderlyingInstrument_UnderlyingCFICode -> opt msg "245" parse_float (fun msg f_UnderlyingInstrument_UnderlyingRepurchaseRate -> opt msg "242" parse_LocalMktDate (fun msg f_UnderlyingInstrument_UnderlyingIssueDate -> opt msg "308" parse_Exchange (fun msg f_UnderlyingInstrument_UnderlyingSecurityExchange -> opt msg "256" parse_string (fun msg f_UnderlyingInstrument_UnderlyingCreditRating -> opt msg "435" parse_float (fun msg f_UnderlyingInstrument_UnderlyingCouponRate -> opt msg "241" parse_LocalMktDate (fun msg f_UnderlyingInstrument_UnderlyingCouponPaymentDate -> opt msg "941" parse_Currency (fun msg f_UnderlyingInstrument_UnderlyingStrikeCurrency -> opt msg "313" parse_MonthYear (fun msg f_UnderlyingInstrument_UnderlyingMaturityMonthYear -> opt msg "363" parse_string (fun msg f_UnderlyingInstrument_EncodedUnderlyingIssuer -> opt msg "247" parse_LocalMktDate (fun msg f_UnderlyingInstrument_UnderlyingRedemptionDate -> opt msg "593" parse_string (fun msg f_UnderlyingInstrument_UnderlyingStateOrProvinceOfIssue -> opt msg "305" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSecurityIDSource -> opt msg "317" parse_char (fun msg f_UnderlyingInstrument_UnderlyingOptAttribute -> opt msg "542" parse_LocalMktDate (fun msg f_UnderlyingInstrument_UnderlyingMaturityDate -> opt msg "311" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSymbol -> opt msg "886" parse_float (fun msg f_UnderlyingInstrument_UnderlyingEndValue -> opt msg "316" parse_float (fun msg f_UnderlyingInstrument_UnderlyingStrikePrice -> opt msg "306" parse_string (fun msg f_UnderlyingInstrument_UnderlyingIssuer -> opt msg "362" parse_int (fun msg f_UnderlyingInstrument_EncodedUnderlyingIssuerLen -> opt msg "763" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSecuritySubType -> opt msg "883" parse_float (fun msg f_UnderlyingInstrument_UnderlyingEndPrice -> opt msg "312" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSymbolSfx -> opt msg "436" parse_float (fun msg f_UnderlyingInstrument_UnderlyingContractMultiplier -> opt msg "595" parse_string (fun msg f_UnderlyingInstrument_UnderlyingInstrRegistry -> opt msg "309" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSecurityID -> opt msg "592" parse_Country (fun msg f_UnderlyingInstrument_UnderlyingCountryOfIssue -> opt msg "246" parse_float (fun msg f_UnderlyingInstrument_UnderlyingFactor -> opt msg "310" parse_string (fun msg f_UnderlyingInstrument_UnderlyingSecurityType -> opt msg "810" parse_float (fun msg f_UnderlyingInstrument_UnderlyingPx -> opt msg "318" parse_Currency (fun msg f_UnderlyingInstrument_UnderlyingCurrency -> opt msg "885" parse_float (fun msg f_UnderlyingInstrument_UnderlyingCurrentValue -> opt msg "879" parse_float (fun msg f_UnderlyingInstrument_UnderlyingQty -> opt msg "877" parse_string (fun msg f_UnderlyingInstrument_UnderlyingCPProgram -> opt msg "884" parse_float (fun msg f_UnderlyingInstrument_UnderlyingStartValue -> opt msg "462" parse_int (fun msg f_UnderlyingInstrument_UnderlyingProduct -> repeating msg "887" parse_UnderlyingStipulations (fun msg f_UnderlyingInstrument_UnderlyingStipulations -> repeating msg "457" parse_UndSecAltIDGrp (fun msg f_UnderlyingInstrument_UndSecAltIDGrp -> (ParseSuccess {
        f_UnderlyingInstrument_UndSecAltIDGrp = f_UnderlyingInstrument_UndSecAltIDGrp;
        f_UnderlyingInstrument_UnderlyingStipulations = f_UnderlyingInstrument_UnderlyingStipulations;
        f_UnderlyingInstrument_UnderlyingProduct = f_UnderlyingInstrument_UnderlyingProduct;
        f_UnderlyingInstrument_UnderlyingStartValue = f_UnderlyingInstrument_UnderlyingStartValue;
        f_UnderlyingInstrument_UnderlyingCPProgram = f_UnderlyingInstrument_UnderlyingCPProgram;
        f_UnderlyingInstrument_UnderlyingQty = f_UnderlyingInstrument_UnderlyingQty;
        f_UnderlyingInstrument_UnderlyingCurrentValue = f_UnderlyingInstrument_UnderlyingCurrentValue;
        f_UnderlyingInstrument_UnderlyingCurrency = f_UnderlyingInstrument_UnderlyingCurrency;
        f_UnderlyingInstrument_UnderlyingPx = f_UnderlyingInstrument_UnderlyingPx;
        f_UnderlyingInstrument_UnderlyingSecurityType = f_UnderlyingInstrument_UnderlyingSecurityType;
        f_UnderlyingInstrument_UnderlyingFactor = f_UnderlyingInstrument_UnderlyingFactor;
        f_UnderlyingInstrument_UnderlyingCountryOfIssue = f_UnderlyingInstrument_UnderlyingCountryOfIssue;
        f_UnderlyingInstrument_UnderlyingSecurityID = f_UnderlyingInstrument_UnderlyingSecurityID;
        f_UnderlyingInstrument_UnderlyingInstrRegistry = f_UnderlyingInstrument_UnderlyingInstrRegistry;
        f_UnderlyingInstrument_UnderlyingContractMultiplier = f_UnderlyingInstrument_UnderlyingContractMultiplier;
        f_UnderlyingInstrument_UnderlyingSymbolSfx = f_UnderlyingInstrument_UnderlyingSymbolSfx;
        f_UnderlyingInstrument_UnderlyingEndPrice = f_UnderlyingInstrument_UnderlyingEndPrice;
        f_UnderlyingInstrument_UnderlyingSecuritySubType = f_UnderlyingInstrument_UnderlyingSecuritySubType;
        f_UnderlyingInstrument_EncodedUnderlyingIssuerLen = f_UnderlyingInstrument_EncodedUnderlyingIssuerLen;
        f_UnderlyingInstrument_UnderlyingIssuer = f_UnderlyingInstrument_UnderlyingIssuer;
        f_UnderlyingInstrument_UnderlyingStrikePrice = f_UnderlyingInstrument_UnderlyingStrikePrice;
        f_UnderlyingInstrument_UnderlyingEndValue = f_UnderlyingInstrument_UnderlyingEndValue;
        f_UnderlyingInstrument_UnderlyingSymbol = f_UnderlyingInstrument_UnderlyingSymbol;
        f_UnderlyingInstrument_UnderlyingMaturityDate = f_UnderlyingInstrument_UnderlyingMaturityDate;
        f_UnderlyingInstrument_UnderlyingOptAttribute = f_UnderlyingInstrument_UnderlyingOptAttribute;
        f_UnderlyingInstrument_UnderlyingSecurityIDSource = f_UnderlyingInstrument_UnderlyingSecurityIDSource;
        f_UnderlyingInstrument_UnderlyingStateOrProvinceOfIssue = f_UnderlyingInstrument_UnderlyingStateOrProvinceOfIssue;
        f_UnderlyingInstrument_UnderlyingRedemptionDate = f_UnderlyingInstrument_UnderlyingRedemptionDate;
        f_UnderlyingInstrument_EncodedUnderlyingIssuer = f_UnderlyingInstrument_EncodedUnderlyingIssuer;
        f_UnderlyingInstrument_UnderlyingMaturityMonthYear = f_UnderlyingInstrument_UnderlyingMaturityMonthYear;
        f_UnderlyingInstrument_UnderlyingStrikeCurrency = f_UnderlyingInstrument_UnderlyingStrikeCurrency;
        f_UnderlyingInstrument_UnderlyingCouponPaymentDate = f_UnderlyingInstrument_UnderlyingCouponPaymentDate;
        f_UnderlyingInstrument_UnderlyingCouponRate = f_UnderlyingInstrument_UnderlyingCouponRate;
        f_UnderlyingInstrument_UnderlyingCreditRating = f_UnderlyingInstrument_UnderlyingCreditRating;
        f_UnderlyingInstrument_UnderlyingSecurityExchange = f_UnderlyingInstrument_UnderlyingSecurityExchange;
        f_UnderlyingInstrument_UnderlyingIssueDate = f_UnderlyingInstrument_UnderlyingIssueDate;
        f_UnderlyingInstrument_UnderlyingRepurchaseRate = f_UnderlyingInstrument_UnderlyingRepurchaseRate;
        f_UnderlyingInstrument_UnderlyingCFICode = f_UnderlyingInstrument_UnderlyingCFICode;
        f_UnderlyingInstrument_EncodedUnderlyingSecurityDescLen = f_UnderlyingInstrument_EncodedUnderlyingSecurityDescLen;
        f_UnderlyingInstrument_UnderlyingDirtyPrice = f_UnderlyingInstrument_UnderlyingDirtyPrice;
        f_UnderlyingInstrument_UnderlyingRepoCollateralSecurityType = f_UnderlyingInstrument_UnderlyingRepoCollateralSecurityType;
        f_UnderlyingInstrument_UnderlyingLocaleOfIssue = f_UnderlyingInstrument_UnderlyingLocaleOfIssue;
        f_UnderlyingInstrument_UnderlyingSecurityDesc = f_UnderlyingInstrument_UnderlyingSecurityDesc;
        f_UnderlyingInstrument_EncodedUnderlyingSecurityDesc = f_UnderlyingInstrument_EncodedUnderlyingSecurityDesc;
        f_UnderlyingInstrument_UnderlyingCPRegType = f_UnderlyingInstrument_UnderlyingCPRegType;
        f_UnderlyingInstrument_UnderlyingRepurchaseTerm = f_UnderlyingInstrument_UnderlyingRepurchaseTerm
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_Instrument (msg)  =
    opt msg "351" parse_string (fun msg f_Instrument_EncodedSecurityDesc -> opt msg "691" parse_string (fun msg f_Instrument_Pool -> opt msg "207" parse_Exchange (fun msg f_Instrument_SecurityExchange -> opt msg "227" parse_float (fun msg f_Instrument_RepurchaseRate -> opt msg "472" parse_string (fun msg f_Instrument_LocaleOfIssue -> opt msg "762" parse_string (fun msg f_Instrument_SecuritySubType -> opt msg "48" parse_string (fun msg f_Instrument_SecurityID -> opt msg "875" parse_CPProgram (fun msg f_Instrument_CPProgram -> opt msg "224" parse_LocalMktDate (fun msg f_Instrument_CouponPaymentDate -> opt msg "228" parse_float (fun msg f_Instrument_Factor -> opt msg "226" parse_int (fun msg f_Instrument_RepurchaseTerm -> opt msg "543" parse_string (fun msg f_Instrument_InstrRegistry -> opt msg "461" parse_string (fun msg f_Instrument_CFICode -> opt msg "349" parse_string (fun msg f_Instrument_EncodedIssuer -> opt msg "947" parse_Currency (fun msg f_Instrument_StrikeCurrency -> opt msg "55" parse_string (fun msg f_Instrument_Symbol -> opt msg "460" parse_Product (fun msg f_Instrument_Product -> opt msg "200" parse_MonthYear (fun msg f_Instrument_MaturityMonthYear -> opt msg "667" parse_MonthYear (fun msg f_Instrument_ContractSettlMonth -> opt msg "106" parse_string (fun msg f_Instrument_Issuer -> opt msg "65" parse_string (fun msg f_Instrument_SymbolSfx -> opt msg "167" parse_SecurityType (fun msg f_Instrument_SecurityType -> opt msg "470" parse_Country (fun msg f_Instrument_CountryOfIssue -> opt msg "239" parse_string (fun msg f_Instrument_RepoCollateralSecurityType -> opt msg "240" parse_LocalMktDate (fun msg f_Instrument_RedemptionDate -> opt msg "471" parse_string (fun msg f_Instrument_StateOrProvinceOfIssue -> opt msg "350" parse_int (fun msg f_Instrument_EncodedSecurityDescLen -> opt msg "231" parse_float (fun msg f_Instrument_ContractMultiplier -> opt msg "874" parse_LocalMktDate (fun msg f_Instrument_InterestAccrualDate -> opt msg "876" parse_string (fun msg f_Instrument_CPRegType -> opt msg "348" parse_int (fun msg f_Instrument_EncodedIssuerLen -> opt msg "873" parse_LocalMktDate (fun msg f_Instrument_DatedDate -> opt msg "22" parse_SecurityIDSource (fun msg f_Instrument_SecurityIDSource -> opt msg "541" parse_LocalMktDate (fun msg f_Instrument_MaturityDate -> opt msg "206" parse_char (fun msg f_Instrument_OptAttribute -> opt msg "225" parse_LocalMktDate (fun msg f_Instrument_IssueDate -> opt msg "255" parse_string (fun msg f_Instrument_CreditRating -> opt msg "202" parse_float (fun msg f_Instrument_StrikePrice -> opt msg "223" parse_float (fun msg f_Instrument_CouponRate -> opt msg "107" parse_string (fun msg f_Instrument_SecurityDesc -> repeating msg "454" parse_SecAltIDGrp (fun msg f_Instrument_SecAltIDGrp -> repeating msg "864" parse_EvntGrp (fun msg f_Instrument_EvntGrp -> (ParseSuccess {
        f_Instrument_EvntGrp = f_Instrument_EvntGrp;
        f_Instrument_SecAltIDGrp = f_Instrument_SecAltIDGrp;
        f_Instrument_SecurityDesc = f_Instrument_SecurityDesc;
        f_Instrument_CouponRate = f_Instrument_CouponRate;
        f_Instrument_StrikePrice = f_Instrument_StrikePrice;
        f_Instrument_CreditRating = f_Instrument_CreditRating;
        f_Instrument_IssueDate = f_Instrument_IssueDate;
        f_Instrument_OptAttribute = f_Instrument_OptAttribute;
        f_Instrument_MaturityDate = f_Instrument_MaturityDate;
        f_Instrument_SecurityIDSource = f_Instrument_SecurityIDSource;
        f_Instrument_DatedDate = f_Instrument_DatedDate;
        f_Instrument_EncodedIssuerLen = f_Instrument_EncodedIssuerLen;
        f_Instrument_CPRegType = f_Instrument_CPRegType;
        f_Instrument_InterestAccrualDate = f_Instrument_InterestAccrualDate;
        f_Instrument_ContractMultiplier = f_Instrument_ContractMultiplier;
        f_Instrument_EncodedSecurityDescLen = f_Instrument_EncodedSecurityDescLen;
        f_Instrument_StateOrProvinceOfIssue = f_Instrument_StateOrProvinceOfIssue;
        f_Instrument_RedemptionDate = f_Instrument_RedemptionDate;
        f_Instrument_RepoCollateralSecurityType = f_Instrument_RepoCollateralSecurityType;
        f_Instrument_CountryOfIssue = f_Instrument_CountryOfIssue;
        f_Instrument_SecurityType = f_Instrument_SecurityType;
        f_Instrument_SymbolSfx = f_Instrument_SymbolSfx;
        f_Instrument_Issuer = f_Instrument_Issuer;
        f_Instrument_ContractSettlMonth = f_Instrument_ContractSettlMonth;
        f_Instrument_MaturityMonthYear = f_Instrument_MaturityMonthYear;
        f_Instrument_Product = f_Instrument_Product;
        f_Instrument_Symbol = f_Instrument_Symbol;
        f_Instrument_StrikeCurrency = f_Instrument_StrikeCurrency;
        f_Instrument_EncodedIssuer = f_Instrument_EncodedIssuer;
        f_Instrument_CFICode = f_Instrument_CFICode;
        f_Instrument_InstrRegistry = f_Instrument_InstrRegistry;
        f_Instrument_RepurchaseTerm = f_Instrument_RepurchaseTerm;
        f_Instrument_Factor = f_Instrument_Factor;
        f_Instrument_CouponPaymentDate = f_Instrument_CouponPaymentDate;
        f_Instrument_CPProgram = f_Instrument_CPProgram;
        f_Instrument_SecurityID = f_Instrument_SecurityID;
        f_Instrument_SecuritySubType = f_Instrument_SecuritySubType;
        f_Instrument_LocaleOfIssue = f_Instrument_LocaleOfIssue;
        f_Instrument_RepurchaseRate = f_Instrument_RepurchaseRate;
        f_Instrument_SecurityExchange = f_Instrument_SecurityExchange;
        f_Instrument_Pool = f_Instrument_Pool;
        f_Instrument_EncodedSecurityDesc = f_Instrument_EncodedSecurityDesc
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_NestedParties (msg)  =
    opt msg "525" parse_char (fun msg f_NestedParties_NestedPartyIDSource -> opt msg "538" parse_int (fun msg f_NestedParties_NestedPartyRole -> opt msg "524" parse_string (fun msg f_NestedParties_NestedPartyID -> opt msg "539" parse_int (fun msg f_NestedParties_NoNestedPartyIDs -> repeating msg "804" parse_NstdPtysSubGrp (fun msg f_NestedParties_NstdPtysSubGrp -> (ParseSuccess {
        f_NestedParties_NstdPtysSubGrp = f_NestedParties_NstdPtysSubGrp;
        f_NestedParties_NoNestedPartyIDs = f_NestedParties_NoNestedPartyIDs;
        f_NestedParties_NestedPartyID = f_NestedParties_NestedPartyID;
        f_NestedParties_NestedPartyRole = f_NestedParties_NestedPartyRole;
        f_NestedParties_NestedPartyIDSource = f_NestedParties_NestedPartyIDSource
    },msg)
    )
    )
    )
    )
    )
;;

let parse_NestedParties3 (msg)  =
    opt msg "949" parse_string (fun msg f_NestedParties3_Nested3PartyID -> opt msg "948" parse_int (fun msg f_NestedParties3_NoNested3PartyIDs -> opt msg "950" parse_char (fun msg f_NestedParties3_Nested3PartyIDSource -> opt msg "951" parse_int (fun msg f_NestedParties3_Nested3PartyRole -> repeating msg "952" parse_NstdPtys3SubGrp (fun msg f_NestedParties3_NstdPtys3SubGrp -> (ParseSuccess {
        f_NestedParties3_NstdPtys3SubGrp = f_NestedParties3_NstdPtys3SubGrp;
        f_NestedParties3_Nested3PartyRole = f_NestedParties3_Nested3PartyRole;
        f_NestedParties3_Nested3PartyIDSource = f_NestedParties3_Nested3PartyIDSource;
        f_NestedParties3_NoNested3PartyIDs = f_NestedParties3_NoNested3PartyIDs;
        f_NestedParties3_Nested3PartyID = f_NestedParties3_Nested3PartyID
    },msg)
    )
    )
    )
    )
    )
;;

let parse_SettlParties (msg)  =
    opt msg "782" parse_string (fun msg f_SettlParties_SettlPartyID -> opt msg "784" parse_int (fun msg f_SettlParties_SettlPartyRole -> opt msg "783" parse_char (fun msg f_SettlParties_SettlPartyIDSource -> opt msg "781" parse_int (fun msg f_SettlParties_NoSettlPartyIDs -> repeating msg "801" parse_SettlPtysSubGrp (fun msg f_SettlParties_SettlPtysSubGrp -> (ParseSuccess {
        f_SettlParties_SettlPtysSubGrp = f_SettlParties_SettlPtysSubGrp;
        f_SettlParties_NoSettlPartyIDs = f_SettlParties_NoSettlPartyIDs;
        f_SettlParties_SettlPartyIDSource = f_SettlParties_SettlPartyIDSource;
        f_SettlParties_SettlPartyRole = f_SettlParties_SettlPartyRole;
        f_SettlParties_SettlPartyID = f_SettlParties_SettlPartyID
    },msg)
    )
    )
    )
    )
    )
;;

let parse_Parties (msg)  =
    opt msg "453" parse_int (fun msg f_Parties_NoPartyIDs -> opt msg "452" parse_PartyRole (fun msg f_Parties_PartyRole -> opt msg "448" parse_string (fun msg f_Parties_PartyID -> opt msg "447" parse_PartyIDSource (fun msg f_Parties_PartyIDSource -> repeating msg "802" parse_PtysSubGrp (fun msg f_Parties_PtysSubGrp -> (ParseSuccess {
        f_Parties_PtysSubGrp = f_Parties_PtysSubGrp;
        f_Parties_PartyIDSource = f_Parties_PartyIDSource;
        f_Parties_PartyID = f_Parties_PartyID;
        f_Parties_PartyRole = f_Parties_PartyRole;
        f_Parties_NoPartyIDs = f_Parties_NoPartyIDs
    },msg)
    )
    )
    )
    )
    )
;;

let parse_SideCrossOrdCxlGrp (msg)  =
    opt msg "41" parse_string (fun msg f_SideCrossOrdCxlGrp_OrigClOrdID -> opt msg "75" parse_LocalMktDate (fun msg f_SideCrossOrdCxlGrp_TradeDate -> opt msg "583" parse_string (fun msg f_SideCrossOrdCxlGrp_ClOrdLinkID -> opt msg "376" parse_string (fun msg f_SideCrossOrdCxlGrp_ComplianceID -> opt msg "586" parse_UTCTimestamp (fun msg f_SideCrossOrdCxlGrp_OrigOrdModTime -> opt msg "354" parse_int (fun msg f_SideCrossOrdCxlGrp_EncodedTextLen -> opt msg "54" parse_Side (fun msg f_SideCrossOrdCxlGrp_Side -> opt msg "526" parse_string (fun msg f_SideCrossOrdCxlGrp_SecondaryClOrdID -> opt msg "58" parse_string (fun msg f_SideCrossOrdCxlGrp_Text -> opt msg "229" parse_LocalMktDate (fun msg f_SideCrossOrdCxlGrp_TradeOriginationDate -> opt msg "11" parse_string (fun msg f_SideCrossOrdCxlGrp_ClOrdID -> opt msg "552" parse_int (fun msg f_SideCrossOrdCxlGrp_NoSides -> opt msg "355" parse_string (fun msg f_SideCrossOrdCxlGrp_EncodedText -> block msg parse_OrderQtyData (fun msg f_SideCrossOrdCxlGrp_OrderQtyData -> repeating msg "453" parse_Parties (fun msg f_SideCrossOrdCxlGrp_Parties -> (ParseSuccess {
        f_SideCrossOrdCxlGrp_Parties = f_SideCrossOrdCxlGrp_Parties;
        f_SideCrossOrdCxlGrp_OrderQtyData = f_SideCrossOrdCxlGrp_OrderQtyData;
        f_SideCrossOrdCxlGrp_EncodedText = f_SideCrossOrdCxlGrp_EncodedText;
        f_SideCrossOrdCxlGrp_NoSides = f_SideCrossOrdCxlGrp_NoSides;
        f_SideCrossOrdCxlGrp_ClOrdID = f_SideCrossOrdCxlGrp_ClOrdID;
        f_SideCrossOrdCxlGrp_TradeOriginationDate = f_SideCrossOrdCxlGrp_TradeOriginationDate;
        f_SideCrossOrdCxlGrp_Text = f_SideCrossOrdCxlGrp_Text;
        f_SideCrossOrdCxlGrp_SecondaryClOrdID = f_SideCrossOrdCxlGrp_SecondaryClOrdID;
        f_SideCrossOrdCxlGrp_Side = f_SideCrossOrdCxlGrp_Side;
        f_SideCrossOrdCxlGrp_EncodedTextLen = f_SideCrossOrdCxlGrp_EncodedTextLen;
        f_SideCrossOrdCxlGrp_OrigOrdModTime = f_SideCrossOrdCxlGrp_OrigOrdModTime;
        f_SideCrossOrdCxlGrp_ComplianceID = f_SideCrossOrdCxlGrp_ComplianceID;
        f_SideCrossOrdCxlGrp_ClOrdLinkID = f_SideCrossOrdCxlGrp_ClOrdLinkID;
        f_SideCrossOrdCxlGrp_TradeDate = f_SideCrossOrdCxlGrp_TradeDate;
        f_SideCrossOrdCxlGrp_OrigClOrdID = f_SideCrossOrdCxlGrp_OrigClOrdID
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_DlvyInstGrp (msg)  =
    opt msg "165" parse_SettlInstSource (fun msg f_DlvyInstGrp_SettlInstSource -> opt msg "85" parse_int (fun msg f_DlvyInstGrp_NoDlvyInst -> opt msg "787" parse_DlvyInstType (fun msg f_DlvyInstGrp_DlvyInstType -> repeating msg "781" parse_SettlParties (fun msg f_DlvyInstGrp_SettlParties -> (ParseSuccess {
        f_DlvyInstGrp_SettlParties = f_DlvyInstGrp_SettlParties;
        f_DlvyInstGrp_DlvyInstType = f_DlvyInstGrp_DlvyInstType;
        f_DlvyInstGrp_NoDlvyInst = f_DlvyInstGrp_NoDlvyInst;
        f_DlvyInstGrp_SettlInstSource = f_DlvyInstGrp_SettlInstSource
    },msg)
    )
    )
    )
    )
;;

let parse_PreAllocMlegGrp (msg)  =
    opt msg "79" parse_string (fun msg f_PreAllocMlegGrp_AllocAccount -> opt msg "661" parse_int (fun msg f_PreAllocMlegGrp_AllocAcctIDSource -> opt msg "80" parse_float (fun msg f_PreAllocMlegGrp_AllocQty -> opt msg "736" parse_Currency (fun msg f_PreAllocMlegGrp_AllocSettlCurrency -> opt msg "78" parse_int (fun msg f_PreAllocMlegGrp_NoAllocs -> opt msg "467" parse_string (fun msg f_PreAllocMlegGrp_IndividualAllocID -> repeating msg "948" parse_NestedParties3 (fun msg f_PreAllocMlegGrp_NestedParties3 -> (ParseSuccess {
        f_PreAllocMlegGrp_NestedParties3 = f_PreAllocMlegGrp_NestedParties3;
        f_PreAllocMlegGrp_IndividualAllocID = f_PreAllocMlegGrp_IndividualAllocID;
        f_PreAllocMlegGrp_NoAllocs = f_PreAllocMlegGrp_NoAllocs;
        f_PreAllocMlegGrp_AllocSettlCurrency = f_PreAllocMlegGrp_AllocSettlCurrency;
        f_PreAllocMlegGrp_AllocQty = f_PreAllocMlegGrp_AllocQty;
        f_PreAllocMlegGrp_AllocAcctIDSource = f_PreAllocMlegGrp_AllocAcctIDSource;
        f_PreAllocMlegGrp_AllocAccount = f_PreAllocMlegGrp_AllocAccount
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_PositionQty (msg)  =
    opt msg "706" parse_PosQtyStatus (fun msg f_PositionQty_PosQtyStatus -> opt msg "704" parse_float (fun msg f_PositionQty_LongQty -> opt msg "705" parse_float (fun msg f_PositionQty_ShortQty -> opt msg "703" parse_PosType (fun msg f_PositionQty_PosType -> opt msg "702" parse_int (fun msg f_PositionQty_NoPositions -> repeating msg "539" parse_NestedParties (fun msg f_PositionQty_NestedParties -> (ParseSuccess {
        f_PositionQty_NestedParties = f_PositionQty_NestedParties;
        f_PositionQty_NoPositions = f_PositionQty_NoPositions;
        f_PositionQty_PosType = f_PositionQty_PosType;
        f_PositionQty_ShortQty = f_PositionQty_ShortQty;
        f_PositionQty_LongQty = f_PositionQty_LongQty;
        f_PositionQty_PosQtyStatus = f_PositionQty_PosQtyStatus
    },msg)
    )
    )
    )
    )
    )
    )
;;

let parse_RgstDtlsGrp (msg)  =
    opt msg "482" parse_string (fun msg f_RgstDtlsGrp_MailingInst -> opt msg "474" parse_string (fun msg f_RgstDtlsGrp_MailingDtls -> opt msg "475" parse_Country (fun msg f_RgstDtlsGrp_InvestorCountryOfResidence -> opt msg "473" parse_int (fun msg f_RgstDtlsGrp_NoRegistDtls -> opt msg "511" parse_string (fun msg f_RgstDtlsGrp_RegistEmail -> opt msg "486" parse_LocalMktDate (fun msg f_RgstDtlsGrp_DateOfBirth -> opt msg "522" parse_OwnerType (fun msg f_RgstDtlsGrp_OwnerType -> opt msg "509" parse_string (fun msg f_RgstDtlsGrp_RegistDtls -> repeating msg "539" parse_NestedParties (fun msg f_RgstDtlsGrp_NestedParties -> (ParseSuccess {
        f_RgstDtlsGrp_NestedParties = f_RgstDtlsGrp_NestedParties;
        f_RgstDtlsGrp_RegistDtls = f_RgstDtlsGrp_RegistDtls;
        f_RgstDtlsGrp_OwnerType = f_RgstDtlsGrp_OwnerType;
        f_RgstDtlsGrp_DateOfBirth = f_RgstDtlsGrp_DateOfBirth;
        f_RgstDtlsGrp_RegistEmail = f_RgstDtlsGrp_RegistEmail;
        f_RgstDtlsGrp_NoRegistDtls = f_RgstDtlsGrp_NoRegistDtls;
        f_RgstDtlsGrp_InvestorCountryOfResidence = f_RgstDtlsGrp_InvestorCountryOfResidence;
        f_RgstDtlsGrp_MailingDtls = f_RgstDtlsGrp_MailingDtls;
        f_RgstDtlsGrp_MailingInst = f_RgstDtlsGrp_MailingInst
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_PreAllocGrp (msg)  =
    opt msg "79" parse_string (fun msg f_PreAllocGrp_AllocAccount -> opt msg "661" parse_int (fun msg f_PreAllocGrp_AllocAcctIDSource -> opt msg "80" parse_float (fun msg f_PreAllocGrp_AllocQty -> opt msg "736" parse_Currency (fun msg f_PreAllocGrp_AllocSettlCurrency -> opt msg "78" parse_int (fun msg f_PreAllocGrp_NoAllocs -> opt msg "467" parse_string (fun msg f_PreAllocGrp_IndividualAllocID -> repeating msg "539" parse_NestedParties (fun msg f_PreAllocGrp_NestedParties -> (ParseSuccess {
        f_PreAllocGrp_NestedParties = f_PreAllocGrp_NestedParties;
        f_PreAllocGrp_IndividualAllocID = f_PreAllocGrp_IndividualAllocID;
        f_PreAllocGrp_NoAllocs = f_PreAllocGrp_NoAllocs;
        f_PreAllocGrp_AllocSettlCurrency = f_PreAllocGrp_AllocSettlCurrency;
        f_PreAllocGrp_AllocQty = f_PreAllocGrp_AllocQty;
        f_PreAllocGrp_AllocAcctIDSource = f_PreAllocGrp_AllocAcctIDSource;
        f_PreAllocGrp_AllocAccount = f_PreAllocGrp_AllocAccount
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_InstrmtGrp (msg)  =
    opt msg "146" parse_int (fun msg f_InstrmtGrp_NoRelatedSym -> block msg parse_Instrument (fun msg f_InstrmtGrp_Instrument -> (ParseSuccess {
        f_InstrmtGrp_Instrument = f_InstrmtGrp_Instrument;
        f_InstrmtGrp_NoRelatedSym = f_InstrmtGrp_NoRelatedSym
    },msg)
    )
    )
;;

let parse_InstrmtStrkPxGrp (msg)  =
    opt msg "428" parse_int (fun msg f_InstrmtStrkPxGrp_NoStrikes -> block msg parse_Instrument (fun msg f_InstrmtStrkPxGrp_Instrument -> (ParseSuccess {
        f_InstrmtStrkPxGrp_Instrument = f_InstrmtStrkPxGrp_Instrument;
        f_InstrmtStrkPxGrp_NoStrikes = f_InstrmtStrkPxGrp_NoStrikes
    },msg)
    )
    )
;;

let parse_UndInstrmtGrp (msg)  =
    opt msg "711" parse_int (fun msg f_UndInstrmtGrp_NoUnderlyings -> block msg parse_UnderlyingInstrument (fun msg f_UndInstrmtGrp_UnderlyingInstrument -> (ParseSuccess {
        f_UndInstrmtGrp_UnderlyingInstrument = f_UndInstrmtGrp_UnderlyingInstrument;
        f_UndInstrmtGrp_NoUnderlyings = f_UndInstrmtGrp_NoUnderlyings
    },msg)
    )
    )
;;

let parse_UndInstrmtStrkPxGrp (msg)  =
    opt msg "526" parse_string (fun msg f_UndInstrmtStrkPxGrp_SecondaryClOrdID -> opt msg "58" parse_string (fun msg f_UndInstrmtStrkPxGrp_Text -> opt msg "711" parse_int (fun msg f_UndInstrmtStrkPxGrp_NoUnderlyings -> opt msg "11" parse_string (fun msg f_UndInstrmtStrkPxGrp_ClOrdID -> opt msg "140" parse_float (fun msg f_UndInstrmtStrkPxGrp_PrevClosePx -> opt msg "355" parse_string (fun msg f_UndInstrmtStrkPxGrp_EncodedText -> opt msg "15" parse_Currency (fun msg f_UndInstrmtStrkPxGrp_Currency -> opt msg "44" parse_float (fun msg f_UndInstrmtStrkPxGrp_Price -> opt msg "354" parse_int (fun msg f_UndInstrmtStrkPxGrp_EncodedTextLen -> opt msg "54" parse_Side (fun msg f_UndInstrmtStrkPxGrp_Side -> block msg parse_UnderlyingInstrument (fun msg f_UndInstrmtStrkPxGrp_UnderlyingInstrument -> (ParseSuccess {
        f_UndInstrmtStrkPxGrp_UnderlyingInstrument = f_UndInstrmtStrkPxGrp_UnderlyingInstrument;
        f_UndInstrmtStrkPxGrp_Side = f_UndInstrmtStrkPxGrp_Side;
        f_UndInstrmtStrkPxGrp_EncodedTextLen = f_UndInstrmtStrkPxGrp_EncodedTextLen;
        f_UndInstrmtStrkPxGrp_Price = f_UndInstrmtStrkPxGrp_Price;
        f_UndInstrmtStrkPxGrp_Currency = f_UndInstrmtStrkPxGrp_Currency;
        f_UndInstrmtStrkPxGrp_EncodedText = f_UndInstrmtStrkPxGrp_EncodedText;
        f_UndInstrmtStrkPxGrp_PrevClosePx = f_UndInstrmtStrkPxGrp_PrevClosePx;
        f_UndInstrmtStrkPxGrp_ClOrdID = f_UndInstrmtStrkPxGrp_ClOrdID;
        f_UndInstrmtStrkPxGrp_NoUnderlyings = f_UndInstrmtStrkPxGrp_NoUnderlyings;
        f_UndInstrmtStrkPxGrp_Text = f_UndInstrmtStrkPxGrp_Text;
        f_UndInstrmtStrkPxGrp_SecondaryClOrdID = f_UndInstrmtStrkPxGrp_SecondaryClOrdID
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_PosUndInstrmtGrp (msg)  =
    opt msg "732" parse_float (fun msg f_PosUndInstrmtGrp_UnderlyingSettlPrice -> opt msg "711" parse_int (fun msg f_PosUndInstrmtGrp_NoUnderlyings -> opt msg "733" parse_int (fun msg f_PosUndInstrmtGrp_UnderlyingSettlPriceType -> block msg parse_UnderlyingInstrument (fun msg f_PosUndInstrmtGrp_UnderlyingInstrument -> (ParseSuccess {
        f_PosUndInstrmtGrp_UnderlyingInstrument = f_PosUndInstrmtGrp_UnderlyingInstrument;
        f_PosUndInstrmtGrp_UnderlyingSettlPriceType = f_PosUndInstrmtGrp_UnderlyingSettlPriceType;
        f_PosUndInstrmtGrp_NoUnderlyings = f_PosUndInstrmtGrp_NoUnderlyings;
        f_PosUndInstrmtGrp_UnderlyingSettlPrice = f_PosUndInstrmtGrp_UnderlyingSettlPrice
    },msg)
    )
    )
    )
    )
;;

let parse_UndInstrmtCollGrp (msg)  =
    opt msg "711" parse_int (fun msg f_UndInstrmtCollGrp_NoUnderlyings -> opt msg "944" parse_CollAction (fun msg f_UndInstrmtCollGrp_CollAction -> block msg parse_UnderlyingInstrument (fun msg f_UndInstrmtCollGrp_UnderlyingInstrument -> (ParseSuccess {
        f_UndInstrmtCollGrp_UnderlyingInstrument = f_UndInstrmtCollGrp_UnderlyingInstrument;
        f_UndInstrmtCollGrp_CollAction = f_UndInstrmtCollGrp_CollAction;
        f_UndInstrmtCollGrp_NoUnderlyings = f_UndInstrmtCollGrp_NoUnderlyings
    },msg)
    )
    )
    )
;;

let parse_InstrmtLegSecListGrp (msg)  =
    opt msg "555" parse_int (fun msg f_InstrmtLegSecListGrp_NoLegs -> opt msg "587" parse_char (fun msg f_InstrmtLegSecListGrp_LegSettlType -> opt msg "690" parse_LegSwapType (fun msg f_InstrmtLegSecListGrp_LegSwapType -> block msg parse_InstrumentLeg (fun msg f_InstrmtLegSecListGrp_InstrumentLeg -> block msg parse_LegBenchmarkCurveData (fun msg f_InstrmtLegSecListGrp_LegBenchmarkCurveData -> repeating msg "683" parse_LegStipulations (fun msg f_InstrmtLegSecListGrp_LegStipulations -> (ParseSuccess {
        f_InstrmtLegSecListGrp_LegStipulations = f_InstrmtLegSecListGrp_LegStipulations;
        f_InstrmtLegSecListGrp_LegBenchmarkCurveData = f_InstrmtLegSecListGrp_LegBenchmarkCurveData;
        f_InstrmtLegSecListGrp_InstrumentLeg = f_InstrmtLegSecListGrp_InstrumentLeg;
        f_InstrmtLegSecListGrp_LegSwapType = f_InstrmtLegSecListGrp_LegSwapType;
        f_InstrmtLegSecListGrp_LegSettlType = f_InstrmtLegSecListGrp_LegSettlType;
        f_InstrmtLegSecListGrp_NoLegs = f_InstrmtLegSecListGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
;;

let parse_LegQuotStatGrp (msg)  =
    opt msg "555" parse_int (fun msg f_LegQuotStatGrp_NoLegs -> opt msg "587" parse_char (fun msg f_LegQuotStatGrp_LegSettlType -> opt msg "690" parse_LegSwapType (fun msg f_LegQuotStatGrp_LegSwapType -> opt msg "588" parse_LocalMktDate (fun msg f_LegQuotStatGrp_LegSettlDate -> opt msg "687" parse_float (fun msg f_LegQuotStatGrp_LegQty -> block msg parse_InstrumentLeg (fun msg f_LegQuotStatGrp_InstrumentLeg -> repeating msg "539" parse_NestedParties (fun msg f_LegQuotStatGrp_NestedParties -> repeating msg "683" parse_LegStipulations (fun msg f_LegQuotStatGrp_LegStipulations -> (ParseSuccess {
        f_LegQuotStatGrp_LegStipulations = f_LegQuotStatGrp_LegStipulations;
        f_LegQuotStatGrp_NestedParties = f_LegQuotStatGrp_NestedParties;
        f_LegQuotStatGrp_InstrumentLeg = f_LegQuotStatGrp_InstrumentLeg;
        f_LegQuotStatGrp_LegQty = f_LegQuotStatGrp_LegQty;
        f_LegQuotStatGrp_LegSettlDate = f_LegQuotStatGrp_LegSettlDate;
        f_LegQuotStatGrp_LegSwapType = f_LegQuotStatGrp_LegSwapType;
        f_LegQuotStatGrp_LegSettlType = f_LegQuotStatGrp_LegSettlType;
        f_LegQuotStatGrp_NoLegs = f_LegQuotStatGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_InstrmtLegGrp (msg)  =
    opt msg "555" parse_int (fun msg f_InstrmtLegGrp_NoLegs -> block msg parse_InstrumentLeg (fun msg f_InstrmtLegGrp_InstrumentLeg -> (ParseSuccess {
        f_InstrmtLegGrp_InstrumentLeg = f_InstrmtLegGrp_InstrumentLeg;
        f_InstrmtLegGrp_NoLegs = f_InstrmtLegGrp_NoLegs
    },msg)
    )
    )
;;

let parse_QuotReqLegsGrp (msg)  =
    opt msg "555" parse_int (fun msg f_QuotReqLegsGrp_NoLegs -> opt msg "587" parse_char (fun msg f_QuotReqLegsGrp_LegSettlType -> opt msg "690" parse_LegSwapType (fun msg f_QuotReqLegsGrp_LegSwapType -> opt msg "588" parse_LocalMktDate (fun msg f_QuotReqLegsGrp_LegSettlDate -> opt msg "687" parse_float (fun msg f_QuotReqLegsGrp_LegQty -> block msg parse_InstrumentLeg (fun msg f_QuotReqLegsGrp_InstrumentLeg -> block msg parse_LegBenchmarkCurveData (fun msg f_QuotReqLegsGrp_LegBenchmarkCurveData -> repeating msg "539" parse_NestedParties (fun msg f_QuotReqLegsGrp_NestedParties -> repeating msg "683" parse_LegStipulations (fun msg f_QuotReqLegsGrp_LegStipulations -> (ParseSuccess {
        f_QuotReqLegsGrp_LegStipulations = f_QuotReqLegsGrp_LegStipulations;
        f_QuotReqLegsGrp_NestedParties = f_QuotReqLegsGrp_NestedParties;
        f_QuotReqLegsGrp_LegBenchmarkCurveData = f_QuotReqLegsGrp_LegBenchmarkCurveData;
        f_QuotReqLegsGrp_InstrumentLeg = f_QuotReqLegsGrp_InstrumentLeg;
        f_QuotReqLegsGrp_LegQty = f_QuotReqLegsGrp_LegQty;
        f_QuotReqLegsGrp_LegSettlDate = f_QuotReqLegsGrp_LegSettlDate;
        f_QuotReqLegsGrp_LegSwapType = f_QuotReqLegsGrp_LegSwapType;
        f_QuotReqLegsGrp_LegSettlType = f_QuotReqLegsGrp_LegSettlType;
        f_QuotReqLegsGrp_NoLegs = f_QuotReqLegsGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_InstrmtLegIOIGrp (msg)  =
    opt msg "555" parse_int (fun msg f_InstrmtLegIOIGrp_NoLegs -> opt msg "682" parse_string (fun msg f_InstrmtLegIOIGrp_LegIOIQty -> block msg parse_InstrumentLeg (fun msg f_InstrmtLegIOIGrp_InstrumentLeg -> repeating msg "683" parse_LegStipulations (fun msg f_InstrmtLegIOIGrp_LegStipulations -> (ParseSuccess {
        f_InstrmtLegIOIGrp_LegStipulations = f_InstrmtLegIOIGrp_LegStipulations;
        f_InstrmtLegIOIGrp_InstrumentLeg = f_InstrmtLegIOIGrp_InstrumentLeg;
        f_InstrmtLegIOIGrp_LegIOIQty = f_InstrmtLegIOIGrp_LegIOIQty;
        f_InstrmtLegIOIGrp_NoLegs = f_InstrmtLegIOIGrp_NoLegs
    },msg)
    )
    )
    )
    )
;;

let parse_TrdInstrmtLegGrp (msg)  =
    opt msg "555" parse_int (fun msg f_TrdInstrmtLegGrp_NoLegs -> opt msg "565" parse_int (fun msg f_TrdInstrmtLegGrp_LegCoveredOrUncovered -> opt msg "690" parse_LegSwapType (fun msg f_TrdInstrmtLegGrp_LegSwapType -> opt msg "588" parse_LocalMktDate (fun msg f_TrdInstrmtLegGrp_LegSettlDate -> opt msg "654" parse_string (fun msg f_TrdInstrmtLegGrp_LegRefID -> opt msg "566" parse_float (fun msg f_TrdInstrmtLegGrp_LegPrice -> opt msg "637" parse_float (fun msg f_TrdInstrmtLegGrp_LegLastPx -> opt msg "587" parse_char (fun msg f_TrdInstrmtLegGrp_LegSettlType -> opt msg "564" parse_char (fun msg f_TrdInstrmtLegGrp_LegPositionEffect -> opt msg "687" parse_float (fun msg f_TrdInstrmtLegGrp_LegQty -> block msg parse_InstrumentLeg (fun msg f_TrdInstrmtLegGrp_InstrumentLeg -> repeating msg "539" parse_NestedParties (fun msg f_TrdInstrmtLegGrp_NestedParties -> repeating msg "683" parse_LegStipulations (fun msg f_TrdInstrmtLegGrp_LegStipulations -> (ParseSuccess {
        f_TrdInstrmtLegGrp_LegStipulations = f_TrdInstrmtLegGrp_LegStipulations;
        f_TrdInstrmtLegGrp_NestedParties = f_TrdInstrmtLegGrp_NestedParties;
        f_TrdInstrmtLegGrp_InstrumentLeg = f_TrdInstrmtLegGrp_InstrumentLeg;
        f_TrdInstrmtLegGrp_LegQty = f_TrdInstrmtLegGrp_LegQty;
        f_TrdInstrmtLegGrp_LegPositionEffect = f_TrdInstrmtLegGrp_LegPositionEffect;
        f_TrdInstrmtLegGrp_LegSettlType = f_TrdInstrmtLegGrp_LegSettlType;
        f_TrdInstrmtLegGrp_LegLastPx = f_TrdInstrmtLegGrp_LegLastPx;
        f_TrdInstrmtLegGrp_LegPrice = f_TrdInstrmtLegGrp_LegPrice;
        f_TrdInstrmtLegGrp_LegRefID = f_TrdInstrmtLegGrp_LegRefID;
        f_TrdInstrmtLegGrp_LegSettlDate = f_TrdInstrmtLegGrp_LegSettlDate;
        f_TrdInstrmtLegGrp_LegSwapType = f_TrdInstrmtLegGrp_LegSwapType;
        f_TrdInstrmtLegGrp_LegCoveredOrUncovered = f_TrdInstrmtLegGrp_LegCoveredOrUncovered;
        f_TrdInstrmtLegGrp_NoLegs = f_TrdInstrmtLegGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_InstrmtLegExecGrp (msg)  =
    opt msg "555" parse_int (fun msg f_InstrmtLegExecGrp_NoLegs -> opt msg "565" parse_int (fun msg f_InstrmtLegExecGrp_LegCoveredOrUncovered -> opt msg "690" parse_LegSwapType (fun msg f_InstrmtLegExecGrp_LegSwapType -> opt msg "588" parse_LocalMktDate (fun msg f_InstrmtLegExecGrp_LegSettlDate -> opt msg "654" parse_string (fun msg f_InstrmtLegExecGrp_LegRefID -> opt msg "566" parse_float (fun msg f_InstrmtLegExecGrp_LegPrice -> opt msg "637" parse_float (fun msg f_InstrmtLegExecGrp_LegLastPx -> opt msg "587" parse_char (fun msg f_InstrmtLegExecGrp_LegSettlType -> opt msg "564" parse_char (fun msg f_InstrmtLegExecGrp_LegPositionEffect -> opt msg "687" parse_float (fun msg f_InstrmtLegExecGrp_LegQty -> block msg parse_InstrumentLeg (fun msg f_InstrmtLegExecGrp_InstrumentLeg -> repeating msg "539" parse_NestedParties (fun msg f_InstrmtLegExecGrp_NestedParties -> repeating msg "683" parse_LegStipulations (fun msg f_InstrmtLegExecGrp_LegStipulations -> (ParseSuccess {
        f_InstrmtLegExecGrp_LegStipulations = f_InstrmtLegExecGrp_LegStipulations;
        f_InstrmtLegExecGrp_NestedParties = f_InstrmtLegExecGrp_NestedParties;
        f_InstrmtLegExecGrp_InstrumentLeg = f_InstrmtLegExecGrp_InstrumentLeg;
        f_InstrmtLegExecGrp_LegQty = f_InstrmtLegExecGrp_LegQty;
        f_InstrmtLegExecGrp_LegPositionEffect = f_InstrmtLegExecGrp_LegPositionEffect;
        f_InstrmtLegExecGrp_LegSettlType = f_InstrmtLegExecGrp_LegSettlType;
        f_InstrmtLegExecGrp_LegLastPx = f_InstrmtLegExecGrp_LegLastPx;
        f_InstrmtLegExecGrp_LegPrice = f_InstrmtLegExecGrp_LegPrice;
        f_InstrmtLegExecGrp_LegRefID = f_InstrmtLegExecGrp_LegRefID;
        f_InstrmtLegExecGrp_LegSettlDate = f_InstrmtLegExecGrp_LegSettlDate;
        f_InstrmtLegExecGrp_LegSwapType = f_InstrmtLegExecGrp_LegSwapType;
        f_InstrmtLegExecGrp_LegCoveredOrUncovered = f_InstrmtLegExecGrp_LegCoveredOrUncovered;
        f_InstrmtLegExecGrp_NoLegs = f_InstrmtLegExecGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_LegQuotGrp (msg)  =
    opt msg "555" parse_int (fun msg f_LegQuotGrp_NoLegs -> opt msg "587" parse_char (fun msg f_LegQuotGrp_LegSettlType -> opt msg "690" parse_LegSwapType (fun msg f_LegQuotGrp_LegSwapType -> opt msg "684" parse_float (fun msg f_LegQuotGrp_LegOfferPx -> opt msg "588" parse_LocalMktDate (fun msg f_LegQuotGrp_LegSettlDate -> opt msg "687" parse_float (fun msg f_LegQuotGrp_LegQty -> opt msg "686" parse_int (fun msg f_LegQuotGrp_LegPriceType -> opt msg "681" parse_float (fun msg f_LegQuotGrp_LegBidPx -> block msg parse_InstrumentLeg (fun msg f_LegQuotGrp_InstrumentLeg -> block msg parse_LegBenchmarkCurveData (fun msg f_LegQuotGrp_LegBenchmarkCurveData -> repeating msg "539" parse_NestedParties (fun msg f_LegQuotGrp_NestedParties -> repeating msg "683" parse_LegStipulations (fun msg f_LegQuotGrp_LegStipulations -> (ParseSuccess {
        f_LegQuotGrp_LegStipulations = f_LegQuotGrp_LegStipulations;
        f_LegQuotGrp_NestedParties = f_LegQuotGrp_NestedParties;
        f_LegQuotGrp_LegBenchmarkCurveData = f_LegQuotGrp_LegBenchmarkCurveData;
        f_LegQuotGrp_InstrumentLeg = f_LegQuotGrp_InstrumentLeg;
        f_LegQuotGrp_LegBidPx = f_LegQuotGrp_LegBidPx;
        f_LegQuotGrp_LegPriceType = f_LegQuotGrp_LegPriceType;
        f_LegQuotGrp_LegQty = f_LegQuotGrp_LegQty;
        f_LegQuotGrp_LegSettlDate = f_LegQuotGrp_LegSettlDate;
        f_LegQuotGrp_LegOfferPx = f_LegQuotGrp_LegOfferPx;
        f_LegQuotGrp_LegSwapType = f_LegQuotGrp_LegSwapType;
        f_LegQuotGrp_LegSettlType = f_LegQuotGrp_LegSettlType;
        f_LegQuotGrp_NoLegs = f_LegQuotGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_OrdAllocGrp (msg)  =
    opt msg "37" parse_string (fun msg f_OrdAllocGrp_OrderID -> opt msg "526" parse_string (fun msg f_OrdAllocGrp_SecondaryClOrdID -> opt msg "38" parse_float (fun msg f_OrdAllocGrp_OrderQty -> opt msg "799" parse_float (fun msg f_OrdAllocGrp_OrderAvgPx -> opt msg "11" parse_string (fun msg f_OrdAllocGrp_ClOrdID -> opt msg "198" parse_string (fun msg f_OrdAllocGrp_SecondaryOrderID -> opt msg "73" parse_int (fun msg f_OrdAllocGrp_NoOrders -> opt msg "66" parse_string (fun msg f_OrdAllocGrp_ListID -> opt msg "800" parse_float (fun msg f_OrdAllocGrp_OrderBookingQty -> repeating msg "756" parse_NestedParties2 (fun msg f_OrdAllocGrp_NestedParties2 -> (ParseSuccess {
        f_OrdAllocGrp_NestedParties2 = f_OrdAllocGrp_NestedParties2;
        f_OrdAllocGrp_OrderBookingQty = f_OrdAllocGrp_OrderBookingQty;
        f_OrdAllocGrp_ListID = f_OrdAllocGrp_ListID;
        f_OrdAllocGrp_NoOrders = f_OrdAllocGrp_NoOrders;
        f_OrdAllocGrp_SecondaryOrderID = f_OrdAllocGrp_SecondaryOrderID;
        f_OrdAllocGrp_ClOrdID = f_OrdAllocGrp_ClOrdID;
        f_OrdAllocGrp_OrderAvgPx = f_OrdAllocGrp_OrderAvgPx;
        f_OrdAllocGrp_OrderQty = f_OrdAllocGrp_OrderQty;
        f_OrdAllocGrp_SecondaryClOrdID = f_OrdAllocGrp_SecondaryClOrdID;
        f_OrdAllocGrp_OrderID = f_OrdAllocGrp_OrderID
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_TrdAllocGrp (msg)  =
    opt msg "79" parse_string (fun msg f_TrdAllocGrp_AllocAccount -> opt msg "661" parse_int (fun msg f_TrdAllocGrp_AllocAcctIDSource -> opt msg "80" parse_float (fun msg f_TrdAllocGrp_AllocQty -> opt msg "736" parse_Currency (fun msg f_TrdAllocGrp_AllocSettlCurrency -> opt msg "78" parse_int (fun msg f_TrdAllocGrp_NoAllocs -> opt msg "467" parse_string (fun msg f_TrdAllocGrp_IndividualAllocID -> repeating msg "756" parse_NestedParties2 (fun msg f_TrdAllocGrp_NestedParties2 -> (ParseSuccess {
        f_TrdAllocGrp_NestedParties2 = f_TrdAllocGrp_NestedParties2;
        f_TrdAllocGrp_IndividualAllocID = f_TrdAllocGrp_IndividualAllocID;
        f_TrdAllocGrp_NoAllocs = f_TrdAllocGrp_NoAllocs;
        f_TrdAllocGrp_AllocSettlCurrency = f_TrdAllocGrp_AllocSettlCurrency;
        f_TrdAllocGrp_AllocQty = f_TrdAllocGrp_AllocQty;
        f_TrdAllocGrp_AllocAcctIDSource = f_TrdAllocGrp_AllocAcctIDSource;
        f_TrdAllocGrp_AllocAccount = f_TrdAllocGrp_AllocAccount
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_LegPreAllocGrp (msg)  =
    opt msg "671" parse_string (fun msg f_LegPreAllocGrp_LegAllocAccount -> opt msg "675" parse_Currency (fun msg f_LegPreAllocGrp_LegSettlCurrency -> opt msg "670" parse_int (fun msg f_LegPreAllocGrp_NoLegAllocs -> opt msg "673" parse_float (fun msg f_LegPreAllocGrp_LegAllocQty -> opt msg "672" parse_string (fun msg f_LegPreAllocGrp_LegIndividualAllocID -> opt msg "674" parse_string (fun msg f_LegPreAllocGrp_LegAllocAcctIDSource -> repeating msg "756" parse_NestedParties2 (fun msg f_LegPreAllocGrp_NestedParties2 -> (ParseSuccess {
        f_LegPreAllocGrp_NestedParties2 = f_LegPreAllocGrp_NestedParties2;
        f_LegPreAllocGrp_LegAllocAcctIDSource = f_LegPreAllocGrp_LegAllocAcctIDSource;
        f_LegPreAllocGrp_LegIndividualAllocID = f_LegPreAllocGrp_LegIndividualAllocID;
        f_LegPreAllocGrp_LegAllocQty = f_LegPreAllocGrp_LegAllocQty;
        f_LegPreAllocGrp_NoLegAllocs = f_LegPreAllocGrp_NoLegAllocs;
        f_LegPreAllocGrp_LegSettlCurrency = f_LegPreAllocGrp_LegSettlCurrency;
        f_LegPreAllocGrp_LegAllocAccount = f_LegPreAllocGrp_LegAllocAccount
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;

let parse_LegOrdGrp (msg)  =
    opt msg "555" parse_int (fun msg f_LegOrdGrp_NoLegs -> opt msg "565" parse_int (fun msg f_LegOrdGrp_LegCoveredOrUncovered -> opt msg "690" parse_LegSwapType (fun msg f_LegOrdGrp_LegSwapType -> opt msg "588" parse_LocalMktDate (fun msg f_LegOrdGrp_LegSettlDate -> opt msg "654" parse_string (fun msg f_LegOrdGrp_LegRefID -> opt msg "566" parse_float (fun msg f_LegOrdGrp_LegPrice -> opt msg "587" parse_char (fun msg f_LegOrdGrp_LegSettlType -> opt msg "564" parse_char (fun msg f_LegOrdGrp_LegPositionEffect -> opt msg "687" parse_float (fun msg f_LegOrdGrp_LegQty -> block msg parse_InstrumentLeg (fun msg f_LegOrdGrp_InstrumentLeg -> repeating msg "539" parse_NestedParties (fun msg f_LegOrdGrp_NestedParties -> repeating msg "670" parse_LegPreAllocGrp (fun msg f_LegOrdGrp_LegPreAllocGrp -> repeating msg "683" parse_LegStipulations (fun msg f_LegOrdGrp_LegStipulations -> (ParseSuccess {
        f_LegOrdGrp_LegStipulations = f_LegOrdGrp_LegStipulations;
        f_LegOrdGrp_LegPreAllocGrp = f_LegOrdGrp_LegPreAllocGrp;
        f_LegOrdGrp_NestedParties = f_LegOrdGrp_NestedParties;
        f_LegOrdGrp_InstrumentLeg = f_LegOrdGrp_InstrumentLeg;
        f_LegOrdGrp_LegQty = f_LegOrdGrp_LegQty;
        f_LegOrdGrp_LegPositionEffect = f_LegOrdGrp_LegPositionEffect;
        f_LegOrdGrp_LegSettlType = f_LegOrdGrp_LegSettlType;
        f_LegOrdGrp_LegPrice = f_LegOrdGrp_LegPrice;
        f_LegOrdGrp_LegRefID = f_LegOrdGrp_LegRefID;
        f_LegOrdGrp_LegSettlDate = f_LegOrdGrp_LegSettlDate;
        f_LegOrdGrp_LegSwapType = f_LegOrdGrp_LegSwapType;
        f_LegOrdGrp_LegCoveredOrUncovered = f_LegOrdGrp_LegCoveredOrUncovered;
        f_LegOrdGrp_NoLegs = f_LegOrdGrp_NoLegs
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_TrdCapRptSideGrp (msg)  =
    opt msg "825" parse_string (fun msg f_TrdCapRptSideGrp_ExchangeRule -> opt msg "15" parse_Currency (fun msg f_TrdCapRptSideGrp_Currency -> opt msg "77" parse_PositionEffect (fun msg f_TrdCapRptSideGrp_PositionEffect -> opt msg "120" parse_Currency (fun msg f_TrdCapRptSideGrp_SettlCurrency -> opt msg "920" parse_float (fun msg f_TrdCapRptSideGrp_EndAccruedInterestAmt -> opt msg "336" parse_string (fun msg f_TrdCapRptSideGrp_TradingSessionID -> opt msg "70" parse_string (fun msg f_TrdCapRptSideGrp_AllocID -> opt msg "552" parse_int (fun msg f_TrdCapRptSideGrp_NoSides -> opt msg "355" parse_string (fun msg f_TrdCapRptSideGrp_EncodedText -> opt msg "156" parse_SettlCurrFxRateCalc (fun msg f_TrdCapRptSideGrp_SettlCurrFxRateCalc -> opt msg "157" parse_int (fun msg f_TrdCapRptSideGrp_NumDaysInterest -> opt msg "155" parse_float (fun msg f_TrdCapRptSideGrp_SettlCurrFxRate -> opt msg "529" parse_OrderRestrictions (fun msg f_TrdCapRptSideGrp_OrderRestrictions -> opt msg "579" parse_string (fun msg f_TrdCapRptSideGrp_TradeInputDevice -> opt msg "66" parse_string (fun msg f_TrdCapRptSideGrp_ListID -> opt msg "381" parse_float (fun msg f_TrdCapRptSideGrp_GrossTradeAmt -> opt msg "625" parse_string (fun msg f_TrdCapRptSideGrp_TradingSessionSubID -> opt msg "752" parse_SideMultiLegReportingType (fun msg f_TrdCapRptSideGrp_SideMultiLegReportingType -> opt msg "58" parse_string (fun msg f_TrdCapRptSideGrp_Text -> opt msg "921" parse_float (fun msg f_TrdCapRptSideGrp_StartCash -> opt msg "922" parse_float (fun msg f_TrdCapRptSideGrp_EndCash -> opt msg "11" parse_string (fun msg f_TrdCapRptSideGrp_ClOrdID -> opt msg "582" parse_CustOrderCapacity (fun msg f_TrdCapRptSideGrp_CustOrderCapacity -> opt msg "119" parse_float (fun msg f_TrdCapRptSideGrp_SettlCurrAmt -> opt msg "237" parse_float (fun msg f_TrdCapRptSideGrp_TotalTakedown -> opt msg "826" parse_TradeAllocIndicator (fun msg f_TrdCapRptSideGrp_TradeAllocIndicator -> opt msg "18" parse_ExecInst (fun msg f_TrdCapRptSideGrp_ExecInst -> opt msg "821" parse_string (fun msg f_TrdCapRptSideGrp_OrderInputDevice -> opt msg "230" parse_LocalMktDate (fun msg f_TrdCapRptSideGrp_ExDate -> opt msg "376" parse_string (fun msg f_TrdCapRptSideGrp_ComplianceID -> opt msg "118" parse_float (fun msg f_TrdCapRptSideGrp_NetMoney -> opt msg "738" parse_float (fun msg f_TrdCapRptSideGrp_InterestAtMaturity -> opt msg "158" parse_float (fun msg f_TrdCapRptSideGrp_AccruedInterestRate -> opt msg "354" parse_int (fun msg f_TrdCapRptSideGrp_EncodedTextLen -> opt msg "54" parse_Side (fun msg f_TrdCapRptSideGrp_Side -> opt msg "37" parse_string (fun msg f_TrdCapRptSideGrp_OrderID -> opt msg "591" parse_PreallocMethod (fun msg f_TrdCapRptSideGrp_PreallocMethod -> opt msg "660" parse_AcctIDSource (fun msg f_TrdCapRptSideGrp_AcctIDSource -> opt msg "1" parse_string (fun msg f_TrdCapRptSideGrp_Account -> opt msg "575" parse_OddLot (fun msg f_TrdCapRptSideGrp_OddLot -> opt msg "943" parse_string (fun msg f_TrdCapRptSideGrp_TimeBracket -> opt msg "238" parse_float (fun msg f_TrdCapRptSideGrp_Concession -> opt msg "159" parse_float (fun msg f_TrdCapRptSideGrp_AccruedInterestAmt -> opt msg "81" parse_ProcessCode (fun msg f_TrdCapRptSideGrp_ProcessCode -> opt msg "581" parse_AccountType (fun msg f_TrdCapRptSideGrp_AccountType -> opt msg "526" parse_string (fun msg f_TrdCapRptSideGrp_SecondaryClOrdID -> opt msg "578" parse_string (fun msg f_TrdCapRptSideGrp_TradeInputSource -> opt msg "198" parse_string (fun msg f_TrdCapRptSideGrp_SecondaryOrderID -> opt msg "40" parse_OrdType (fun msg f_TrdCapRptSideGrp_OrdType -> opt msg "528" parse_OrderCapacity (fun msg f_TrdCapRptSideGrp_OrderCapacity -> opt msg "377" parse_SolicitedFlag (fun msg f_TrdCapRptSideGrp_SolicitedFlag -> opt msg "483" parse_UTCTimestamp (fun msg f_TrdCapRptSideGrp_TransBkdTime -> block msg parse_CommissionData (fun msg f_TrdCapRptSideGrp_CommissionData -> repeating msg "453" parse_Parties (fun msg f_TrdCapRptSideGrp_Parties -> repeating msg "78" parse_TrdAllocGrp (fun msg f_TrdCapRptSideGrp_TrdAllocGrp -> repeating msg "576" parse_ClrInstGrp (fun msg f_TrdCapRptSideGrp_ClrInstGrp -> repeating msg "136" parse_MiscFeesGrp (fun msg f_TrdCapRptSideGrp_MiscFeesGrp -> repeating msg "518" parse_ContAmtGrp (fun msg f_TrdCapRptSideGrp_ContAmtGrp -> repeating msg "232" parse_Stipulations (fun msg f_TrdCapRptSideGrp_Stipulations -> (ParseSuccess {
        f_TrdCapRptSideGrp_Stipulations = f_TrdCapRptSideGrp_Stipulations;
        f_TrdCapRptSideGrp_ContAmtGrp = f_TrdCapRptSideGrp_ContAmtGrp;
        f_TrdCapRptSideGrp_MiscFeesGrp = f_TrdCapRptSideGrp_MiscFeesGrp;
        f_TrdCapRptSideGrp_ClrInstGrp = f_TrdCapRptSideGrp_ClrInstGrp;
        f_TrdCapRptSideGrp_TrdAllocGrp = f_TrdCapRptSideGrp_TrdAllocGrp;
        f_TrdCapRptSideGrp_Parties = f_TrdCapRptSideGrp_Parties;
        f_TrdCapRptSideGrp_CommissionData = f_TrdCapRptSideGrp_CommissionData;
        f_TrdCapRptSideGrp_TransBkdTime = f_TrdCapRptSideGrp_TransBkdTime;
        f_TrdCapRptSideGrp_SolicitedFlag = f_TrdCapRptSideGrp_SolicitedFlag;
        f_TrdCapRptSideGrp_OrderCapacity = f_TrdCapRptSideGrp_OrderCapacity;
        f_TrdCapRptSideGrp_OrdType = f_TrdCapRptSideGrp_OrdType;
        f_TrdCapRptSideGrp_SecondaryOrderID = f_TrdCapRptSideGrp_SecondaryOrderID;
        f_TrdCapRptSideGrp_TradeInputSource = f_TrdCapRptSideGrp_TradeInputSource;
        f_TrdCapRptSideGrp_SecondaryClOrdID = f_TrdCapRptSideGrp_SecondaryClOrdID;
        f_TrdCapRptSideGrp_AccountType = f_TrdCapRptSideGrp_AccountType;
        f_TrdCapRptSideGrp_ProcessCode = f_TrdCapRptSideGrp_ProcessCode;
        f_TrdCapRptSideGrp_AccruedInterestAmt = f_TrdCapRptSideGrp_AccruedInterestAmt;
        f_TrdCapRptSideGrp_Concession = f_TrdCapRptSideGrp_Concession;
        f_TrdCapRptSideGrp_TimeBracket = f_TrdCapRptSideGrp_TimeBracket;
        f_TrdCapRptSideGrp_OddLot = f_TrdCapRptSideGrp_OddLot;
        f_TrdCapRptSideGrp_Account = f_TrdCapRptSideGrp_Account;
        f_TrdCapRptSideGrp_AcctIDSource = f_TrdCapRptSideGrp_AcctIDSource;
        f_TrdCapRptSideGrp_PreallocMethod = f_TrdCapRptSideGrp_PreallocMethod;
        f_TrdCapRptSideGrp_OrderID = f_TrdCapRptSideGrp_OrderID;
        f_TrdCapRptSideGrp_Side = f_TrdCapRptSideGrp_Side;
        f_TrdCapRptSideGrp_EncodedTextLen = f_TrdCapRptSideGrp_EncodedTextLen;
        f_TrdCapRptSideGrp_AccruedInterestRate = f_TrdCapRptSideGrp_AccruedInterestRate;
        f_TrdCapRptSideGrp_InterestAtMaturity = f_TrdCapRptSideGrp_InterestAtMaturity;
        f_TrdCapRptSideGrp_NetMoney = f_TrdCapRptSideGrp_NetMoney;
        f_TrdCapRptSideGrp_ComplianceID = f_TrdCapRptSideGrp_ComplianceID;
        f_TrdCapRptSideGrp_ExDate = f_TrdCapRptSideGrp_ExDate;
        f_TrdCapRptSideGrp_OrderInputDevice = f_TrdCapRptSideGrp_OrderInputDevice;
        f_TrdCapRptSideGrp_ExecInst = f_TrdCapRptSideGrp_ExecInst;
        f_TrdCapRptSideGrp_TradeAllocIndicator = f_TrdCapRptSideGrp_TradeAllocIndicator;
        f_TrdCapRptSideGrp_TotalTakedown = f_TrdCapRptSideGrp_TotalTakedown;
        f_TrdCapRptSideGrp_SettlCurrAmt = f_TrdCapRptSideGrp_SettlCurrAmt;
        f_TrdCapRptSideGrp_CustOrderCapacity = f_TrdCapRptSideGrp_CustOrderCapacity;
        f_TrdCapRptSideGrp_ClOrdID = f_TrdCapRptSideGrp_ClOrdID;
        f_TrdCapRptSideGrp_EndCash = f_TrdCapRptSideGrp_EndCash;
        f_TrdCapRptSideGrp_StartCash = f_TrdCapRptSideGrp_StartCash;
        f_TrdCapRptSideGrp_Text = f_TrdCapRptSideGrp_Text;
        f_TrdCapRptSideGrp_SideMultiLegReportingType = f_TrdCapRptSideGrp_SideMultiLegReportingType;
        f_TrdCapRptSideGrp_TradingSessionSubID = f_TrdCapRptSideGrp_TradingSessionSubID;
        f_TrdCapRptSideGrp_GrossTradeAmt = f_TrdCapRptSideGrp_GrossTradeAmt;
        f_TrdCapRptSideGrp_ListID = f_TrdCapRptSideGrp_ListID;
        f_TrdCapRptSideGrp_TradeInputDevice = f_TrdCapRptSideGrp_TradeInputDevice;
        f_TrdCapRptSideGrp_OrderRestrictions = f_TrdCapRptSideGrp_OrderRestrictions;
        f_TrdCapRptSideGrp_SettlCurrFxRate = f_TrdCapRptSideGrp_SettlCurrFxRate;
        f_TrdCapRptSideGrp_NumDaysInterest = f_TrdCapRptSideGrp_NumDaysInterest;
        f_TrdCapRptSideGrp_SettlCurrFxRateCalc = f_TrdCapRptSideGrp_SettlCurrFxRateCalc;
        f_TrdCapRptSideGrp_EncodedText = f_TrdCapRptSideGrp_EncodedText;
        f_TrdCapRptSideGrp_NoSides = f_TrdCapRptSideGrp_NoSides;
        f_TrdCapRptSideGrp_AllocID = f_TrdCapRptSideGrp_AllocID;
        f_TrdCapRptSideGrp_TradingSessionID = f_TrdCapRptSideGrp_TradingSessionID;
        f_TrdCapRptSideGrp_EndAccruedInterestAmt = f_TrdCapRptSideGrp_EndAccruedInterestAmt;
        f_TrdCapRptSideGrp_SettlCurrency = f_TrdCapRptSideGrp_SettlCurrency;
        f_TrdCapRptSideGrp_PositionEffect = f_TrdCapRptSideGrp_PositionEffect;
        f_TrdCapRptSideGrp_Currency = f_TrdCapRptSideGrp_Currency;
        f_TrdCapRptSideGrp_ExchangeRule = f_TrdCapRptSideGrp_ExchangeRule
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_RelSymDerivSecGrp (msg)  =
    opt msg "58" parse_string (fun msg f_RelSymDerivSecGrp_Text -> opt msg "336" parse_string (fun msg f_RelSymDerivSecGrp_TradingSessionID -> opt msg "355" parse_string (fun msg f_RelSymDerivSecGrp_EncodedText -> opt msg "146" parse_int (fun msg f_RelSymDerivSecGrp_NoRelatedSym -> opt msg "15" parse_Currency (fun msg f_RelSymDerivSecGrp_Currency -> opt msg "354" parse_int (fun msg f_RelSymDerivSecGrp_EncodedTextLen -> opt msg "827" parse_ExpirationCycle (fun msg f_RelSymDerivSecGrp_ExpirationCycle -> opt msg "625" parse_string (fun msg f_RelSymDerivSecGrp_TradingSessionSubID -> block msg parse_InstrumentExtension (fun msg f_RelSymDerivSecGrp_InstrumentExtension -> block msg parse_Instrument (fun msg f_RelSymDerivSecGrp_Instrument -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_RelSymDerivSecGrp_InstrmtLegGrp -> (ParseSuccess {
        f_RelSymDerivSecGrp_InstrmtLegGrp = f_RelSymDerivSecGrp_InstrmtLegGrp;
        f_RelSymDerivSecGrp_Instrument = f_RelSymDerivSecGrp_Instrument;
        f_RelSymDerivSecGrp_InstrumentExtension = f_RelSymDerivSecGrp_InstrumentExtension;
        f_RelSymDerivSecGrp_TradingSessionSubID = f_RelSymDerivSecGrp_TradingSessionSubID;
        f_RelSymDerivSecGrp_ExpirationCycle = f_RelSymDerivSecGrp_ExpirationCycle;
        f_RelSymDerivSecGrp_EncodedTextLen = f_RelSymDerivSecGrp_EncodedTextLen;
        f_RelSymDerivSecGrp_Currency = f_RelSymDerivSecGrp_Currency;
        f_RelSymDerivSecGrp_NoRelatedSym = f_RelSymDerivSecGrp_NoRelatedSym;
        f_RelSymDerivSecGrp_EncodedText = f_RelSymDerivSecGrp_EncodedText;
        f_RelSymDerivSecGrp_TradingSessionID = f_RelSymDerivSecGrp_TradingSessionID;
        f_RelSymDerivSecGrp_Text = f_RelSymDerivSecGrp_Text
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_QuotEntryGrp (msg)  =
    opt msg "295" parse_int (fun msg f_QuotEntryGrp_NoQuoteEntries -> opt msg "643" parse_float (fun msg f_QuotEntryGrp_OfferForwardPoints2 -> opt msg "191" parse_float (fun msg f_QuotEntryGrp_OfferForwardPoints -> opt msg "64" parse_LocalMktDate (fun msg f_QuotEntryGrp_SettlDate -> opt msg "632" parse_float (fun msg f_QuotEntryGrp_BidYield -> opt msg "132" parse_float (fun msg f_QuotEntryGrp_BidPx -> opt msg "299" parse_string (fun msg f_QuotEntryGrp_QuoteEntryID -> opt msg "15" parse_Currency (fun msg f_QuotEntryGrp_Currency -> opt msg "192" parse_float (fun msg f_QuotEntryGrp_OrderQty2 -> opt msg "60" parse_UTCTimestamp (fun msg f_QuotEntryGrp_TransactTime -> opt msg "134" parse_float (fun msg f_QuotEntryGrp_BidSize -> opt msg "193" parse_LocalMktDate (fun msg f_QuotEntryGrp_SettlDate2 -> opt msg "336" parse_string (fun msg f_QuotEntryGrp_TradingSessionID -> opt msg "135" parse_float (fun msg f_QuotEntryGrp_OfferSize -> opt msg "133" parse_float (fun msg f_QuotEntryGrp_OfferPx -> opt msg "188" parse_float (fun msg f_QuotEntryGrp_BidSpotRate -> opt msg "625" parse_string (fun msg f_QuotEntryGrp_TradingSessionSubID -> opt msg "189" parse_float (fun msg f_QuotEntryGrp_BidForwardPoints -> opt msg "634" parse_float (fun msg f_QuotEntryGrp_OfferYield -> opt msg "190" parse_float (fun msg f_QuotEntryGrp_OfferSpotRate -> opt msg "642" parse_float (fun msg f_QuotEntryGrp_BidForwardPoints2 -> opt msg "40" parse_OrdType (fun msg f_QuotEntryGrp_OrdType -> opt msg "62" parse_UTCTimestamp (fun msg f_QuotEntryGrp_ValidUntilTime -> opt msg "631" parse_float (fun msg f_QuotEntryGrp_MidPx -> opt msg "633" parse_float (fun msg f_QuotEntryGrp_MidYield -> block msg parse_Instrument (fun msg f_QuotEntryGrp_Instrument -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_QuotEntryGrp_InstrmtLegGrp -> (ParseSuccess {
        f_QuotEntryGrp_InstrmtLegGrp = f_QuotEntryGrp_InstrmtLegGrp;
        f_QuotEntryGrp_Instrument = f_QuotEntryGrp_Instrument;
        f_QuotEntryGrp_MidYield = f_QuotEntryGrp_MidYield;
        f_QuotEntryGrp_MidPx = f_QuotEntryGrp_MidPx;
        f_QuotEntryGrp_ValidUntilTime = f_QuotEntryGrp_ValidUntilTime;
        f_QuotEntryGrp_OrdType = f_QuotEntryGrp_OrdType;
        f_QuotEntryGrp_BidForwardPoints2 = f_QuotEntryGrp_BidForwardPoints2;
        f_QuotEntryGrp_OfferSpotRate = f_QuotEntryGrp_OfferSpotRate;
        f_QuotEntryGrp_OfferYield = f_QuotEntryGrp_OfferYield;
        f_QuotEntryGrp_BidForwardPoints = f_QuotEntryGrp_BidForwardPoints;
        f_QuotEntryGrp_TradingSessionSubID = f_QuotEntryGrp_TradingSessionSubID;
        f_QuotEntryGrp_BidSpotRate = f_QuotEntryGrp_BidSpotRate;
        f_QuotEntryGrp_OfferPx = f_QuotEntryGrp_OfferPx;
        f_QuotEntryGrp_OfferSize = f_QuotEntryGrp_OfferSize;
        f_QuotEntryGrp_TradingSessionID = f_QuotEntryGrp_TradingSessionID;
        f_QuotEntryGrp_SettlDate2 = f_QuotEntryGrp_SettlDate2;
        f_QuotEntryGrp_BidSize = f_QuotEntryGrp_BidSize;
        f_QuotEntryGrp_TransactTime = f_QuotEntryGrp_TransactTime;
        f_QuotEntryGrp_OrderQty2 = f_QuotEntryGrp_OrderQty2;
        f_QuotEntryGrp_Currency = f_QuotEntryGrp_Currency;
        f_QuotEntryGrp_QuoteEntryID = f_QuotEntryGrp_QuoteEntryID;
        f_QuotEntryGrp_BidPx = f_QuotEntryGrp_BidPx;
        f_QuotEntryGrp_BidYield = f_QuotEntryGrp_BidYield;
        f_QuotEntryGrp_SettlDate = f_QuotEntryGrp_SettlDate;
        f_QuotEntryGrp_OfferForwardPoints = f_QuotEntryGrp_OfferForwardPoints;
        f_QuotEntryGrp_OfferForwardPoints2 = f_QuotEntryGrp_OfferForwardPoints2;
        f_QuotEntryGrp_NoQuoteEntries = f_QuotEntryGrp_NoQuoteEntries
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_QuotEntryAckGrp (msg)  =
    opt msg "295" parse_int (fun msg f_QuotEntryAckGrp_NoQuoteEntries -> opt msg "643" parse_float (fun msg f_QuotEntryAckGrp_OfferForwardPoints2 -> opt msg "191" parse_float (fun msg f_QuotEntryAckGrp_OfferForwardPoints -> opt msg "64" parse_LocalMktDate (fun msg f_QuotEntryAckGrp_SettlDate -> opt msg "632" parse_float (fun msg f_QuotEntryAckGrp_BidYield -> opt msg "132" parse_float (fun msg f_QuotEntryAckGrp_BidPx -> opt msg "299" parse_string (fun msg f_QuotEntryAckGrp_QuoteEntryID -> opt msg "15" parse_Currency (fun msg f_QuotEntryAckGrp_Currency -> opt msg "192" parse_float (fun msg f_QuotEntryAckGrp_OrderQty2 -> opt msg "368" parse_int (fun msg f_QuotEntryAckGrp_QuoteEntryRejectReason -> opt msg "60" parse_UTCTimestamp (fun msg f_QuotEntryAckGrp_TransactTime -> opt msg "134" parse_float (fun msg f_QuotEntryAckGrp_BidSize -> opt msg "193" parse_LocalMktDate (fun msg f_QuotEntryAckGrp_SettlDate2 -> opt msg "336" parse_string (fun msg f_QuotEntryAckGrp_TradingSessionID -> opt msg "135" parse_float (fun msg f_QuotEntryAckGrp_OfferSize -> opt msg "133" parse_float (fun msg f_QuotEntryAckGrp_OfferPx -> opt msg "188" parse_float (fun msg f_QuotEntryAckGrp_BidSpotRate -> opt msg "625" parse_string (fun msg f_QuotEntryAckGrp_TradingSessionSubID -> opt msg "189" parse_float (fun msg f_QuotEntryAckGrp_BidForwardPoints -> opt msg "634" parse_float (fun msg f_QuotEntryAckGrp_OfferYield -> opt msg "190" parse_float (fun msg f_QuotEntryAckGrp_OfferSpotRate -> opt msg "642" parse_float (fun msg f_QuotEntryAckGrp_BidForwardPoints2 -> opt msg "40" parse_OrdType (fun msg f_QuotEntryAckGrp_OrdType -> opt msg "62" parse_UTCTimestamp (fun msg f_QuotEntryAckGrp_ValidUntilTime -> opt msg "631" parse_float (fun msg f_QuotEntryAckGrp_MidPx -> opt msg "633" parse_float (fun msg f_QuotEntryAckGrp_MidYield -> block msg parse_Instrument (fun msg f_QuotEntryAckGrp_Instrument -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_QuotEntryAckGrp_InstrmtLegGrp -> (ParseSuccess {
        f_QuotEntryAckGrp_InstrmtLegGrp = f_QuotEntryAckGrp_InstrmtLegGrp;
        f_QuotEntryAckGrp_Instrument = f_QuotEntryAckGrp_Instrument;
        f_QuotEntryAckGrp_MidYield = f_QuotEntryAckGrp_MidYield;
        f_QuotEntryAckGrp_MidPx = f_QuotEntryAckGrp_MidPx;
        f_QuotEntryAckGrp_ValidUntilTime = f_QuotEntryAckGrp_ValidUntilTime;
        f_QuotEntryAckGrp_OrdType = f_QuotEntryAckGrp_OrdType;
        f_QuotEntryAckGrp_BidForwardPoints2 = f_QuotEntryAckGrp_BidForwardPoints2;
        f_QuotEntryAckGrp_OfferSpotRate = f_QuotEntryAckGrp_OfferSpotRate;
        f_QuotEntryAckGrp_OfferYield = f_QuotEntryAckGrp_OfferYield;
        f_QuotEntryAckGrp_BidForwardPoints = f_QuotEntryAckGrp_BidForwardPoints;
        f_QuotEntryAckGrp_TradingSessionSubID = f_QuotEntryAckGrp_TradingSessionSubID;
        f_QuotEntryAckGrp_BidSpotRate = f_QuotEntryAckGrp_BidSpotRate;
        f_QuotEntryAckGrp_OfferPx = f_QuotEntryAckGrp_OfferPx;
        f_QuotEntryAckGrp_OfferSize = f_QuotEntryAckGrp_OfferSize;
        f_QuotEntryAckGrp_TradingSessionID = f_QuotEntryAckGrp_TradingSessionID;
        f_QuotEntryAckGrp_SettlDate2 = f_QuotEntryAckGrp_SettlDate2;
        f_QuotEntryAckGrp_BidSize = f_QuotEntryAckGrp_BidSize;
        f_QuotEntryAckGrp_TransactTime = f_QuotEntryAckGrp_TransactTime;
        f_QuotEntryAckGrp_QuoteEntryRejectReason = f_QuotEntryAckGrp_QuoteEntryRejectReason;
        f_QuotEntryAckGrp_OrderQty2 = f_QuotEntryAckGrp_OrderQty2;
        f_QuotEntryAckGrp_Currency = f_QuotEntryAckGrp_Currency;
        f_QuotEntryAckGrp_QuoteEntryID = f_QuotEntryAckGrp_QuoteEntryID;
        f_QuotEntryAckGrp_BidPx = f_QuotEntryAckGrp_BidPx;
        f_QuotEntryAckGrp_BidYield = f_QuotEntryAckGrp_BidYield;
        f_QuotEntryAckGrp_SettlDate = f_QuotEntryAckGrp_SettlDate;
        f_QuotEntryAckGrp_OfferForwardPoints = f_QuotEntryAckGrp_OfferForwardPoints;
        f_QuotEntryAckGrp_OfferForwardPoints2 = f_QuotEntryAckGrp_OfferForwardPoints2;
        f_QuotEntryAckGrp_NoQuoteEntries = f_QuotEntryAckGrp_NoQuoteEntries
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_MDIncGrp (msg)  =
    opt msg "269" parse_MDEntryType (fun msg f_MDIncGrp_MDEntryType -> opt msg "284" parse_string (fun msg f_MDIncGrp_DeskID -> opt msg "18" parse_ExecInst (fun msg f_MDIncGrp_ExecInst -> opt msg "299" parse_string (fun msg f_MDIncGrp_QuoteEntryID -> opt msg "283" parse_string (fun msg f_MDIncGrp_LocationID -> opt msg "811" parse_float (fun msg f_MDIncGrp_PriceDelta -> opt msg "59" parse_TimeInForce (fun msg f_MDIncGrp_TimeInForce -> opt msg "15" parse_Currency (fun msg f_MDIncGrp_Currency -> opt msg "282" parse_string (fun msg f_MDIncGrp_MDEntryOriginator -> opt msg "276" parse_QuoteCondition (fun msg f_MDIncGrp_QuoteCondition -> opt msg "288" parse_string (fun msg f_MDIncGrp_MDEntryBuyer -> opt msg "354" parse_int (fun msg f_MDIncGrp_EncodedTextLen -> opt msg "274" parse_TickDirection (fun msg f_MDIncGrp_TickDirection -> opt msg "271" parse_float (fun msg f_MDIncGrp_MDEntrySize -> opt msg "286" parse_OpenCloseSettlFlag (fun msg f_MDIncGrp_OpenCloseSettlFlag -> opt msg "280" parse_string (fun msg f_MDIncGrp_MDEntryRefID -> opt msg "37" parse_string (fun msg f_MDIncGrp_OrderID -> opt msg "291" parse_FinancialStatus (fun msg f_MDIncGrp_FinancialStatus -> opt msg "336" parse_string (fun msg f_MDIncGrp_TradingSessionID -> opt msg "272" parse_UTCDateOnly (fun msg f_MDIncGrp_MDEntryDate -> opt msg "279" parse_MDUpdateAction (fun msg f_MDIncGrp_MDUpdateAction -> opt msg "355" parse_string (fun msg f_MDIncGrp_EncodedText -> opt msg "432" parse_LocalMktDate (fun msg f_MDIncGrp_ExpireDate -> opt msg "110" parse_float (fun msg f_MDIncGrp_MinQty -> opt msg "270" parse_float (fun msg f_MDIncGrp_MDEntryPx -> opt msg "451" parse_float (fun msg f_MDIncGrp_NetChgPrevDay -> opt msg "285" parse_DeleteReason (fun msg f_MDIncGrp_DeleteReason -> opt msg "292" parse_CorporateAction (fun msg f_MDIncGrp_CorporateAction -> opt msg "126" parse_UTCTimestamp (fun msg f_MDIncGrp_ExpireTime -> opt msg "287" parse_int (fun msg f_MDIncGrp_SellerDays -> opt msg "290" parse_int (fun msg f_MDIncGrp_MDEntryPositionNo -> opt msg "278" parse_string (fun msg f_MDIncGrp_MDEntryID -> opt msg "546" parse_Scope (fun msg f_MDIncGrp_Scope -> opt msg "289" parse_string (fun msg f_MDIncGrp_MDEntrySeller -> opt msg "346" parse_int (fun msg f_MDIncGrp_NumberOfOrders -> opt msg "625" parse_string (fun msg f_MDIncGrp_TradingSessionSubID -> opt msg "268" parse_int (fun msg f_MDIncGrp_NoMDEntries -> opt msg "277" parse_TradeCondition (fun msg f_MDIncGrp_TradeCondition -> opt msg "273" parse_UTCTimeOnly (fun msg f_MDIncGrp_MDEntryTime -> opt msg "58" parse_string (fun msg f_MDIncGrp_Text -> opt msg "275" parse_Exchange (fun msg f_MDIncGrp_MDMkt -> block msg parse_Instrument (fun msg f_MDIncGrp_Instrument -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_MDIncGrp_InstrmtLegGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_MDIncGrp_UndInstrmtGrp -> (ParseSuccess {
        f_MDIncGrp_UndInstrmtGrp = f_MDIncGrp_UndInstrmtGrp;
        f_MDIncGrp_InstrmtLegGrp = f_MDIncGrp_InstrmtLegGrp;
        f_MDIncGrp_Instrument = f_MDIncGrp_Instrument;
        f_MDIncGrp_MDMkt = f_MDIncGrp_MDMkt;
        f_MDIncGrp_Text = f_MDIncGrp_Text;
        f_MDIncGrp_MDEntryTime = f_MDIncGrp_MDEntryTime;
        f_MDIncGrp_TradeCondition = f_MDIncGrp_TradeCondition;
        f_MDIncGrp_NoMDEntries = f_MDIncGrp_NoMDEntries;
        f_MDIncGrp_TradingSessionSubID = f_MDIncGrp_TradingSessionSubID;
        f_MDIncGrp_NumberOfOrders = f_MDIncGrp_NumberOfOrders;
        f_MDIncGrp_MDEntrySeller = f_MDIncGrp_MDEntrySeller;
        f_MDIncGrp_Scope = f_MDIncGrp_Scope;
        f_MDIncGrp_MDEntryID = f_MDIncGrp_MDEntryID;
        f_MDIncGrp_MDEntryPositionNo = f_MDIncGrp_MDEntryPositionNo;
        f_MDIncGrp_SellerDays = f_MDIncGrp_SellerDays;
        f_MDIncGrp_ExpireTime = f_MDIncGrp_ExpireTime;
        f_MDIncGrp_CorporateAction = f_MDIncGrp_CorporateAction;
        f_MDIncGrp_DeleteReason = f_MDIncGrp_DeleteReason;
        f_MDIncGrp_NetChgPrevDay = f_MDIncGrp_NetChgPrevDay;
        f_MDIncGrp_MDEntryPx = f_MDIncGrp_MDEntryPx;
        f_MDIncGrp_MinQty = f_MDIncGrp_MinQty;
        f_MDIncGrp_ExpireDate = f_MDIncGrp_ExpireDate;
        f_MDIncGrp_EncodedText = f_MDIncGrp_EncodedText;
        f_MDIncGrp_MDUpdateAction = f_MDIncGrp_MDUpdateAction;
        f_MDIncGrp_MDEntryDate = f_MDIncGrp_MDEntryDate;
        f_MDIncGrp_TradingSessionID = f_MDIncGrp_TradingSessionID;
        f_MDIncGrp_FinancialStatus = f_MDIncGrp_FinancialStatus;
        f_MDIncGrp_OrderID = f_MDIncGrp_OrderID;
        f_MDIncGrp_MDEntryRefID = f_MDIncGrp_MDEntryRefID;
        f_MDIncGrp_OpenCloseSettlFlag = f_MDIncGrp_OpenCloseSettlFlag;
        f_MDIncGrp_MDEntrySize = f_MDIncGrp_MDEntrySize;
        f_MDIncGrp_TickDirection = f_MDIncGrp_TickDirection;
        f_MDIncGrp_EncodedTextLen = f_MDIncGrp_EncodedTextLen;
        f_MDIncGrp_MDEntryBuyer = f_MDIncGrp_MDEntryBuyer;
        f_MDIncGrp_QuoteCondition = f_MDIncGrp_QuoteCondition;
        f_MDIncGrp_MDEntryOriginator = f_MDIncGrp_MDEntryOriginator;
        f_MDIncGrp_Currency = f_MDIncGrp_Currency;
        f_MDIncGrp_TimeInForce = f_MDIncGrp_TimeInForce;
        f_MDIncGrp_PriceDelta = f_MDIncGrp_PriceDelta;
        f_MDIncGrp_LocationID = f_MDIncGrp_LocationID;
        f_MDIncGrp_QuoteEntryID = f_MDIncGrp_QuoteEntryID;
        f_MDIncGrp_ExecInst = f_MDIncGrp_ExecInst;
        f_MDIncGrp_DeskID = f_MDIncGrp_DeskID;
        f_MDIncGrp_MDEntryType = f_MDIncGrp_MDEntryType
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_QuotReqRjctGrp (msg)  =
    opt msg "64" parse_LocalMktDate (fun msg f_QuotReqRjctGrp_SettlDate -> opt msg "140" parse_float (fun msg f_QuotReqRjctGrp_PrevClosePx -> opt msg "15" parse_Currency (fun msg f_QuotReqRjctGrp_Currency -> opt msg "640" parse_float (fun msg f_QuotReqRjctGrp_Price2 -> opt msg "54" parse_Side (fun msg f_QuotReqRjctGrp_Side -> opt msg "192" parse_float (fun msg f_QuotReqRjctGrp_OrderQty2 -> opt msg "60" parse_UTCTimestamp (fun msg f_QuotReqRjctGrp_TransactTime -> opt msg "193" parse_LocalMktDate (fun msg f_QuotReqRjctGrp_SettlDate2 -> opt msg "336" parse_string (fun msg f_QuotReqRjctGrp_TradingSessionID -> opt msg "229" parse_LocalMktDate (fun msg f_QuotReqRjctGrp_TradeOriginationDate -> opt msg "692" parse_QuotePriceType (fun msg f_QuotReqRjctGrp_QuotePriceType -> opt msg "660" parse_AcctIDSource (fun msg f_QuotReqRjctGrp_AcctIDSource -> opt msg "1" parse_string (fun msg f_QuotReqRjctGrp_Account -> opt msg "423" parse_PriceType (fun msg f_QuotReqRjctGrp_PriceType -> opt msg "126" parse_UTCTimestamp (fun msg f_QuotReqRjctGrp_ExpireTime -> opt msg "537" parse_QuoteType (fun msg f_QuotReqRjctGrp_QuoteType -> opt msg "63" parse_SettlType (fun msg f_QuotReqRjctGrp_SettlType -> opt msg "44" parse_float (fun msg f_QuotReqRjctGrp_Price -> opt msg "854" parse_QtyType (fun msg f_QuotReqRjctGrp_QtyType -> opt msg "625" parse_string (fun msg f_QuotReqRjctGrp_TradingSessionSubID -> opt msg "581" parse_AccountType (fun msg f_QuotReqRjctGrp_AccountType -> opt msg "303" parse_QuoteRequestType (fun msg f_QuotReqRjctGrp_QuoteRequestType -> opt msg "40" parse_OrdType (fun msg f_QuotReqRjctGrp_OrdType -> opt msg "146" parse_int (fun msg f_QuotReqRjctGrp_NoRelatedSym -> block msg parse_YieldData (fun msg f_QuotReqRjctGrp_YieldData -> block msg parse_SpreadOrBenchmarkCurveData (fun msg f_QuotReqRjctGrp_SpreadOrBenchmarkCurveData -> block msg parse_OrderQtyData (fun msg f_QuotReqRjctGrp_OrderQtyData -> block msg parse_FinancingDetails (fun msg f_QuotReqRjctGrp_FinancingDetails -> block msg parse_Instrument (fun msg f_QuotReqRjctGrp_Instrument -> repeating msg "453" parse_Parties (fun msg f_QuotReqRjctGrp_Parties -> repeating msg "735" parse_QuotQualGrp (fun msg f_QuotReqRjctGrp_QuotQualGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_QuotReqRjctGrp_UndInstrmtGrp -> repeating msg "555" parse_QuotReqLegsGrp (fun msg f_QuotReqRjctGrp_QuotReqLegsGrp -> repeating msg "232" parse_Stipulations (fun msg f_QuotReqRjctGrp_Stipulations -> (ParseSuccess {
        f_QuotReqRjctGrp_Stipulations = f_QuotReqRjctGrp_Stipulations;
        f_QuotReqRjctGrp_QuotReqLegsGrp = f_QuotReqRjctGrp_QuotReqLegsGrp;
        f_QuotReqRjctGrp_UndInstrmtGrp = f_QuotReqRjctGrp_UndInstrmtGrp;
        f_QuotReqRjctGrp_QuotQualGrp = f_QuotReqRjctGrp_QuotQualGrp;
        f_QuotReqRjctGrp_Parties = f_QuotReqRjctGrp_Parties;
        f_QuotReqRjctGrp_Instrument = f_QuotReqRjctGrp_Instrument;
        f_QuotReqRjctGrp_FinancingDetails = f_QuotReqRjctGrp_FinancingDetails;
        f_QuotReqRjctGrp_OrderQtyData = f_QuotReqRjctGrp_OrderQtyData;
        f_QuotReqRjctGrp_SpreadOrBenchmarkCurveData = f_QuotReqRjctGrp_SpreadOrBenchmarkCurveData;
        f_QuotReqRjctGrp_YieldData = f_QuotReqRjctGrp_YieldData;
        f_QuotReqRjctGrp_NoRelatedSym = f_QuotReqRjctGrp_NoRelatedSym;
        f_QuotReqRjctGrp_OrdType = f_QuotReqRjctGrp_OrdType;
        f_QuotReqRjctGrp_QuoteRequestType = f_QuotReqRjctGrp_QuoteRequestType;
        f_QuotReqRjctGrp_AccountType = f_QuotReqRjctGrp_AccountType;
        f_QuotReqRjctGrp_TradingSessionSubID = f_QuotReqRjctGrp_TradingSessionSubID;
        f_QuotReqRjctGrp_QtyType = f_QuotReqRjctGrp_QtyType;
        f_QuotReqRjctGrp_Price = f_QuotReqRjctGrp_Price;
        f_QuotReqRjctGrp_SettlType = f_QuotReqRjctGrp_SettlType;
        f_QuotReqRjctGrp_QuoteType = f_QuotReqRjctGrp_QuoteType;
        f_QuotReqRjctGrp_ExpireTime = f_QuotReqRjctGrp_ExpireTime;
        f_QuotReqRjctGrp_PriceType = f_QuotReqRjctGrp_PriceType;
        f_QuotReqRjctGrp_Account = f_QuotReqRjctGrp_Account;
        f_QuotReqRjctGrp_AcctIDSource = f_QuotReqRjctGrp_AcctIDSource;
        f_QuotReqRjctGrp_QuotePriceType = f_QuotReqRjctGrp_QuotePriceType;
        f_QuotReqRjctGrp_TradeOriginationDate = f_QuotReqRjctGrp_TradeOriginationDate;
        f_QuotReqRjctGrp_TradingSessionID = f_QuotReqRjctGrp_TradingSessionID;
        f_QuotReqRjctGrp_SettlDate2 = f_QuotReqRjctGrp_SettlDate2;
        f_QuotReqRjctGrp_TransactTime = f_QuotReqRjctGrp_TransactTime;
        f_QuotReqRjctGrp_OrderQty2 = f_QuotReqRjctGrp_OrderQty2;
        f_QuotReqRjctGrp_Side = f_QuotReqRjctGrp_Side;
        f_QuotReqRjctGrp_Price2 = f_QuotReqRjctGrp_Price2;
        f_QuotReqRjctGrp_Currency = f_QuotReqRjctGrp_Currency;
        f_QuotReqRjctGrp_PrevClosePx = f_QuotReqRjctGrp_PrevClosePx;
        f_QuotReqRjctGrp_SettlDate = f_QuotReqRjctGrp_SettlDate
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_QuotCxlEntriesGrp (msg)  =
    opt msg "295" parse_int (fun msg f_QuotCxlEntriesGrp_NoQuoteEntries -> block msg parse_Instrument (fun msg f_QuotCxlEntriesGrp_Instrument -> block msg parse_FinancingDetails (fun msg f_QuotCxlEntriesGrp_FinancingDetails -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_QuotCxlEntriesGrp_InstrmtLegGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_QuotCxlEntriesGrp_UndInstrmtGrp -> (ParseSuccess {
        f_QuotCxlEntriesGrp_UndInstrmtGrp = f_QuotCxlEntriesGrp_UndInstrmtGrp;
        f_QuotCxlEntriesGrp_InstrmtLegGrp = f_QuotCxlEntriesGrp_InstrmtLegGrp;
        f_QuotCxlEntriesGrp_FinancingDetails = f_QuotCxlEntriesGrp_FinancingDetails;
        f_QuotCxlEntriesGrp_Instrument = f_QuotCxlEntriesGrp_Instrument;
        f_QuotCxlEntriesGrp_NoQuoteEntries = f_QuotCxlEntriesGrp_NoQuoteEntries
    },msg)
    )
    )
    )
    )
    )
;;

let parse_QuotReqGrp (msg)  =
    opt msg "64" parse_LocalMktDate (fun msg f_QuotReqGrp_SettlDate -> opt msg "140" parse_float (fun msg f_QuotReqGrp_PrevClosePx -> opt msg "15" parse_Currency (fun msg f_QuotReqGrp_Currency -> opt msg "640" parse_float (fun msg f_QuotReqGrp_Price2 -> opt msg "54" parse_Side (fun msg f_QuotReqGrp_Side -> opt msg "192" parse_float (fun msg f_QuotReqGrp_OrderQty2 -> opt msg "60" parse_UTCTimestamp (fun msg f_QuotReqGrp_TransactTime -> opt msg "193" parse_LocalMktDate (fun msg f_QuotReqGrp_SettlDate2 -> opt msg "336" parse_string (fun msg f_QuotReqGrp_TradingSessionID -> opt msg "229" parse_LocalMktDate (fun msg f_QuotReqGrp_TradeOriginationDate -> opt msg "692" parse_QuotePriceType (fun msg f_QuotReqGrp_QuotePriceType -> opt msg "660" parse_AcctIDSource (fun msg f_QuotReqGrp_AcctIDSource -> opt msg "1" parse_string (fun msg f_QuotReqGrp_Account -> opt msg "423" parse_PriceType (fun msg f_QuotReqGrp_PriceType -> opt msg "126" parse_UTCTimestamp (fun msg f_QuotReqGrp_ExpireTime -> opt msg "537" parse_QuoteType (fun msg f_QuotReqGrp_QuoteType -> opt msg "63" parse_SettlType (fun msg f_QuotReqGrp_SettlType -> opt msg "44" parse_float (fun msg f_QuotReqGrp_Price -> opt msg "854" parse_QtyType (fun msg f_QuotReqGrp_QtyType -> opt msg "625" parse_string (fun msg f_QuotReqGrp_TradingSessionSubID -> opt msg "581" parse_AccountType (fun msg f_QuotReqGrp_AccountType -> opt msg "303" parse_QuoteRequestType (fun msg f_QuotReqGrp_QuoteRequestType -> opt msg "62" parse_UTCTimestamp (fun msg f_QuotReqGrp_ValidUntilTime -> opt msg "40" parse_OrdType (fun msg f_QuotReqGrp_OrdType -> opt msg "146" parse_int (fun msg f_QuotReqGrp_NoRelatedSym -> block msg parse_YieldData (fun msg f_QuotReqGrp_YieldData -> block msg parse_SpreadOrBenchmarkCurveData (fun msg f_QuotReqGrp_SpreadOrBenchmarkCurveData -> block msg parse_OrderQtyData (fun msg f_QuotReqGrp_OrderQtyData -> block msg parse_FinancingDetails (fun msg f_QuotReqGrp_FinancingDetails -> block msg parse_Instrument (fun msg f_QuotReqGrp_Instrument -> repeating msg "453" parse_Parties (fun msg f_QuotReqGrp_Parties -> repeating msg "735" parse_QuotQualGrp (fun msg f_QuotReqGrp_QuotQualGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_QuotReqGrp_UndInstrmtGrp -> repeating msg "555" parse_QuotReqLegsGrp (fun msg f_QuotReqGrp_QuotReqLegsGrp -> repeating msg "232" parse_Stipulations (fun msg f_QuotReqGrp_Stipulations -> (ParseSuccess {
        f_QuotReqGrp_Stipulations = f_QuotReqGrp_Stipulations;
        f_QuotReqGrp_QuotReqLegsGrp = f_QuotReqGrp_QuotReqLegsGrp;
        f_QuotReqGrp_UndInstrmtGrp = f_QuotReqGrp_UndInstrmtGrp;
        f_QuotReqGrp_QuotQualGrp = f_QuotReqGrp_QuotQualGrp;
        f_QuotReqGrp_Parties = f_QuotReqGrp_Parties;
        f_QuotReqGrp_Instrument = f_QuotReqGrp_Instrument;
        f_QuotReqGrp_FinancingDetails = f_QuotReqGrp_FinancingDetails;
        f_QuotReqGrp_OrderQtyData = f_QuotReqGrp_OrderQtyData;
        f_QuotReqGrp_SpreadOrBenchmarkCurveData = f_QuotReqGrp_SpreadOrBenchmarkCurveData;
        f_QuotReqGrp_YieldData = f_QuotReqGrp_YieldData;
        f_QuotReqGrp_NoRelatedSym = f_QuotReqGrp_NoRelatedSym;
        f_QuotReqGrp_OrdType = f_QuotReqGrp_OrdType;
        f_QuotReqGrp_ValidUntilTime = f_QuotReqGrp_ValidUntilTime;
        f_QuotReqGrp_QuoteRequestType = f_QuotReqGrp_QuoteRequestType;
        f_QuotReqGrp_AccountType = f_QuotReqGrp_AccountType;
        f_QuotReqGrp_TradingSessionSubID = f_QuotReqGrp_TradingSessionSubID;
        f_QuotReqGrp_QtyType = f_QuotReqGrp_QtyType;
        f_QuotReqGrp_Price = f_QuotReqGrp_Price;
        f_QuotReqGrp_SettlType = f_QuotReqGrp_SettlType;
        f_QuotReqGrp_QuoteType = f_QuotReqGrp_QuoteType;
        f_QuotReqGrp_ExpireTime = f_QuotReqGrp_ExpireTime;
        f_QuotReqGrp_PriceType = f_QuotReqGrp_PriceType;
        f_QuotReqGrp_Account = f_QuotReqGrp_Account;
        f_QuotReqGrp_AcctIDSource = f_QuotReqGrp_AcctIDSource;
        f_QuotReqGrp_QuotePriceType = f_QuotReqGrp_QuotePriceType;
        f_QuotReqGrp_TradeOriginationDate = f_QuotReqGrp_TradeOriginationDate;
        f_QuotReqGrp_TradingSessionID = f_QuotReqGrp_TradingSessionID;
        f_QuotReqGrp_SettlDate2 = f_QuotReqGrp_SettlDate2;
        f_QuotReqGrp_TransactTime = f_QuotReqGrp_TransactTime;
        f_QuotReqGrp_OrderQty2 = f_QuotReqGrp_OrderQty2;
        f_QuotReqGrp_Side = f_QuotReqGrp_Side;
        f_QuotReqGrp_Price2 = f_QuotReqGrp_Price2;
        f_QuotReqGrp_Currency = f_QuotReqGrp_Currency;
        f_QuotReqGrp_PrevClosePx = f_QuotReqGrp_PrevClosePx;
        f_QuotReqGrp_SettlDate = f_QuotReqGrp_SettlDate
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_RFQReqGrp (msg)  =
    opt msg "336" parse_string (fun msg f_RFQReqGrp_TradingSessionID -> opt msg "303" parse_QuoteRequestType (fun msg f_RFQReqGrp_QuoteRequestType -> opt msg "140" parse_float (fun msg f_RFQReqGrp_PrevClosePx -> opt msg "537" parse_QuoteType (fun msg f_RFQReqGrp_QuoteType -> opt msg "146" parse_int (fun msg f_RFQReqGrp_NoRelatedSym -> opt msg "625" parse_string (fun msg f_RFQReqGrp_TradingSessionSubID -> block msg parse_Instrument (fun msg f_RFQReqGrp_Instrument -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_RFQReqGrp_InstrmtLegGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_RFQReqGrp_UndInstrmtGrp -> (ParseSuccess {
        f_RFQReqGrp_UndInstrmtGrp = f_RFQReqGrp_UndInstrmtGrp;
        f_RFQReqGrp_InstrmtLegGrp = f_RFQReqGrp_InstrmtLegGrp;
        f_RFQReqGrp_Instrument = f_RFQReqGrp_Instrument;
        f_RFQReqGrp_TradingSessionSubID = f_RFQReqGrp_TradingSessionSubID;
        f_RFQReqGrp_NoRelatedSym = f_RFQReqGrp_NoRelatedSym;
        f_RFQReqGrp_QuoteType = f_RFQReqGrp_QuoteType;
        f_RFQReqGrp_PrevClosePx = f_RFQReqGrp_PrevClosePx;
        f_RFQReqGrp_QuoteRequestType = f_RFQReqGrp_QuoteRequestType;
        f_RFQReqGrp_TradingSessionID = f_RFQReqGrp_TradingSessionID
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_InstrmtMDReqGrp (msg)  =
    opt msg "146" parse_int (fun msg f_InstrmtMDReqGrp_NoRelatedSym -> block msg parse_Instrument (fun msg f_InstrmtMDReqGrp_Instrument -> repeating msg "555" parse_InstrmtLegGrp (fun msg f_InstrmtMDReqGrp_InstrmtLegGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_InstrmtMDReqGrp_UndInstrmtGrp -> (ParseSuccess {
        f_InstrmtMDReqGrp_UndInstrmtGrp = f_InstrmtMDReqGrp_UndInstrmtGrp;
        f_InstrmtMDReqGrp_InstrmtLegGrp = f_InstrmtMDReqGrp_InstrmtLegGrp;
        f_InstrmtMDReqGrp_Instrument = f_InstrmtMDReqGrp_Instrument;
        f_InstrmtMDReqGrp_NoRelatedSym = f_InstrmtMDReqGrp_NoRelatedSym
    },msg)
    )
    )
    )
    )
;;

let parse_SecListGrp (msg)  =
    opt msg "15" parse_Currency (fun msg f_SecListGrp_Currency -> opt msg "561" parse_float (fun msg f_SecListGrp_RoundLot -> opt msg "354" parse_int (fun msg f_SecListGrp_EncodedTextLen -> opt msg "827" parse_ExpirationCycle (fun msg f_SecListGrp_ExpirationCycle -> opt msg "625" parse_string (fun msg f_SecListGrp_TradingSessionSubID -> opt msg "562" parse_float (fun msg f_SecListGrp_MinTradeVol -> opt msg "58" parse_string (fun msg f_SecListGrp_Text -> opt msg "336" parse_string (fun msg f_SecListGrp_TradingSessionID -> opt msg "355" parse_string (fun msg f_SecListGrp_EncodedText -> opt msg "146" parse_int (fun msg f_SecListGrp_NoRelatedSym -> block msg parse_YieldData (fun msg f_SecListGrp_YieldData -> block msg parse_Instrument (fun msg f_SecListGrp_Instrument -> block msg parse_SpreadOrBenchmarkCurveData (fun msg f_SecListGrp_SpreadOrBenchmarkCurveData -> block msg parse_InstrumentExtension (fun msg f_SecListGrp_InstrumentExtension -> block msg parse_FinancingDetails (fun msg f_SecListGrp_FinancingDetails -> repeating msg "232" parse_Stipulations (fun msg f_SecListGrp_Stipulations -> repeating msg "555" parse_InstrmtLegSecListGrp (fun msg f_SecListGrp_InstrmtLegSecListGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_SecListGrp_UndInstrmtGrp -> (ParseSuccess {
        f_SecListGrp_UndInstrmtGrp = f_SecListGrp_UndInstrmtGrp;
        f_SecListGrp_InstrmtLegSecListGrp = f_SecListGrp_InstrmtLegSecListGrp;
        f_SecListGrp_Stipulations = f_SecListGrp_Stipulations;
        f_SecListGrp_FinancingDetails = f_SecListGrp_FinancingDetails;
        f_SecListGrp_InstrumentExtension = f_SecListGrp_InstrumentExtension;
        f_SecListGrp_SpreadOrBenchmarkCurveData = f_SecListGrp_SpreadOrBenchmarkCurveData;
        f_SecListGrp_Instrument = f_SecListGrp_Instrument;
        f_SecListGrp_YieldData = f_SecListGrp_YieldData;
        f_SecListGrp_NoRelatedSym = f_SecListGrp_NoRelatedSym;
        f_SecListGrp_EncodedText = f_SecListGrp_EncodedText;
        f_SecListGrp_TradingSessionID = f_SecListGrp_TradingSessionID;
        f_SecListGrp_Text = f_SecListGrp_Text;
        f_SecListGrp_MinTradeVol = f_SecListGrp_MinTradeVol;
        f_SecListGrp_TradingSessionSubID = f_SecListGrp_TradingSessionSubID;
        f_SecListGrp_ExpirationCycle = f_SecListGrp_ExpirationCycle;
        f_SecListGrp_EncodedTextLen = f_SecListGrp_EncodedTextLen;
        f_SecListGrp_RoundLot = f_SecListGrp_RoundLot;
        f_SecListGrp_Currency = f_SecListGrp_Currency
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_ListOrdGrp (msg)  =
    opt msg "21" parse_HandlInst (fun msg f_ListOrdGrp_HandlInst -> opt msg "75" parse_LocalMktDate (fun msg f_ListOrdGrp_TradeDate -> opt msg "64" parse_LocalMktDate (fun msg f_ListOrdGrp_SettlDate -> opt msg "15" parse_Currency (fun msg f_ListOrdGrp_Currency -> opt msg "73" parse_int (fun msg f_ListOrdGrp_NoOrders -> opt msg "77" parse_PositionEffect (fun msg f_ListOrdGrp_PositionEffect -> opt msg "120" parse_Currency (fun msg f_ListOrdGrp_SettlCurrency -> opt msg "23" parse_string (fun msg f_ListOrdGrp_IOIID -> opt msg "590" parse_BookingUnit (fun msg f_ListOrdGrp_BookingUnit -> opt msg "70" parse_string (fun msg f_ListOrdGrp_AllocID -> opt msg "355" parse_string (fun msg f_ListOrdGrp_EncodedText -> opt msg "203" parse_CoveredOrUncovered (fun msg f_ListOrdGrp_CoveredOrUncovered -> opt msg "529" parse_OrderRestrictions (fun msg f_ListOrdGrp_OrderRestrictions -> opt msg "126" parse_UTCTimestamp (fun msg f_ListOrdGrp_ExpireTime -> opt msg "63" parse_SettlType (fun msg f_ListOrdGrp_SettlType -> opt msg "44" parse_float (fun msg f_ListOrdGrp_Price -> opt msg "848" parse_string (fun msg f_ListOrdGrp_TargetStrategyParameters -> opt msg "99" parse_float (fun msg f_ListOrdGrp_StopPx -> opt msg "589" parse_DayBookingInst (fun msg f_ListOrdGrp_DayBookingInst -> opt msg "67" parse_int (fun msg f_ListOrdGrp_ListSeqNo -> opt msg "58" parse_string (fun msg f_ListOrdGrp_Text -> opt msg "11" parse_string (fun msg f_ListOrdGrp_ClOrdID -> opt msg "544" parse_CashMargin (fun msg f_ListOrdGrp_CashMargin -> opt msg "582" parse_CustOrderCapacity (fun msg f_ListOrdGrp_CustOrderCapacity -> opt msg "114" parse_LocateReqd (fun msg f_ListOrdGrp_LocateReqd -> opt msg "117" parse_string (fun msg f_ListOrdGrp_QuoteID -> opt msg "160" parse_SettlInstMode (fun msg f_ListOrdGrp_SettlInstMode -> opt msg "494" parse_string (fun msg f_ListOrdGrp_Designation -> opt msg "775" parse_BookingType (fun msg f_ListOrdGrp_BookingType -> opt msg "18" parse_ExecInst (fun msg f_ListOrdGrp_ExecInst -> opt msg "140" parse_float (fun msg f_ListOrdGrp_PrevClosePx -> opt msg "583" parse_string (fun msg f_ListOrdGrp_ClOrdLinkID -> opt msg "376" parse_string (fun msg f_ListOrdGrp_ComplianceID -> opt msg "59" parse_TimeInForce (fun msg f_ListOrdGrp_TimeInForce -> opt msg "121" parse_ForexReq (fun msg f_ListOrdGrp_ForexReq -> opt msg "640" parse_float (fun msg f_ListOrdGrp_Price2 -> opt msg "849" parse_float (fun msg f_ListOrdGrp_ParticipationRate -> opt msg "354" parse_int (fun msg f_ListOrdGrp_EncodedTextLen -> opt msg "54" parse_Side (fun msg f_ListOrdGrp_Side -> opt msg "192" parse_float (fun msg f_ListOrdGrp_OrderQty2 -> opt msg "60" parse_UTCTimestamp (fun msg f_ListOrdGrp_TransactTime -> opt msg "193" parse_LocalMktDate (fun msg f_ListOrdGrp_SettlDate2 -> opt msg "229" parse_LocalMktDate (fun msg f_ListOrdGrp_TradeOriginationDate -> opt msg "432" parse_LocalMktDate (fun msg f_ListOrdGrp_ExpireDate -> opt msg "591" parse_PreallocMethod (fun msg f_ListOrdGrp_PreallocMethod -> opt msg "110" parse_float (fun msg f_ListOrdGrp_MinQty -> opt msg "168" parse_UTCTimestamp (fun msg f_ListOrdGrp_EffectiveTime -> opt msg "660" parse_AcctIDSource (fun msg f_ListOrdGrp_AcctIDSource -> opt msg "1" parse_string (fun msg f_ListOrdGrp_Account -> opt msg "423" parse_PriceType (fun msg f_ListOrdGrp_PriceType -> opt msg "100" parse_Exchange (fun msg f_ListOrdGrp_ExDestination -> opt msg "427" parse_GTBookingInst (fun msg f_ListOrdGrp_GTBookingInst -> opt msg "635" parse_ClearingFeeIndicator (fun msg f_ListOrdGrp_ClearingFeeIndicator -> opt msg "854" parse_QtyType (fun msg f_ListOrdGrp_QtyType -> opt msg "847" parse_TargetStrategy (fun msg f_ListOrdGrp_TargetStrategy -> opt msg "81" parse_ProcessCode (fun msg f_ListOrdGrp_ProcessCode -> opt msg "111" parse_float (fun msg f_ListOrdGrp_MaxFloor -> opt msg "581" parse_AccountType (fun msg f_ListOrdGrp_AccountType -> opt msg "526" parse_string (fun msg f_ListOrdGrp_SecondaryClOrdID -> opt msg "210" parse_float (fun msg f_ListOrdGrp_MaxShow -> opt msg "40" parse_OrdType (fun msg f_ListOrdGrp_OrdType -> opt msg "401" parse_SideValueInd (fun msg f_ListOrdGrp_SideValueInd -> opt msg "528" parse_OrderCapacity (fun msg f_ListOrdGrp_OrderCapacity -> opt msg "377" parse_SolicitedFlag (fun msg f_ListOrdGrp_SolicitedFlag -> block msg parse_DiscretionInstructions (fun msg f_ListOrdGrp_DiscretionInstructions -> block msg parse_PegInstructions (fun msg f_ListOrdGrp_PegInstructions -> block msg parse_Instrument (fun msg f_ListOrdGrp_Instrument -> block msg parse_YieldData (fun msg f_ListOrdGrp_YieldData -> block msg parse_SpreadOrBenchmarkCurveData (fun msg f_ListOrdGrp_SpreadOrBenchmarkCurveData -> block msg parse_OrderQtyData (fun msg f_ListOrdGrp_OrderQtyData -> block msg parse_CommissionData (fun msg f_ListOrdGrp_CommissionData -> repeating msg "453" parse_Parties (fun msg f_ListOrdGrp_Parties -> repeating msg "386" parse_TrdgSesGrp (fun msg f_ListOrdGrp_TrdgSesGrp -> repeating msg "78" parse_PreAllocGrp (fun msg f_ListOrdGrp_PreAllocGrp -> repeating msg "711" parse_UndInstrmtGrp (fun msg f_ListOrdGrp_UndInstrmtGrp -> repeating msg "232" parse_Stipulations (fun msg f_ListOrdGrp_Stipulations -> (ParseSuccess {
        f_ListOrdGrp_Stipulations = f_ListOrdGrp_Stipulations;
        f_ListOrdGrp_UndInstrmtGrp = f_ListOrdGrp_UndInstrmtGrp;
        f_ListOrdGrp_PreAllocGrp = f_ListOrdGrp_PreAllocGrp;
        f_ListOrdGrp_TrdgSesGrp = f_ListOrdGrp_TrdgSesGrp;
        f_ListOrdGrp_Parties = f_ListOrdGrp_Parties;
        f_ListOrdGrp_CommissionData = f_ListOrdGrp_CommissionData;
        f_ListOrdGrp_OrderQtyData = f_ListOrdGrp_OrderQtyData;
        f_ListOrdGrp_SpreadOrBenchmarkCurveData = f_ListOrdGrp_SpreadOrBenchmarkCurveData;
        f_ListOrdGrp_YieldData = f_ListOrdGrp_YieldData;
        f_ListOrdGrp_Instrument = f_ListOrdGrp_Instrument;
        f_ListOrdGrp_PegInstructions = f_ListOrdGrp_PegInstructions;
        f_ListOrdGrp_DiscretionInstructions = f_ListOrdGrp_DiscretionInstructions;
        f_ListOrdGrp_SolicitedFlag = f_ListOrdGrp_SolicitedFlag;
        f_ListOrdGrp_OrderCapacity = f_ListOrdGrp_OrderCapacity;
        f_ListOrdGrp_SideValueInd = f_ListOrdGrp_SideValueInd;
        f_ListOrdGrp_OrdType = f_ListOrdGrp_OrdType;
        f_ListOrdGrp_MaxShow = f_ListOrdGrp_MaxShow;
        f_ListOrdGrp_SecondaryClOrdID = f_ListOrdGrp_SecondaryClOrdID;
        f_ListOrdGrp_AccountType = f_ListOrdGrp_AccountType;
        f_ListOrdGrp_MaxFloor = f_ListOrdGrp_MaxFloor;
        f_ListOrdGrp_ProcessCode = f_ListOrdGrp_ProcessCode;
        f_ListOrdGrp_TargetStrategy = f_ListOrdGrp_TargetStrategy;
        f_ListOrdGrp_QtyType = f_ListOrdGrp_QtyType;
        f_ListOrdGrp_ClearingFeeIndicator = f_ListOrdGrp_ClearingFeeIndicator;
        f_ListOrdGrp_GTBookingInst = f_ListOrdGrp_GTBookingInst;
        f_ListOrdGrp_ExDestination = f_ListOrdGrp_ExDestination;
        f_ListOrdGrp_PriceType = f_ListOrdGrp_PriceType;
        f_ListOrdGrp_Account = f_ListOrdGrp_Account;
        f_ListOrdGrp_AcctIDSource = f_ListOrdGrp_AcctIDSource;
        f_ListOrdGrp_EffectiveTime = f_ListOrdGrp_EffectiveTime;
        f_ListOrdGrp_MinQty = f_ListOrdGrp_MinQty;
        f_ListOrdGrp_PreallocMethod = f_ListOrdGrp_PreallocMethod;
        f_ListOrdGrp_ExpireDate = f_ListOrdGrp_ExpireDate;
        f_ListOrdGrp_TradeOriginationDate = f_ListOrdGrp_TradeOriginationDate;
        f_ListOrdGrp_SettlDate2 = f_ListOrdGrp_SettlDate2;
        f_ListOrdGrp_TransactTime = f_ListOrdGrp_TransactTime;
        f_ListOrdGrp_OrderQty2 = f_ListOrdGrp_OrderQty2;
        f_ListOrdGrp_Side = f_ListOrdGrp_Side;
        f_ListOrdGrp_EncodedTextLen = f_ListOrdGrp_EncodedTextLen;
        f_ListOrdGrp_ParticipationRate = f_ListOrdGrp_ParticipationRate;
        f_ListOrdGrp_Price2 = f_ListOrdGrp_Price2;
        f_ListOrdGrp_ForexReq = f_ListOrdGrp_ForexReq;
        f_ListOrdGrp_TimeInForce = f_ListOrdGrp_TimeInForce;
        f_ListOrdGrp_ComplianceID = f_ListOrdGrp_ComplianceID;
        f_ListOrdGrp_ClOrdLinkID = f_ListOrdGrp_ClOrdLinkID;
        f_ListOrdGrp_PrevClosePx = f_ListOrdGrp_PrevClosePx;
        f_ListOrdGrp_ExecInst = f_ListOrdGrp_ExecInst;
        f_ListOrdGrp_BookingType = f_ListOrdGrp_BookingType;
        f_ListOrdGrp_Designation = f_ListOrdGrp_Designation;
        f_ListOrdGrp_SettlInstMode = f_ListOrdGrp_SettlInstMode;
        f_ListOrdGrp_QuoteID = f_ListOrdGrp_QuoteID;
        f_ListOrdGrp_LocateReqd = f_ListOrdGrp_LocateReqd;
        f_ListOrdGrp_CustOrderCapacity = f_ListOrdGrp_CustOrderCapacity;
        f_ListOrdGrp_CashMargin = f_ListOrdGrp_CashMargin;
        f_ListOrdGrp_ClOrdID = f_ListOrdGrp_ClOrdID;
        f_ListOrdGrp_Text = f_ListOrdGrp_Text;
        f_ListOrdGrp_ListSeqNo = f_ListOrdGrp_ListSeqNo;
        f_ListOrdGrp_DayBookingInst = f_ListOrdGrp_DayBookingInst;
        f_ListOrdGrp_StopPx = f_ListOrdGrp_StopPx;
        f_ListOrdGrp_TargetStrategyParameters = f_ListOrdGrp_TargetStrategyParameters;
        f_ListOrdGrp_Price = f_ListOrdGrp_Price;
        f_ListOrdGrp_SettlType = f_ListOrdGrp_SettlType;
        f_ListOrdGrp_ExpireTime = f_ListOrdGrp_ExpireTime;
        f_ListOrdGrp_OrderRestrictions = f_ListOrdGrp_OrderRestrictions;
        f_ListOrdGrp_CoveredOrUncovered = f_ListOrdGrp_CoveredOrUncovered;
        f_ListOrdGrp_EncodedText = f_ListOrdGrp_EncodedText;
        f_ListOrdGrp_AllocID = f_ListOrdGrp_AllocID;
        f_ListOrdGrp_BookingUnit = f_ListOrdGrp_BookingUnit;
        f_ListOrdGrp_IOIID = f_ListOrdGrp_IOIID;
        f_ListOrdGrp_SettlCurrency = f_ListOrdGrp_SettlCurrency;
        f_ListOrdGrp_PositionEffect = f_ListOrdGrp_PositionEffect;
        f_ListOrdGrp_NoOrders = f_ListOrdGrp_NoOrders;
        f_ListOrdGrp_Currency = f_ListOrdGrp_Currency;
        f_ListOrdGrp_SettlDate = f_ListOrdGrp_SettlDate;
        f_ListOrdGrp_TradeDate = f_ListOrdGrp_TradeDate;
        f_ListOrdGrp_HandlInst = f_ListOrdGrp_HandlInst
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_SideCrossOrdModGrp (msg)  =
    opt msg "775" parse_BookingType (fun msg f_SideCrossOrdModGrp_BookingType -> opt msg "75" parse_LocalMktDate (fun msg f_SideCrossOrdModGrp_TradeDate -> opt msg "583" parse_string (fun msg f_SideCrossOrdModGrp_ClOrdLinkID -> opt msg "77" parse_PositionEffect (fun msg f_SideCrossOrdModGrp_PositionEffect -> opt msg "120" parse_Currency (fun msg f_SideCrossOrdModGrp_SettlCurrency -> opt msg "121" parse_ForexReq (fun msg f_SideCrossOrdModGrp_ForexReq -> opt msg "590" parse_BookingUnit (fun msg f_SideCrossOrdModGrp_BookingUnit -> opt msg "354" parse_int (fun msg f_SideCrossOrdModGrp_EncodedTextLen -> opt msg "54" parse_Side (fun msg f_SideCrossOrdModGrp_Side -> opt msg "70" parse_string (fun msg f_SideCrossOrdModGrp_AllocID -> opt msg "229" parse_LocalMktDate (fun msg f_SideCrossOrdModGrp_TradeOriginationDate -> opt msg "552" parse_int (fun msg f_SideCrossOrdModGrp_NoSides -> opt msg "355" parse_string (fun msg f_SideCrossOrdModGrp_EncodedText -> opt msg "591" parse_PreallocMethod (fun msg f_SideCrossOrdModGrp_PreallocMethod -> opt msg "660" parse_AcctIDSource (fun msg f_SideCrossOrdModGrp_AcctIDSource -> opt msg "1" parse_string (fun msg f_SideCrossOrdModGrp_Account -> opt msg "203" parse_CoveredOrUncovered (fun msg f_SideCrossOrdModGrp_CoveredOrUncovered -> opt msg "529" parse_OrderRestrictions (fun msg f_SideCrossOrdModGrp_OrderRestrictions -> opt msg "635" parse_ClearingFeeIndicator (fun msg f_SideCrossOrdModGrp_ClearingFeeIndicator -> opt msg "854" parse_QtyType (fun msg f_SideCrossOrdModGrp_QtyType -> opt msg "589" parse_DayBookingInst (fun msg f_SideCrossOrdModGrp_DayBookingInst -> opt msg "581" parse_AccountType (fun msg f_SideCrossOrdModGrp_AccountType -> opt msg "526" parse_string (fun msg f_SideCrossOrdModGrp_SecondaryClOrdID -> opt msg "58" parse_string (fun msg f_SideCrossOrdModGrp_Text -> opt msg "11" parse_string (fun msg f_SideCrossOrdModGrp_ClOrdID -> opt msg "659" parse_string (fun msg f_SideCrossOrdModGrp_SideComplianceID -> opt msg "544" parse_CashMargin (fun msg f_SideCrossOrdModGrp_CashMargin -> opt msg "582" parse_CustOrderCapacity (fun msg f_SideCrossOrdModGrp_CustOrderCapacity -> opt msg "528" parse_OrderCapacity (fun msg f_SideCrossOrdModGrp_OrderCapacity -> opt msg "377" parse_SolicitedFlag (fun msg f_SideCrossOrdModGrp_SolicitedFlag -> block msg parse_OrderQtyData (fun msg f_SideCrossOrdModGrp_OrderQtyData -> block msg parse_CommissionData (fun msg f_SideCrossOrdModGrp_CommissionData -> repeating msg "78" parse_PreAllocGrp (fun msg f_SideCrossOrdModGrp_PreAllocGrp -> repeating msg "453" parse_Parties (fun msg f_SideCrossOrdModGrp_Parties -> (ParseSuccess {
        f_SideCrossOrdModGrp_Parties = f_SideCrossOrdModGrp_Parties;
        f_SideCrossOrdModGrp_PreAllocGrp = f_SideCrossOrdModGrp_PreAllocGrp;
        f_SideCrossOrdModGrp_CommissionData = f_SideCrossOrdModGrp_CommissionData;
        f_SideCrossOrdModGrp_OrderQtyData = f_SideCrossOrdModGrp_OrderQtyData;
        f_SideCrossOrdModGrp_SolicitedFlag = f_SideCrossOrdModGrp_SolicitedFlag;
        f_SideCrossOrdModGrp_OrderCapacity = f_SideCrossOrdModGrp_OrderCapacity;
        f_SideCrossOrdModGrp_CustOrderCapacity = f_SideCrossOrdModGrp_CustOrderCapacity;
        f_SideCrossOrdModGrp_CashMargin = f_SideCrossOrdModGrp_CashMargin;
        f_SideCrossOrdModGrp_SideComplianceID = f_SideCrossOrdModGrp_SideComplianceID;
        f_SideCrossOrdModGrp_ClOrdID = f_SideCrossOrdModGrp_ClOrdID;
        f_SideCrossOrdModGrp_Text = f_SideCrossOrdModGrp_Text;
        f_SideCrossOrdModGrp_SecondaryClOrdID = f_SideCrossOrdModGrp_SecondaryClOrdID;
        f_SideCrossOrdModGrp_AccountType = f_SideCrossOrdModGrp_AccountType;
        f_SideCrossOrdModGrp_DayBookingInst = f_SideCrossOrdModGrp_DayBookingInst;
        f_SideCrossOrdModGrp_QtyType = f_SideCrossOrdModGrp_QtyType;
        f_SideCrossOrdModGrp_ClearingFeeIndicator = f_SideCrossOrdModGrp_ClearingFeeIndicator;
        f_SideCrossOrdModGrp_OrderRestrictions = f_SideCrossOrdModGrp_OrderRestrictions;
        f_SideCrossOrdModGrp_CoveredOrUncovered = f_SideCrossOrdModGrp_CoveredOrUncovered;
        f_SideCrossOrdModGrp_Account = f_SideCrossOrdModGrp_Account;
        f_SideCrossOrdModGrp_AcctIDSource = f_SideCrossOrdModGrp_AcctIDSource;
        f_SideCrossOrdModGrp_PreallocMethod = f_SideCrossOrdModGrp_PreallocMethod;
        f_SideCrossOrdModGrp_EncodedText = f_SideCrossOrdModGrp_EncodedText;
        f_SideCrossOrdModGrp_NoSides = f_SideCrossOrdModGrp_NoSides;
        f_SideCrossOrdModGrp_TradeOriginationDate = f_SideCrossOrdModGrp_TradeOriginationDate;
        f_SideCrossOrdModGrp_AllocID = f_SideCrossOrdModGrp_AllocID;
        f_SideCrossOrdModGrp_Side = f_SideCrossOrdModGrp_Side;
        f_SideCrossOrdModGrp_EncodedTextLen = f_SideCrossOrdModGrp_EncodedTextLen;
        f_SideCrossOrdModGrp_BookingUnit = f_SideCrossOrdModGrp_BookingUnit;
        f_SideCrossOrdModGrp_ForexReq = f_SideCrossOrdModGrp_ForexReq;
        f_SideCrossOrdModGrp_SettlCurrency = f_SideCrossOrdModGrp_SettlCurrency;
        f_SideCrossOrdModGrp_PositionEffect = f_SideCrossOrdModGrp_PositionEffect;
        f_SideCrossOrdModGrp_ClOrdLinkID = f_SideCrossOrdModGrp_ClOrdLinkID;
        f_SideCrossOrdModGrp_TradeDate = f_SideCrossOrdModGrp_TradeDate;
        f_SideCrossOrdModGrp_BookingType = f_SideCrossOrdModGrp_BookingType
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_SettlInstructionsData (msg)  =
    opt msg "169" parse_StandInstDbType (fun msg f_SettlInstructionsData_StandInstDbType -> opt msg "170" parse_string (fun msg f_SettlInstructionsData_StandInstDbName -> opt msg "171" parse_string (fun msg f_SettlInstructionsData_StandInstDbID -> opt msg "172" parse_SettlDeliveryType (fun msg f_SettlInstructionsData_SettlDeliveryType -> repeating msg "85" parse_DlvyInstGrp (fun msg f_SettlInstructionsData_DlvyInstGrp -> (ParseSuccess {
        f_SettlInstructionsData_DlvyInstGrp = f_SettlInstructionsData_DlvyInstGrp;
        f_SettlInstructionsData_SettlDeliveryType = f_SettlInstructionsData_SettlDeliveryType;
        f_SettlInstructionsData_StandInstDbID = f_SettlInstructionsData_StandInstDbID;
        f_SettlInstructionsData_StandInstDbName = f_SettlInstructionsData_StandInstDbName;
        f_SettlInstructionsData_StandInstDbType = f_SettlInstructionsData_StandInstDbType
    },msg)
    )
    )
    )
    )
    )
;;

let parse_AllocGrp (msg)  =
    opt msg "573" parse_MatchStatus (fun msg f_AllocGrp_MatchStatus -> opt msg "741" parse_float (fun msg f_AllocGrp_AllocInterestAtMaturity -> opt msg "208" parse_NotifyBrokerOfCredit (fun msg f_AllocGrp_NotifyBrokerOfCredit -> opt msg "120" parse_Currency (fun msg f_AllocGrp_SettlCurrency -> opt msg "736" parse_Currency (fun msg f_AllocGrp_AllocSettlCurrency -> opt msg "467" parse_string (fun msg f_AllocGrp_IndividualAllocID -> opt msg "366" parse_float (fun msg f_AllocGrp_AllocPrice -> opt msg "79" parse_string (fun msg f_AllocGrp_AllocAccount -> opt msg "156" parse_SettlCurrFxRateCalc (fun msg f_AllocGrp_SettlCurrFxRateCalc -> opt msg "661" parse_int (fun msg f_AllocGrp_AllocAcctIDSource -> opt msg "80" parse_float (fun msg f_AllocGrp_AllocQty -> opt msg "154" parse_float (fun msg f_AllocGrp_AllocNetMoney -> opt msg "155" parse_float (fun msg f_AllocGrp_SettlCurrFxRate -> opt msg "209" parse_AllocHandlInst (fun msg f_AllocGrp_AllocHandlInst -> opt msg "360" parse_int (fun msg f_AllocGrp_EncodedAllocTextLen -> opt msg "153" parse_float (fun msg f_AllocGrp_AllocAvgPx -> opt msg "361" parse_string (fun msg f_AllocGrp_EncodedAllocText -> opt msg "81" parse_ProcessCode (fun msg f_AllocGrp_ProcessCode -> opt msg "780" parse_AllocSettlInstType (fun msg f_AllocGrp_AllocSettlInstType -> opt msg "161" parse_string (fun msg f_AllocGrp_AllocText -> opt msg "119" parse_float (fun msg f_AllocGrp_SettlCurrAmt -> opt msg "737" parse_float (fun msg f_AllocGrp_AllocSettlCurrAmt -> opt msg "78" parse_int (fun msg f_AllocGrp_NoAllocs -> opt msg "742" parse_float (fun msg f_AllocGrp_AllocAccruedInterestAmt -> block msg parse_CommissionData (fun msg f_AllocGrp_CommissionData -> block msg parse_SettlInstructionsData (fun msg f_AllocGrp_SettlInstructionsData -> repeating msg "539" parse_NestedParties (fun msg f_AllocGrp_NestedParties -> repeating msg "136" parse_MiscFeesGrp (fun msg f_AllocGrp_MiscFeesGrp -> repeating msg "576" parse_ClrInstGrp (fun msg f_AllocGrp_ClrInstGrp -> (ParseSuccess {
        f_AllocGrp_ClrInstGrp = f_AllocGrp_ClrInstGrp;
        f_AllocGrp_MiscFeesGrp = f_AllocGrp_MiscFeesGrp;
        f_AllocGrp_NestedParties = f_AllocGrp_NestedParties;
        f_AllocGrp_SettlInstructionsData = f_AllocGrp_SettlInstructionsData;
        f_AllocGrp_CommissionData = f_AllocGrp_CommissionData;
        f_AllocGrp_AllocAccruedInterestAmt = f_AllocGrp_AllocAccruedInterestAmt;
        f_AllocGrp_NoAllocs = f_AllocGrp_NoAllocs;
        f_AllocGrp_AllocSettlCurrAmt = f_AllocGrp_AllocSettlCurrAmt;
        f_AllocGrp_SettlCurrAmt = f_AllocGrp_SettlCurrAmt;
        f_AllocGrp_AllocText = f_AllocGrp_AllocText;
        f_AllocGrp_AllocSettlInstType = f_AllocGrp_AllocSettlInstType;
        f_AllocGrp_ProcessCode = f_AllocGrp_ProcessCode;
        f_AllocGrp_EncodedAllocText = f_AllocGrp_EncodedAllocText;
        f_AllocGrp_AllocAvgPx = f_AllocGrp_AllocAvgPx;
        f_AllocGrp_EncodedAllocTextLen = f_AllocGrp_EncodedAllocTextLen;
        f_AllocGrp_AllocHandlInst = f_AllocGrp_AllocHandlInst;
        f_AllocGrp_SettlCurrFxRate = f_AllocGrp_SettlCurrFxRate;
        f_AllocGrp_AllocNetMoney = f_AllocGrp_AllocNetMoney;
        f_AllocGrp_AllocQty = f_AllocGrp_AllocQty;
        f_AllocGrp_AllocAcctIDSource = f_AllocGrp_AllocAcctIDSource;
        f_AllocGrp_SettlCurrFxRateCalc = f_AllocGrp_SettlCurrFxRateCalc;
        f_AllocGrp_AllocAccount = f_AllocGrp_AllocAccount;
        f_AllocGrp_AllocPrice = f_AllocGrp_AllocPrice;
        f_AllocGrp_IndividualAllocID = f_AllocGrp_IndividualAllocID;
        f_AllocGrp_AllocSettlCurrency = f_AllocGrp_AllocSettlCurrency;
        f_AllocGrp_SettlCurrency = f_AllocGrp_SettlCurrency;
        f_AllocGrp_NotifyBrokerOfCredit = f_AllocGrp_NotifyBrokerOfCredit;
        f_AllocGrp_AllocInterestAtMaturity = f_AllocGrp_AllocInterestAtMaturity;
        f_AllocGrp_MatchStatus = f_AllocGrp_MatchStatus
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_SettlInstGrp (msg)  =
    opt msg "503" parse_LocalMktDate (fun msg f_SettlInstGrp_CardStartDate -> opt msg "491" parse_string (fun msg f_SettlInstGrp_CardIssNum -> opt msg "126" parse_UTCTimestamp (fun msg f_SettlInstGrp_ExpireTime -> opt msg "162" parse_string (fun msg f_SettlInstGrp_SettlInstID -> opt msg "476" parse_string (fun msg f_SettlInstGrp_PaymentRef -> opt msg "492" parse_PaymentMethod (fun msg f_SettlInstGrp_PaymentMethod -> opt msg "778" parse_int (fun msg f_SettlInstGrp_NoSettlInst -> opt msg "779" parse_UTCTimestamp (fun msg f_SettlInstGrp_LastUpdateTime -> opt msg "54" parse_Side (fun msg f_SettlInstGrp_Side -> opt msg "488" parse_string (fun msg f_SettlInstGrp_CardHolderName -> opt msg "461" parse_string (fun msg f_SettlInstGrp_CFICode -> opt msg "460" parse_Product (fun msg f_SettlInstGrp_Product -> opt msg "163" parse_SettlInstTransType (fun msg f_SettlInstGrp_SettlInstTransType -> opt msg "505" parse_string (fun msg f_SettlInstGrp_PaymentRemitterID -> opt msg "504" parse_LocalMktDate (fun msg f_SettlInstGrp_PaymentDate -> opt msg "168" parse_UTCTimestamp (fun msg f_SettlInstGrp_EffectiveTime -> opt msg "490" parse_LocalMktDate (fun msg f_SettlInstGrp_CardExpDate -> opt msg "489" parse_string (fun msg f_SettlInstGrp_CardNumber -> opt msg "167" parse_SecurityType (fun msg f_SettlInstGrp_SecurityType -> opt msg "214" parse_string (fun msg f_SettlInstGrp_SettlInstRefID -> block msg parse_SettlInstructionsData (fun msg f_SettlInstGrp_SettlInstructionsData -> repeating msg "453" parse_Parties (fun msg f_SettlInstGrp_Parties -> (ParseSuccess {
        f_SettlInstGrp_Parties = f_SettlInstGrp_Parties;
        f_SettlInstGrp_SettlInstructionsData = f_SettlInstGrp_SettlInstructionsData;
        f_SettlInstGrp_SettlInstRefID = f_SettlInstGrp_SettlInstRefID;
        f_SettlInstGrp_SecurityType = f_SettlInstGrp_SecurityType;
        f_SettlInstGrp_CardNumber = f_SettlInstGrp_CardNumber;
        f_SettlInstGrp_CardExpDate = f_SettlInstGrp_CardExpDate;
        f_SettlInstGrp_EffectiveTime = f_SettlInstGrp_EffectiveTime;
        f_SettlInstGrp_PaymentDate = f_SettlInstGrp_PaymentDate;
        f_SettlInstGrp_PaymentRemitterID = f_SettlInstGrp_PaymentRemitterID;
        f_SettlInstGrp_SettlInstTransType = f_SettlInstGrp_SettlInstTransType;
        f_SettlInstGrp_Product = f_SettlInstGrp_Product;
        f_SettlInstGrp_CFICode = f_SettlInstGrp_CFICode;
        f_SettlInstGrp_CardHolderName = f_SettlInstGrp_CardHolderName;
        f_SettlInstGrp_Side = f_SettlInstGrp_Side;
        f_SettlInstGrp_LastUpdateTime = f_SettlInstGrp_LastUpdateTime;
        f_SettlInstGrp_NoSettlInst = f_SettlInstGrp_NoSettlInst;
        f_SettlInstGrp_PaymentMethod = f_SettlInstGrp_PaymentMethod;
        f_SettlInstGrp_PaymentRef = f_SettlInstGrp_PaymentRef;
        f_SettlInstGrp_SettlInstID = f_SettlInstGrp_SettlInstID;
        f_SettlInstGrp_ExpireTime = f_SettlInstGrp_ExpireTime;
        f_SettlInstGrp_CardIssNum = f_SettlInstGrp_CardIssNum;
        f_SettlInstGrp_CardStartDate = f_SettlInstGrp_CardStartDate
    },msg)
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
;;

let parse_QuotSetAckGrp (msg)  =
    opt msg "304" parse_int (fun msg f_QuotSetAckGrp_TotNoQuoteEntries -> opt msg "296" parse_int (fun msg f_QuotSetAckGrp_NoQuoteSets -> opt msg "893" parse_LastFragment (fun msg f_QuotSetAckGrp_LastFragment -> opt msg "302" parse_string (fun msg f_QuotSetAckGrp_QuoteSetID -> block msg parse_UnderlyingInstrument (fun msg f_QuotSetAckGrp_UnderlyingInstrument -> repeating msg "295" parse_QuotEntryAckGrp (fun msg f_QuotSetAckGrp_QuotEntryAckGrp -> (ParseSuccess {
        f_QuotSetAckGrp_QuotEntryAckGrp = f_QuotSetAckGrp_QuotEntryAckGrp;
        f_QuotSetAckGrp_UnderlyingInstrument = f_QuotSetAckGrp_UnderlyingInstrument;
        f_QuotSetAckGrp_QuoteSetID = f_QuotSetAckGrp_QuoteSetID;
        f_QuotSetAckGrp_LastFragment = f_QuotSetAckGrp_LastFragment;
        f_QuotSetAckGrp_NoQuoteSets = f_QuotSetAckGrp_NoQuoteSets;
        f_QuotSetAckGrp_TotNoQuoteEntries = f_QuotSetAckGrp_TotNoQuoteEntries
    },msg)
    )
    )
    )
    )
    )
    )
;;

let parse_QuotSetGrp (msg)  =
    opt msg "304" parse_int (fun msg f_QuotSetGrp_TotNoQuoteEntries -> opt msg "367" parse_UTCTimestamp (fun msg f_QuotSetGrp_QuoteSetValidUntilTime -> opt msg "296" parse_int (fun msg f_QuotSetGrp_NoQuoteSets -> opt msg "893" parse_LastFragment (fun msg f_QuotSetGrp_LastFragment -> opt msg "302" parse_string (fun msg f_QuotSetGrp_QuoteSetID -> block msg parse_UnderlyingInstrument (fun msg f_QuotSetGrp_UnderlyingInstrument -> repeating msg "295" parse_QuotEntryGrp (fun msg f_QuotSetGrp_QuotEntryGrp -> (ParseSuccess {
        f_QuotSetGrp_QuotEntryGrp = f_QuotSetGrp_QuotEntryGrp;
        f_QuotSetGrp_UnderlyingInstrument = f_QuotSetGrp_UnderlyingInstrument;
        f_QuotSetGrp_QuoteSetID = f_QuotSetGrp_QuoteSetID;
        f_QuotSetGrp_LastFragment = f_QuotSetGrp_LastFragment;
        f_QuotSetGrp_NoQuoteSets = f_QuotSetGrp_NoQuoteSets;
        f_QuotSetGrp_QuoteSetValidUntilTime = f_QuotSetGrp_QuoteSetValidUntilTime;
        f_QuotSetGrp_TotNoQuoteEntries = f_QuotSetGrp_TotNoQuoteEntries
    },msg)
    )
    )
    )
    )
    )
    )
    )
;;
