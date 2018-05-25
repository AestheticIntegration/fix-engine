(* Aesthetic Integration copyright 2018 *)
open Full_app_enums;;
open Yojson;;

let accounttype_to_string (d)  =
    (match d with
        | FIX_AccountType_CarriedCustomerSide -> "CarriedCustomerSide"
        | FIX_AccountType_HouseTrader -> "HouseTrader"
        | FIX_AccountType_CarriedNonCustomerSide -> "CarriedNonCustomerSide"
        | FIX_AccountType_CarriedNonCustomerSideCrossMargined -> "CarriedNonCustomerSideCrossMargined"
        | FIX_AccountType_JointBackOfficeAccount -> "JointBackOfficeAccount"
        | FIX_AccountType_HouseTraderCrossMargined -> "HouseTraderCrossMargined"
        | FIX_AccountType_FloorTrader -> "FloorTrader"
    )
;;

let acctidsource_to_string (d)  =
    (match d with
        | FIX_AcctIDSource_Other -> "Other"
        | FIX_AcctIDSource_BIC -> "BIC"
        | FIX_AcctIDSource_TFM -> "TFM"
        | FIX_AcctIDSource_DTCCCode -> "DTCCCode"
        | FIX_AcctIDSource_SIDCode -> "SIDCode"
        | FIX_AcctIDSource_OMGEO -> "OMGEO"
    )
;;

let adjustment_to_string (d)  =
    (match d with
        | FIX_Adjustment_Cancel -> "Cancel"
        | FIX_Adjustment_Error -> "Error"
        | FIX_Adjustment_Correction -> "Correction"
    )
;;

let adjustmenttype_to_string (d)  =
    (match d with
        | FIX_AdjustmentType_ProcessRequestAsMarginDisposition -> "ProcessRequestAsMarginDisposition"
        | FIX_AdjustmentType_DeltaPlus -> "DeltaPlus"
        | FIX_AdjustmentType_Final -> "Final"
        | FIX_AdjustmentType_DeltaMinus -> "DeltaMinus"
    )
;;

let advside_to_string (d)  =
    (match d with
        | FIX_AdvSide_Buy -> "Buy"
        | FIX_AdvSide_Sell -> "Sell"
        | FIX_AdvSide_Trade -> "Trade"
        | FIX_AdvSide_Cross -> "Cross"
    )
;;

let advtranstype_to_string (d)  =
    (match d with
        | FIX_AdvTransType_Cancel -> "Cancel"
        | FIX_AdvTransType_Replace -> "Replace"
        | FIX_AdvTransType_New -> "New"
    )
;;

let affirmstatus_to_string (d)  =
    (match d with
        | FIX_AffirmStatus_Affirmed -> "Affirmed"
        | FIX_AffirmStatus_Received -> "Received"
        | FIX_AffirmStatus_ConfirmRejected -> "ConfirmRejected"
    )
;;

let aggregatedbook_to_string (d)  =
    (match d with
        | FIX_AggregatedBook_BookEntriesToBeAggregated -> "BookEntriesToBeAggregated"
        | FIX_AggregatedBook_BookEntriesShouldNotBeAggregated -> "BookEntriesShouldNotBeAggregated"
    )
;;

let allocaccounttype_to_string (d)  =
    (match d with
        | FIX_AllocAccountType_CarriedCustomerSide -> "CarriedCustomerSide"
        | FIX_AllocAccountType_HouseTrader -> "HouseTrader"
        | FIX_AllocAccountType_CarriedNonCustomerSide -> "CarriedNonCustomerSide"
        | FIX_AllocAccountType_CarriedNonCustomerSideCrossMargined -> "CarriedNonCustomerSideCrossMargined"
        | FIX_AllocAccountType_JointBackOfficeAccount -> "JointBackOfficeAccount"
        | FIX_AllocAccountType_HouseTraderCrossMargined -> "HouseTraderCrossMargined"
        | FIX_AllocAccountType_FloorTrader -> "FloorTrader"
    )
;;

let alloccancreplacereason_to_string (d)  =
    (match d with
        | FIX_AllocCancReplaceReason_Other -> "Other"
        | FIX_AllocCancReplaceReason_ChangeInUnderlyingOrderDetails -> "ChangeInUnderlyingOrderDetails"
        | FIX_AllocCancReplaceReason_OriginalDetailsIncomplete -> "OriginalDetailsIncomplete"
    )
;;

let allochandlinst_to_string (d)  =
    (match d with
        | FIX_AllocHandlInst_ForwardAndMatch -> "ForwardAndMatch"
        | FIX_AllocHandlInst_Forward -> "Forward"
        | FIX_AllocHandlInst_Match -> "Match"
    )
;;

let allocintermedreqtype_to_string (d)  =
    (match d with
        | FIX_AllocIntermedReqType_PendingAccept -> "PendingAccept"
        | FIX_AllocIntermedReqType_BlockLevelReject -> "BlockLevelReject"
        | FIX_AllocIntermedReqType_PendingRelease -> "PendingRelease"
        | FIX_AllocIntermedReqType_PendingReversal -> "PendingReversal"
        | FIX_AllocIntermedReqType_AccountLevelReject -> "AccountLevelReject"
        | FIX_AllocIntermedReqType_Accept -> "Accept"
    )
;;

let alloclinktype_to_string (d)  =
    (match d with
        | FIX_AllocLinkType_FXSwap -> "FXSwap"
        | FIX_AllocLinkType_FXNetting -> "FXNetting"
    )
;;

let allocnoorderstype_to_string (d)  =
    (match d with
        | FIX_AllocNoOrdersType_ExplicitListProvided -> "ExplicitListProvided"
        | FIX_AllocNoOrdersType_NotSpecified -> "NotSpecified"
    )
;;

let allocrejcode_to_string (d)  =
    (match d with
        | FIX_AllocRejCode_UnknownOrStaleExecID -> "UnknownOrStaleExecID"
        | FIX_AllocRejCode_UnknownAccount -> "UnknownAccount"
        | FIX_AllocRejCode_OtherSeeText -> "OtherSeeText"
        | FIX_AllocRejCode_UnknownListID -> "UnknownListID"
        | FIX_AllocRejCode_CalculationDifference -> "CalculationDifference"
        | FIX_AllocRejCode_IncorrectQuantity -> "IncorrectQuantity"
        | FIX_AllocRejCode_UnknownClOrdID -> "UnknownClOrdID"
        | FIX_AllocRejCode_CommissionDifference -> "CommissionDifference"
        | FIX_AllocRejCode_WarehouseRequestRejected -> "WarehouseRequestRejected"
        | FIX_AllocRejCode_UnknownExecutingBrokerMnemonic -> "UnknownExecutingBrokerMnemonic"
        | FIX_AllocRejCode_MismatchedData -> "MismatchedData"
        | FIX_AllocRejCode_UnknownOrderID -> "UnknownOrderID"
        | FIX_AllocRejCode_IncorrectAveragegPrice -> "IncorrectAveragegPrice"
        | FIX_AllocRejCode_IncorrectAllocatedQuantity -> "IncorrectAllocatedQuantity"
    )
;;

let allocreporttype_to_string (d)  =
    (match d with
        | FIX_AllocReportType_SellsideCalculatedWithoutPreliminary -> "SellsideCalculatedWithoutPreliminary"
        | FIX_AllocReportType_WarehouseRecap -> "WarehouseRecap"
        | FIX_AllocReportType_SellsideCalculatedUsingPreliminary -> "SellsideCalculatedUsingPreliminary"
        | FIX_AllocReportType_RequestToIntermediary -> "RequestToIntermediary"
    )
;;

let allocsettlinsttype_to_string (d)  =
    (match d with
        | FIX_AllocSettlInstType_DeriveFromParametersProvided -> "DeriveFromParametersProvided"
        | FIX_AllocSettlInstType_FullDetailsProvided -> "FullDetailsProvided"
        | FIX_AllocSettlInstType_PhoneForInstructions -> "PhoneForInstructions"
        | FIX_AllocSettlInstType_UseDefaultInstructions -> "UseDefaultInstructions"
        | FIX_AllocSettlInstType_SSIDBIDsProvided -> "SSIDBIDsProvided"
    )
;;

let allocstatus_to_string (d)  =
    (match d with
        | FIX_AllocStatus_Incomplete -> "Incomplete"
        | FIX_AllocStatus_Received -> "Received"
        | FIX_AllocStatus_BlockLevelReject -> "BlockLevelReject"
        | FIX_AllocStatus_AccountLevelReject -> "AccountLevelReject"
        | FIX_AllocStatus_RejectedByIntermediary -> "RejectedByIntermediary"
        | FIX_AllocStatus_Accepted -> "Accepted"
    )
;;

let alloctranstype_to_string (d)  =
    (match d with
        | FIX_AllocTransType_Replace -> "Replace"
        | FIX_AllocTransType_Cancel -> "Cancel"
        | FIX_AllocTransType_New -> "New"
    )
;;

let alloctype_to_string (d)  =
    (match d with
        | FIX_AllocType_Preliminary -> "Preliminary"
        | FIX_AllocType_ReadyToBook -> "ReadyToBook"
        | FIX_AllocType_Calculated -> "Calculated"
        | FIX_AllocType_WarehouseInstruction -> "WarehouseInstruction"
        | FIX_AllocType_RequestToIntermediary -> "RequestToIntermediary"
    )
;;

let applqueueaction_to_string (d)  =
    (match d with
        | FIX_ApplQueueAction_NoActionTaken -> "NoActionTaken"
        | FIX_ApplQueueAction_OverlayLast -> "OverlayLast"
        | FIX_ApplQueueAction_QueueFlushed -> "QueueFlushed"
        | FIX_ApplQueueAction_EndSession -> "EndSession"
    )
;;

let applqueueresolution_to_string (d)  =
    (match d with
        | FIX_ApplQueueResolution_NoActionTaken -> "NoActionTaken"
        | FIX_ApplQueueResolution_OverlayLast -> "OverlayLast"
        | FIX_ApplQueueResolution_QueueFlushed -> "QueueFlushed"
        | FIX_ApplQueueResolution_EndSession -> "EndSession"
    )
;;

let assignmentmethod_to_string (d)  =
    (match d with
        | FIX_AssignmentMethod_Random -> "Random"
        | FIX_AssignmentMethod_ProRata -> "ProRata"
    )
;;

let avgpxindicator_to_string (d)  =
    (match d with
        | FIX_AvgPxIndicator_NoAveragePricing -> "NoAveragePricing"
        | FIX_AvgPxIndicator_Trade -> "Trade"
        | FIX_AvgPxIndicator_LastTrade -> "LastTrade"
    )
;;

let basispxtype_to_string (d)  =
    (match d with
        | FIX_BasisPxType_Others -> "Others"
        | FIX_BasisPxType_VWAPThroughADay -> "VWAPThroughADay"
        | FIX_BasisPxType_VWAPThroughAnAfternoonSessionExcept -> "VWAPThroughAnAfternoonSessionExcept"
        | FIX_BasisPxType_VWAPThroughAMorningSession -> "VWAPThroughAMorningSession"
        | FIX_BasisPxType_ClosingPrice -> "ClosingPrice"
        | FIX_BasisPxType_CurrentPrice -> "CurrentPrice"
        | FIX_BasisPxType_Strike -> "Strike"
        | FIX_BasisPxType_Open -> "Open"
        | FIX_BasisPxType_ClosingPriceAtMorningSession -> "ClosingPriceAtMorningSession"
        | FIX_BasisPxType_VWAPThroughADayExcept -> "VWAPThroughADayExcept"
        | FIX_BasisPxType_VWAPThroughAMorningSessionExcept -> "VWAPThroughAMorningSessionExcept"
        | FIX_BasisPxType_VWAPThroughAnAfternoonSession -> "VWAPThroughAnAfternoonSession"
        | FIX_BasisPxType_SQ -> "SQ"
    )
;;

let biddescriptortype_to_string (d)  =
    (match d with
        | FIX_BidDescriptorType_Sector -> "Sector"
        | FIX_BidDescriptorType_Index -> "Index"
        | FIX_BidDescriptorType_Country -> "Country"
    )
;;

let bidrequesttranstype_to_string (d)  =
    (match d with
        | FIX_BidRequestTransType_Cancel -> "Cancel"
        | FIX_BidRequestTransType_New -> "New"
    )
;;

let bidtradetype_to_string (d)  =
    (match d with
        | FIX_BidTradeType_Agency -> "Agency"
        | FIX_BidTradeType_RiskTrade -> "RiskTrade"
        | FIX_BidTradeType_VWAPGuarantee -> "VWAPGuarantee"
        | FIX_BidTradeType_GuaranteedClose -> "GuaranteedClose"
    )
;;

let bidtype_to_string (d)  =
    (match d with
        | FIX_BidType_Disclosed -> "Disclosed"
        | FIX_BidType_NoBiddingProcess -> "NoBiddingProcess"
        | FIX_BidType_NonDisclosed -> "NonDisclosed"
    )
;;

let bookingtype_to_string (d)  =
    (match d with
        | FIX_BookingType_CFD -> "CFD"
        | FIX_BookingType_RegularBooking -> "RegularBooking"
        | FIX_BookingType_TotalReturnSwap -> "TotalReturnSwap"
    )
;;

let bookingunit_to_string (d)  =
    (match d with
        | FIX_BookingUnit_AggregatePartialExecutionsOnThisOrder -> "AggregatePartialExecutionsOnThisOrder"
        | FIX_BookingUnit_AggregateExecutionsForThisSymbol -> "AggregateExecutionsForThisSymbol"
        | FIX_BookingUnit_EachPartialExecutionIsABookableUnit -> "EachPartialExecutionIsABookableUnit"
    )
;;

let cpprogram_to_string (d)  =
    (match d with
        | FIX_CPProgram_Other -> "Other"
        | FIX_CPProgram_Program3a3 -> "Program3a3"
        | FIX_CPProgram_Program42 -> "Program42"
    )
;;

let cancellationrights_to_string (d)  =
    (match d with
        | FIX_CancellationRights_NoWaiverAgreement -> "NoWaiverAgreement"
        | FIX_CancellationRights_NoExecutionOnly -> "NoExecutionOnly"
        | FIX_CancellationRights_Yes -> "Yes"
        | FIX_CancellationRights_NoInstitutional -> "NoInstitutional"
    )
;;

let cashmargin_to_string (d)  =
    (match d with
        | FIX_CashMargin_MarginOpen -> "MarginOpen"
        | FIX_CashMargin_Cash -> "Cash"
        | FIX_CashMargin_MarginClose -> "MarginClose"
    )
;;

let clearingfeeindicator_to_string (d)  =
    (match d with
        | FIX_ClearingFeeIndicator_CBOEMember -> "CBOEMember"
        | FIX_ClearingFeeIndicator_ThirdYearDelegate -> "ThirdYearDelegate"
        | FIX_ClearingFeeIndicator_SixthYearDelegate -> "SixthYearDelegate"
        | FIX_ClearingFeeIndicator_FourthYearDelegate -> "FourthYearDelegate"
        | FIX_ClearingFeeIndicator_FirstYearDelegate -> "FirstYearDelegate"
        | FIX_ClearingFeeIndicator_SecondYearDelegate -> "SecondYearDelegate"
        | FIX_ClearingFeeIndicator_GIM -> "GIM"
        | FIX_ClearingFeeIndicator_FullAndAssociateMember -> "FullAndAssociateMember"
        | FIX_ClearingFeeIndicator_Firms106HAnd106J -> "Firms106HAnd106J"
        | FIX_ClearingFeeIndicator_Lessee106FEmployees -> "Lessee106FEmployees"
        | FIX_ClearingFeeIndicator_EquityMemberAndClearingMember -> "EquityMemberAndClearingMember"
        | FIX_ClearingFeeIndicator_NonMemberAndCustomer -> "NonMemberAndCustomer"
        | FIX_ClearingFeeIndicator_AllOtherOwnershipTypes -> "AllOtherOwnershipTypes"
        | FIX_ClearingFeeIndicator_FifthYearDelegate -> "FifthYearDelegate"
    )
;;

let clearinginstruction_to_string (d)  =
    (match d with
        | FIX_ClearingInstruction_QualifiedServiceRepresentativeQSR -> "QualifiedServiceRepresentativeQSR"
        | FIX_ClearingInstruction_SpecialTrade -> "SpecialTrade"
        | FIX_ClearingInstruction_SelfClearing -> "SelfClearing"
        | FIX_ClearingInstruction_BilateralNettingOnly -> "BilateralNettingOnly"
        | FIX_ClearingInstruction_AutomaticPostingMode -> "AutomaticPostingMode"
        | FIX_ClearingInstruction_AutomaticGiveUpMode -> "AutomaticGiveUpMode"
        | FIX_ClearingInstruction_ClearAgainstCentralCounterparty -> "ClearAgainstCentralCounterparty"
        | FIX_ClearingInstruction_ProcessNormally -> "ProcessNormally"
        | FIX_ClearingInstruction_ExClearing -> "ExClearing"
        | FIX_ClearingInstruction_ManualMode -> "ManualMode"
        | FIX_ClearingInstruction_ExcludeFromCentralCounterparty -> "ExcludeFromCentralCounterparty"
        | FIX_ClearingInstruction_CustomerTrade -> "CustomerTrade"
        | FIX_ClearingInstruction_ExcludeFromAllNetting -> "ExcludeFromAllNetting"
        | FIX_ClearingInstruction_MultilateralNetting -> "MultilateralNetting"
    )
;;

let collaction_to_string (d)  =
    (match d with
        | FIX_CollAction_Add -> "Add"
        | FIX_CollAction_Retain -> "Retain"
        | FIX_CollAction_Remove -> "Remove"
    )
;;

let collasgnreason_to_string (d)  =
    (match d with
        | FIX_CollAsgnReason_Scheduled -> "Scheduled"
        | FIX_CollAsgnReason_AdverseTaxEvent -> "AdverseTaxEvent"
        | FIX_CollAsgnReason_MarginExcess -> "MarginExcess"
        | FIX_CollAsgnReason_ForwardCollateralDemand -> "ForwardCollateralDemand"
        | FIX_CollAsgnReason_MarginDeficiency -> "MarginDeficiency"
        | FIX_CollAsgnReason_Initial -> "Initial"
        | FIX_CollAsgnReason_TimeWarning -> "TimeWarning"
        | FIX_CollAsgnReason_EventOfDefault -> "EventOfDefault"
    )
;;

let collasgnrejectreason_to_string (d)  =
    (match d with
        | FIX_CollAsgnRejectReason_Other -> "Other"
        | FIX_CollAsgnRejectReason_InvalidTypeOfCollateral -> "InvalidTypeOfCollateral"
        | FIX_CollAsgnRejectReason_UnauthorizedTransaction -> "UnauthorizedTransaction"
        | FIX_CollAsgnRejectReason_UnknownDeal -> "UnknownDeal"
        | FIX_CollAsgnRejectReason_UnknownOrInvalidInstrument -> "UnknownOrInvalidInstrument"
        | FIX_CollAsgnRejectReason_ExcessiveSubstitution -> "ExcessiveSubstitution"
        | FIX_CollAsgnRejectReason_InsufficientCollateral -> "InsufficientCollateral"
    )
;;

let collasgnresptype_to_string (d)  =
    (match d with
        | FIX_CollAsgnRespType_Declined -> "Declined"
        | FIX_CollAsgnRespType_Received -> "Received"
        | FIX_CollAsgnRespType_Rejected -> "Rejected"
        | FIX_CollAsgnRespType_Accepted -> "Accepted"
    )
;;

let collasgntranstype_to_string (d)  =
    (match d with
        | FIX_CollAsgnTransType_Replace -> "Replace"
        | FIX_CollAsgnTransType_Cancel -> "Cancel"
        | FIX_CollAsgnTransType_Reverse -> "Reverse"
        | FIX_CollAsgnTransType_New -> "New"
        | FIX_CollAsgnTransType_Release -> "Release"
    )
;;

let collinquiryqualifier_to_string (d)  =
    (match d with
        | FIX_CollInquiryQualifier_PartiallyAssigned -> "PartiallyAssigned"
        | FIX_CollInquiryQualifier_FullyAssigned -> "FullyAssigned"
        | FIX_CollInquiryQualifier_NotAssigned -> "NotAssigned"
        | FIX_CollInquiryQualifier_CollateralInstrument -> "CollateralInstrument"
        | FIX_CollInquiryQualifier_TradeDate -> "TradeDate"
        | FIX_CollInquiryQualifier_GCInstrument -> "GCInstrument"
        | FIX_CollInquiryQualifier_SubstitutionEligible -> "SubstitutionEligible"
        | FIX_CollInquiryQualifier_OutstandingTrades -> "OutstandingTrades"
    )
;;

let collinquiryresult_to_string (d)  =
    (match d with
        | FIX_CollInquiryResult_Other -> "Other"
        | FIX_CollInquiryResult_InvalidParties -> "InvalidParties"
        | FIX_CollInquiryResult_InvalidOrUnknownInstrument -> "InvalidOrUnknownInstrument"
        | FIX_CollInquiryResult_InvalidTransportTypeRequested -> "InvalidTransportTypeRequested"
        | FIX_CollInquiryResult_NoCollateralFoundForTheOrderSpecified -> "NoCollateralFoundForTheOrderSpecified"
        | FIX_CollInquiryResult_InvalidDestinationRequested -> "InvalidDestinationRequested"
        | FIX_CollInquiryResult_CollateralInquiryTypeNotSupported -> "CollateralInquiryTypeNotSupported"
        | FIX_CollInquiryResult_InvalidOrUnknownCollateralType -> "InvalidOrUnknownCollateralType"
        | FIX_CollInquiryResult_NoCollateralFoundForTheTradeSpecified -> "NoCollateralFoundForTheTradeSpecified"
        | FIX_CollInquiryResult_UnauthorizedForCollateralInquiry -> "UnauthorizedForCollateralInquiry"
        | FIX_CollInquiryResult_Successful -> "Successful"
    )
;;

let collinquirystatus_to_string (d)  =
    (match d with
        | FIX_CollInquiryStatus_AcceptedWithWarnings -> "AcceptedWithWarnings"
        | FIX_CollInquiryStatus_CompletedWithWarnings -> "CompletedWithWarnings"
        | FIX_CollInquiryStatus_Rejected -> "Rejected"
        | FIX_CollInquiryStatus_Completed -> "Completed"
        | FIX_CollInquiryStatus_Accepted -> "Accepted"
    )
;;

let collstatus_to_string (d)  =
    (match d with
        | FIX_CollStatus_AssignmentProposed -> "AssignmentProposed"
        | FIX_CollStatus_PartiallyAssigned -> "PartiallyAssigned"
        | FIX_CollStatus_Assigned -> "Assigned"
        | FIX_CollStatus_Challenged -> "Challenged"
        | FIX_CollStatus_Unassigned -> "Unassigned"
    )
;;

let commtype_to_string (d)  =
    (match d with
        | FIX_CommType_PercentageWaivedEnhancedUnits -> "PercentageWaivedEnhancedUnits"
        | FIX_CommType_PointsPerBondOrContract -> "PointsPerBondOrContract"
        | FIX_CommType_Percent -> "Percent"
        | FIX_CommType_PerUnit -> "PerUnit"
        | FIX_CommType_Absolute -> "Absolute"
        | FIX_CommType_PercentageWaivedCashDiscount -> "PercentageWaivedCashDiscount"
    )
;;

let confirmrejreason_to_string (d)  =
    (match d with
        | FIX_ConfirmRejReason_MissingSettlementInstructions -> "MissingSettlementInstructions"
        | FIX_ConfirmRejReason_Other -> "Other"
        | FIX_ConfirmRejReason_MismatchedAccount -> "MismatchedAccount"
    )
;;

let confirmstatus_to_string (d)  =
    (match d with
        | FIX_ConfirmStatus_MissingSettlementInstructions -> "MissingSettlementInstructions"
        | FIX_ConfirmStatus_RequestRejected -> "RequestRejected"
        | FIX_ConfirmStatus_Received -> "Received"
        | FIX_ConfirmStatus_MismatchedAccount -> "MismatchedAccount"
        | FIX_ConfirmStatus_Confirmed -> "Confirmed"
    )
;;

let confirmtranstype_to_string (d)  =
    (match d with
        | FIX_ConfirmTransType_Replace -> "Replace"
        | FIX_ConfirmTransType_Cancel -> "Cancel"
        | FIX_ConfirmTransType_New -> "New"
    )
;;

let confirmtype_to_string (d)  =
    (match d with
        | FIX_ConfirmType_ConfirmationRequestRejected -> "ConfirmationRequestRejected"
        | FIX_ConfirmType_Status -> "Status"
        | FIX_ConfirmType_Confirmation -> "Confirmation"
    )
;;

let contamttype_to_string (d)  =
    (match d with
        | FIX_ContAmtType_CommissionAmount -> "CommissionAmount"
        | FIX_ContAmtType_FundBasedRenewalCommissionOnOrder -> "FundBasedRenewalCommissionOnOrder"
        | FIX_ContAmtType_FundBasedRenewalCommissionOnFund -> "FundBasedRenewalCommissionOnFund"
        | FIX_ContAmtType_InitialChargePercent -> "InitialChargePercent"
        | FIX_ContAmtType_ExitChargeAmount -> "ExitChargeAmount"
        | FIX_ContAmtType_DilutionLevyPercent -> "DilutionLevyPercent"
        | FIX_ContAmtType_ExitChargePercent -> "ExitChargePercent"
        | FIX_ContAmtType_DiscountAmount -> "DiscountAmount"
        | FIX_ContAmtType_NetSettlementAmount -> "NetSettlementAmount"
        | FIX_ContAmtType_InitialChargeAmount -> "InitialChargeAmount"
        | FIX_ContAmtType_ProjectedFundValue -> "ProjectedFundValue"
        | FIX_ContAmtType_DiscountPercent -> "DiscountPercent"
        | FIX_ContAmtType_DilutionLevyAmount -> "DilutionLevyAmount"
        | FIX_ContAmtType_CommissionPercent -> "CommissionPercent"
        | FIX_ContAmtType_FundBasedRenewalCommissionPercent -> "FundBasedRenewalCommissionPercent"
    )
;;

let corporateaction_to_string (d)  =
    (match d with
        | FIX_CorporateAction_ExDistribution -> "ExDistribution"
        | FIX_CorporateAction_ExDividend -> "ExDividend"
        | FIX_CorporateAction_ExInterest -> "ExInterest"
        | FIX_CorporateAction_ExRights -> "ExRights"
        | FIX_CorporateAction_New -> "New"
    )
;;

let coveredoruncovered_to_string (d)  =
    (match d with
        | FIX_CoveredOrUncovered_Uncovered -> "Uncovered"
        | FIX_CoveredOrUncovered_Covered -> "Covered"
    )
;;

let crossprioritization_to_string (d)  =
    (match d with
        | FIX_CrossPrioritization_BuySideIsPrioritized -> "BuySideIsPrioritized"
        | FIX_CrossPrioritization_SellSideIsPrioritized -> "SellSideIsPrioritized"
        | FIX_CrossPrioritization_FIXNone -> "FIXNone"
    )
;;

let crosstype_to_string (d)  =
    (match d with
        | FIX_CrossType_CrossIOC -> "CrossIOC"
        | FIX_CrossType_CrossOneSide -> "CrossOneSide"
        | FIX_CrossType_CrossSamePrice -> "CrossSamePrice"
        | FIX_CrossType_CrossAON -> "CrossAON"
    )
;;

let custordercapacity_to_string (d)  =
    (match d with
        | FIX_CustOrderCapacity_MemberTradingForTheirOwnAccount -> "MemberTradingForTheirOwnAccount"
        | FIX_CustOrderCapacity_AllOther -> "AllOther"
        | FIX_CustOrderCapacity_ClearingFirmTradingForItsProprietaryAccount -> "ClearingFirmTradingForItsProprietaryAccount"
        | FIX_CustOrderCapacity_MemberTradingForAnotherMember -> "MemberTradingForAnotherMember"
    )
;;

let cxlrejreason_to_string (d)  =
    (match d with
        | FIX_CxlRejReason_Other -> "Other"
        | FIX_CxlRejReason_OrderAlreadyInPendingStatus -> "OrderAlreadyInPendingStatus"
        | FIX_CxlRejReason_TooLateToCancel -> "TooLateToCancel"
        | FIX_CxlRejReason_UnknownOrder -> "UnknownOrder"
        | FIX_CxlRejReason_UnableToProcessOrderMassCancelRequest -> "UnableToProcessOrderMassCancelRequest"
        | FIX_CxlRejReason_OrigOrdModTime -> "OrigOrdModTime"
        | FIX_CxlRejReason_DuplicateClOrdID -> "DuplicateClOrdID"
        | FIX_CxlRejReason_BrokerCredit -> "BrokerCredit"
    )
;;

let cxlrejresponseto_to_string (d)  =
    (match d with
        | FIX_CxlRejResponseTo_OrderCancelRequest -> "OrderCancelRequest"
        | FIX_CxlRejResponseTo_OrderCancel -> "OrderCancel"
    )
;;

let dkreason_to_string (d)  =
    (match d with
        | FIX_DKReason_WrongSide -> "WrongSide"
        | FIX_DKReason_QuantityExceedsOrder -> "QuantityExceedsOrder"
        | FIX_DKReason_Other -> "Other"
        | FIX_DKReason_CalculationDifference -> "CalculationDifference"
        | FIX_DKReason_NoMatchingOrder -> "NoMatchingOrder"
        | FIX_DKReason_PriceExceedsLimit -> "PriceExceedsLimit"
        | FIX_DKReason_UnknownSymbol -> "UnknownSymbol"
    )
;;

let daybookinginst_to_string (d)  =
    (match d with
        | FIX_DayBookingInst_Auto -> "Auto"
        | FIX_DayBookingInst_SpeakWithOrderInitiatorBeforeBooking -> "SpeakWithOrderInitiatorBeforeBooking"
        | FIX_DayBookingInst_Accumulate -> "Accumulate"
    )
;;

let deletereason_to_string (d)  =
    (match d with
        | FIX_DeleteReason_Error -> "Error"
        | FIX_DeleteReason_Cancellation -> "Cancellation"
    )
;;

let deliveryform_to_string (d)  =
    (match d with
        | FIX_DeliveryForm_BookEntry -> "BookEntry"
        | FIX_DeliveryForm_Bearer -> "Bearer"
    )
;;

let deliverytype_to_string (d)  =
    (match d with
        | FIX_DeliveryType_TriParty -> "TriParty"
        | FIX_DeliveryType_VersusPayment -> "VersusPayment"
        | FIX_DeliveryType_HoldInCustody -> "HoldInCustody"
        | FIX_DeliveryType_Free -> "Free"
    )
;;

let discretioninst_to_string (d)  =
    (match d with
        | FIX_DiscretionInst_RelatedToPrimaryPrice -> "RelatedToPrimaryPrice"
        | FIX_DiscretionInst_RelatedToMidpointPrice -> "RelatedToMidpointPrice"
        | FIX_DiscretionInst_RelatedToLastTradePrice -> "RelatedToLastTradePrice"
        | FIX_DiscretionInst_RelatedToDisplayedPrice -> "RelatedToDisplayedPrice"
        | FIX_DiscretionInst_RelatedToVWAP -> "RelatedToVWAP"
        | FIX_DiscretionInst_RelatedToMarketPrice -> "RelatedToMarketPrice"
        | FIX_DiscretionInst_RelatedToLocalPrimaryPrice -> "RelatedToLocalPrimaryPrice"
    )
;;

let discretionlimittype_to_string (d)  =
    (match d with
        | FIX_DiscretionLimitType_Strict -> "Strict"
        | FIX_DiscretionLimitType_OrBetter -> "OrBetter"
        | FIX_DiscretionLimitType_OrWorse -> "OrWorse"
    )
;;

let discretionmovetype_to_string (d)  =
    (match d with
        | FIX_DiscretionMoveType_Fixed -> "Fixed"
        | FIX_DiscretionMoveType_Floating -> "Floating"
    )
;;

let discretionoffsettype_to_string (d)  =
    (match d with
        | FIX_DiscretionOffsetType_BasisPoints -> "BasisPoints"
        | FIX_DiscretionOffsetType_Price -> "Price"
        | FIX_DiscretionOffsetType_Ticks -> "Ticks"
        | FIX_DiscretionOffsetType_PriceTier -> "PriceTier"
    )
;;

let discretionrounddirection_to_string (d)  =
    (match d with
        | FIX_DiscretionRoundDirection_MoreAggressive -> "MoreAggressive"
        | FIX_DiscretionRoundDirection_MorePassive -> "MorePassive"
    )
;;

let discretionscope_to_string (d)  =
    (match d with
        | FIX_DiscretionScope_National -> "National"
        | FIX_DiscretionScope_Local -> "Local"
        | FIX_DiscretionScope_NationalExcludingLocal -> "NationalExcludingLocal"
        | FIX_DiscretionScope_Global -> "Global"
    )
;;

let distribpaymentmethod_to_string (d)  =
    (match d with
        | FIX_DistribPaymentMethod_CREST -> "CREST"
        | FIX_DistribPaymentMethod_NSCC -> "NSCC"
        | FIX_DistribPaymentMethod_HighValueClearingSystemHVACS -> "HighValueClearingSystemHVACS"
        | FIX_DistribPaymentMethod_DirectCredit -> "DirectCredit"
        | FIX_DistribPaymentMethod_ReinvestInFund -> "ReinvestInFund"
        | FIX_DistribPaymentMethod_ACHCredit -> "ACHCredit"
        | FIX_DistribPaymentMethod_Clearstream -> "Clearstream"
        | FIX_DistribPaymentMethod_BPAY -> "BPAY"
        | FIX_DistribPaymentMethod_Cheque -> "Cheque"
        | FIX_DistribPaymentMethod_Euroclear -> "Euroclear"
        | FIX_DistribPaymentMethod_FedWire -> "FedWire"
        | FIX_DistribPaymentMethod_TelegraphicTransfer -> "TelegraphicTransfer"
    )
;;

let dlvyinsttype_to_string (d)  =
    (match d with
        | FIX_DlvyInstType_Cash -> "Cash"
        | FIX_DlvyInstType_Securities -> "Securities"
    )
;;

let duetorelated_to_string (d)  =
    (match d with
        | FIX_DueToRelated_RelatedToSecurityHalt -> "RelatedToSecurityHalt"
        | FIX_DueToRelated_NotRelatedToSecurityHalt -> "NotRelatedToSecurityHalt"
    )
;;

let emailtype_to_string (d)  =
    (match d with
        | FIX_EmailType_Reply -> "Reply"
        | FIX_EmailType_AdminReply -> "AdminReply"
        | FIX_EmailType_New -> "New"
    )
;;

let eventtype_to_string (d)  =
    (match d with
        | FIX_EventType_Other -> "Other"
        | FIX_EventType_Call -> "Call"
        | FIX_EventType_Tender -> "Tender"
        | FIX_EventType_Put -> "Put"
        | FIX_EventType_SinkingFundCall -> "SinkingFundCall"
    )
;;

let exchangeforphysical_to_string (d)  =
    (match d with
        | FIX_ExchangeForPhysical_True -> "True"
        | FIX_ExchangeForPhysical_False -> "False"
    )
;;

let execinst_to_string (d)  =
    (match d with
        | FIX_ExecInst_ParticipateDoNotInitiate -> "ParticipateDoNotInitiate"
        | FIX_ExecInst_AllOrNone -> "AllOrNone"
        | FIX_ExecInst_CallFirst -> "CallFirst"
        | FIX_ExecInst_PercentOfVolume -> "PercentOfVolume"
        | FIX_ExecInst_InstitutionsOnly -> "InstitutionsOnly"
        | FIX_ExecInst_NoCross -> "NoCross"
        | FIX_ExecInst_OverTheDay -> "OverTheDay"
        | FIX_ExecInst_DoNotIncrease -> "DoNotIncrease"
        | FIX_ExecInst_OpeningPeg -> "OpeningPeg"
        | FIX_ExecInst_TryToStop -> "TryToStop"
        | FIX_ExecInst_Netting -> "Netting"
        | FIX_ExecInst_StayOnBidSide -> "StayOnBidSide"
        | FIX_ExecInst_Held -> "Held"
        | FIX_ExecInst_OKToCross -> "OKToCross"
        | FIX_ExecInst_CustomerDisplayInstruction -> "CustomerDisplayInstruction"
        | FIX_ExecInst_GoAlong -> "GoAlong"
        | FIX_ExecInst_DoNotReduce -> "DoNotReduce"
        | FIX_ExecInst_StayOnOfferSide -> "StayOnOfferSide"
        | FIX_ExecInst_PegToLimitPrice -> "PegToLimitPrice"
        | FIX_ExecInst_TryToScale -> "TryToScale"
        | FIX_ExecInst_ReinstateOnSystemFailure -> "ReinstateOnSystemFailure"
        | FIX_ExecInst_CancelIfNotBest -> "CancelIfNotBest"
        | FIX_ExecInst_MidPricePeg -> "MidPricePeg"
        | FIX_ExecInst_WorkToTargetStrategy -> "WorkToTargetStrategy"
        | FIX_ExecInst_PegToVWAP -> "PegToVWAP"
        | FIX_ExecInst_TradeAlong -> "TradeAlong"
        | FIX_ExecInst_StrictLimit -> "StrictLimit"
        | FIX_ExecInst_Suspend -> "Suspend"
        | FIX_ExecInst_LastPeg -> "LastPeg"
        | FIX_ExecInst_NonNegotiable -> "NonNegotiable"
        | FIX_ExecInst_NotHeld -> "NotHeld"
        | FIX_ExecInst_CancelOnTradingHalt -> "CancelOnTradingHalt"
        | FIX_ExecInst_CancelOnSystemFailure -> "CancelOnSystemFailure"
        | FIX_ExecInst_IgnorePriceValidityChecks -> "IgnorePriceValidityChecks"
        | FIX_ExecInst_Work -> "Work"
        | FIX_ExecInst_ReinstateOnTradingHalt -> "ReinstateOnTradingHalt"
        | FIX_ExecInst_PrimaryPeg -> "PrimaryPeg"
        | FIX_ExecInst_TrailingStopPeg -> "TrailingStopPeg"
        | FIX_ExecInst_MarketPeg -> "MarketPeg"
        | FIX_ExecInst_StrictScale -> "StrictScale"
    )
;;

let execpricetype_to_string (d)  =
    (match d with
        | FIX_ExecPriceType_CreationPricePlusAdjustmentAmount -> "CreationPricePlusAdjustmentAmount"
        | FIX_ExecPriceType_OfferPriceMinusAdjustmentPercent -> "OfferPriceMinusAdjustmentPercent"
        | FIX_ExecPriceType_BidPrice -> "BidPrice"
        | FIX_ExecPriceType_OfferPrice -> "OfferPrice"
        | FIX_ExecPriceType_OfferPriceMinusAdjustmentAmount -> "OfferPriceMinusAdjustmentAmount"
        | FIX_ExecPriceType_SinglePrice -> "SinglePrice"
        | FIX_ExecPriceType_CreationPrice -> "CreationPrice"
        | FIX_ExecPriceType_CreationPricePlusAdjustmentPercent -> "CreationPricePlusAdjustmentPercent"
    )
;;

let execrestatementreason_to_string (d)  =
    (match d with
        | FIX_ExecRestatementReason_Other -> "Other"
        | FIX_ExecRestatementReason_RepricingOfOrder -> "RepricingOfOrder"
        | FIX_ExecRestatementReason_GTCorporateAction -> "GTCorporateAction"
        | FIX_ExecRestatementReason_VerbalChange -> "VerbalChange"
        | FIX_ExecRestatementReason_WarehouseRecap -> "WarehouseRecap"
        | FIX_ExecRestatementReason_CancelOnTradingHalt -> "CancelOnTradingHalt"
        | FIX_ExecRestatementReason_CancelOnSystemFailure -> "CancelOnSystemFailure"
        | FIX_ExecRestatementReason_GTRenewal -> "GTRenewal"
        | FIX_ExecRestatementReason_Market -> "Market"
        | FIX_ExecRestatementReason_Canceled -> "Canceled"
        | FIX_ExecRestatementReason_BrokerOption -> "BrokerOption"
        | FIX_ExecRestatementReason_PartialDeclineOfOrderQty -> "PartialDeclineOfOrderQty"
    )
;;

let exectype_to_string (d)  =
    (match d with
        | FIX_ExecType_PendingCancel -> "PendingCancel"
        | FIX_ExecType_Stopped -> "Stopped"
        | FIX_ExecType_PendingNew -> "PendingNew"
        | FIX_ExecType_Restated -> "Restated"
        | FIX_ExecType_Rejected -> "Rejected"
        | FIX_ExecType_Calculated -> "Calculated"
        | FIX_ExecType_TradeCorrect -> "TradeCorrect"
        | FIX_ExecType_TradeCancel -> "TradeCancel"
        | FIX_ExecType_Expired -> "Expired"
        | FIX_ExecType_OrderStatus -> "OrderStatus"
        | FIX_ExecType_Trade -> "Trade"
        | FIX_ExecType_Canceled -> "Canceled"
        | FIX_ExecType_Replaced -> "Replaced"
        | FIX_ExecType_PendingReplace -> "PendingReplace"
        | FIX_ExecType_DoneForDay -> "DoneForDay"
        | FIX_ExecType_Suspended -> "Suspended"
        | FIX_ExecType_New -> "New"
    )
;;

let exercisemethod_to_string (d)  =
    (match d with
        | FIX_ExerciseMethod_Manual -> "Manual"
        | FIX_ExerciseMethod_Automatic -> "Automatic"
    )
;;

let expirationcycle_to_string (d)  =
    (match d with
        | FIX_ExpirationCycle_ExpireOnTradingSessionClose -> "ExpireOnTradingSessionClose"
        | FIX_ExpirationCycle_ExpireOnTradingSessionOpen -> "ExpireOnTradingSessionOpen"
    )
;;

let financialstatus_to_string (d)  =
    (match d with
        | FIX_FinancialStatus_PendingDelisting -> "PendingDelisting"
        | FIX_FinancialStatus_Bankrupt -> "Bankrupt"
    )
;;

let forexreq_to_string (d)  =
    (match d with
        | FIX_ForexReq_DoNotExecuteForexAfterSecurityTrade -> "DoNotExecuteForexAfterSecurityTrade"
        | FIX_ForexReq_ExecuteForexAfterSecurityTrade -> "ExecuteForexAfterSecurityTrade"
    )
;;

let fundrenewwaiv_to_string (d)  =
    (match d with
        | FIX_FundRenewWaiv_No -> "No"
        | FIX_FundRenewWaiv_Yes -> "Yes"
    )
;;

let gtbookinginst_to_string (d)  =
    (match d with
        | FIX_GTBookingInst_AccumulateUntilVerballyNotifiedOtherwise -> "AccumulateUntilVerballyNotifiedOtherwise"
        | FIX_GTBookingInst_AccumulateUntilFilledOrExpired -> "AccumulateUntilFilledOrExpired"
        | FIX_GTBookingInst_BookOutAllTradesOnDayOfExecution -> "BookOutAllTradesOnDayOfExecution"
    )
;;

let haltreason_to_string (d)  =
    (match d with
        | FIX_HaltReason_OrderImbalance -> "OrderImbalance"
        | FIX_HaltReason_AdditionalInformation -> "AdditionalInformation"
        | FIX_HaltReason_NewsPending -> "NewsPending"
        | FIX_HaltReason_OrderInflux -> "OrderInflux"
        | FIX_HaltReason_EquipmentChangeover -> "EquipmentChangeover"
        | FIX_HaltReason_NewsDissemination -> "NewsDissemination"
    )
;;

let handlinst_to_string (d)  =
    (match d with
        | FIX_HandlInst_ManualOrder -> "ManualOrder"
        | FIX_HandlInst_AutomatedExecutionInterventionOK -> "AutomatedExecutionInterventionOK"
        | FIX_HandlInst_AutomatedExecutionNoIntervention -> "AutomatedExecutionNoIntervention"
    )
;;

let ioinaturalflag_to_string (d)  =
    (match d with
        | FIX_IOINaturalFlag_Natural -> "Natural"
        | FIX_IOINaturalFlag_NotNatural -> "NotNatural"
    )
;;

let ioiqltyind_to_string (d)  =
    (match d with
        | FIX_IOIQltyInd_Low -> "Low"
        | FIX_IOIQltyInd_High -> "High"
        | FIX_IOIQltyInd_Medium -> "Medium"
    )
;;

let ioiqty_to_string (d)  =
    (match d with
        | FIX_IOIQty_Small -> "Small"
        | FIX_IOIQty_Large -> "Large"
        | FIX_IOIQty_Medium -> "Medium"
    )
;;

let ioiqualifier_to_string (d)  =
    (match d with
        | FIX_IOIQualifier_AllOrNone -> "AllOrNone"
        | FIX_IOIQualifier_TakingAPosition -> "TakingAPosition"
        | FIX_IOIQualifier_Indication -> "Indication"
        | FIX_IOIQualifier_PreOpen -> "PreOpen"
        | FIX_IOIQualifier_VWAP -> "VWAP"
        | FIX_IOIQualifier_AtTheOpen -> "AtTheOpen"
        | FIX_IOIQualifier_Versus -> "Versus"
        | FIX_IOIQualifier_AtTheMidpoint -> "AtTheMidpoint"
        | FIX_IOIQualifier_ReadyToTrade -> "ReadyToTrade"
        | FIX_IOIQualifier_PortfolioShown -> "PortfolioShown"
        | FIX_IOIQualifier_ThroughTheDay -> "ThroughTheDay"
        | FIX_IOIQualifier_MoreBehind -> "MoreBehind"
        | FIX_IOIQualifier_MarketOnClose -> "MarketOnClose"
        | FIX_IOIQualifier_AtTheClose -> "AtTheClose"
        | FIX_IOIQualifier_InTouchWith -> "InTouchWith"
        | FIX_IOIQualifier_AtTheMarket -> "AtTheMarket"
        | FIX_IOIQualifier_Limit -> "Limit"
        | FIX_IOIQualifier_CrossingOpportunity -> "CrossingOpportunity"
    )
;;

let ioitranstype_to_string (d)  =
    (match d with
        | FIX_IOITransType_Cancel -> "Cancel"
        | FIX_IOITransType_Replace -> "Replace"
        | FIX_IOITransType_New -> "New"
    )
;;

let inviewofcommon_to_string (d)  =
    (match d with
        | FIX_InViewOfCommon_HaltWasDueToCommonStockBeingHalted -> "HaltWasDueToCommonStockBeingHalted"
        | FIX_InViewOfCommon_HaltWasNotRelatedToAHaltOfTheCommonStock -> "HaltWasNotRelatedToAHaltOfTheCommonStock"
    )
;;

let inctaxind_to_string (d)  =
    (match d with
        | FIX_IncTaxInd_Net -> "Net"
        | FIX_IncTaxInd_Gross -> "Gross"
    )
;;

let instrattribtype_to_string (d)  =
    (match d with
        | FIX_InstrAttribType_Callable -> "Callable"
        | FIX_InstrAttribType_SubjectToAlternativeMinimumTax -> "SubjectToAlternativeMinimumTax"
        | FIX_InstrAttribType_CouponPeriod -> "CouponPeriod"
        | FIX_InstrAttribType_EscrowedToRedemptionDate -> "EscrowedToRedemptionDate"
        | FIX_InstrAttribType_InterestBearing -> "InterestBearing"
        | FIX_InstrAttribType_OriginalIssueDiscount -> "OriginalIssueDiscount"
        | FIX_InstrAttribType_VariableRate -> "VariableRate"
        | FIX_InstrAttribType_InDefault -> "InDefault"
        | FIX_InstrAttribType_Text -> "Text"
        | FIX_InstrAttribType_PreRefunded -> "PreRefunded"
        | FIX_InstrAttribType_LessFeeForPut -> "LessFeeForPut"
        | FIX_InstrAttribType_When -> "When"
        | FIX_InstrAttribType_NoPeriodicPayments -> "NoPeriodicPayments"
        | FIX_InstrAttribType_Unrated -> "Unrated"
        | FIX_InstrAttribType_CallableBelowMaturityValue -> "CallableBelowMaturityValue"
        | FIX_InstrAttribType_OriginalIssueDiscountPrice -> "OriginalIssueDiscountPrice"
        | FIX_InstrAttribType_Flat -> "Flat"
        | FIX_InstrAttribType_CallableWithoutNotice -> "CallableWithoutNotice"
        | FIX_InstrAttribType_SteppedCoupon -> "SteppedCoupon"
        | FIX_InstrAttribType_Indexed -> "Indexed"
        | FIX_InstrAttribType_ZeroCoupon -> "ZeroCoupon"
        | FIX_InstrAttribType_EscrowedToMaturity -> "EscrowedToMaturity"
        | FIX_InstrAttribType_Taxable -> "Taxable"
    )
;;

let lastcapacity_to_string (d)  =
    (match d with
        | FIX_LastCapacity_Agent -> "Agent"
        | FIX_LastCapacity_CrossAsAgent -> "CrossAsAgent"
        | FIX_LastCapacity_Principal -> "Principal"
        | FIX_LastCapacity_CrossAsPrincipal -> "CrossAsPrincipal"
    )
;;

let lastfragment_to_string (d)  =
    (match d with
        | FIX_LastFragment_LastMessage -> "LastMessage"
        | FIX_LastFragment_NotLastMessage -> "NotLastMessage"
    )
;;

let lastliquidityind_to_string (d)  =
    (match d with
        | FIX_LastLiquidityInd_LiquidityRoutedOut -> "LiquidityRoutedOut"
        | FIX_LastLiquidityInd_AddedLiquidity -> "AddedLiquidity"
        | FIX_LastLiquidityInd_RemovedLiquidity -> "RemovedLiquidity"
    )
;;

let legswaptype_to_string (d)  =
    (match d with
        | FIX_LegSwapType_ModifiedDuration -> "ModifiedDuration"
        | FIX_LegSwapType_Proceeds -> "Proceeds"
        | FIX_LegSwapType_ParForPar -> "ParForPar"
        | FIX_LegSwapType_Risk -> "Risk"
    )
;;

let legalconfirm_to_string (d)  =
    (match d with
        | FIX_LegalConfirm_DoesNotConsituteALegalConfirm -> "DoesNotConsituteALegalConfirm"
        | FIX_LegalConfirm_LegalConfirm -> "LegalConfirm"
    )
;;

let liquidityindtype_to_string (d)  =
    (match d with
        | FIX_LiquidityIndType_Other -> "Other"
        | FIX_LiquidityIndType_NormalMarketSize -> "NormalMarketSize"
        | FIX_LiquidityIndType_TwentyDayMovingAverage -> "TwentyDayMovingAverage"
        | FIX_LiquidityIndType_FiveDayMovingAverage -> "FiveDayMovingAverage"
    )
;;

let listexecinsttype_to_string (d)  =
    (match d with
        | FIX_ListExecInstType_SellDriven -> "SellDriven"
        | FIX_ListExecInstType_Immediate -> "Immediate"
        | FIX_ListExecInstType_BuyDrivenCashTopUp -> "BuyDrivenCashTopUp"
        | FIX_ListExecInstType_WaitForInstruction -> "WaitForInstruction"
        | FIX_ListExecInstType_BuyDrivenCashWithdraw -> "BuyDrivenCashWithdraw"
    )
;;

let listorderstatus_to_string (d)  =
    (match d with
        | FIX_ListOrderStatus_AllDone -> "AllDone"
        | FIX_ListOrderStatus_Reject -> "Reject"
        | FIX_ListOrderStatus_Cancelling -> "Cancelling"
        | FIX_ListOrderStatus_InBiddingProcess -> "InBiddingProcess"
        | FIX_ListOrderStatus_Executing -> "Executing"
        | FIX_ListOrderStatus_Alert -> "Alert"
        | FIX_ListOrderStatus_ReceivedForExecution -> "ReceivedForExecution"
    )
;;

let liststatustype_to_string (d)  =
    (match d with
        | FIX_ListStatusType_AllDone -> "AllDone"
        | FIX_ListStatusType_Response -> "Response"
        | FIX_ListStatusType_ExecStarted -> "ExecStarted"
        | FIX_ListStatusType_Timed -> "Timed"
        | FIX_ListStatusType_Ack -> "Ack"
        | FIX_ListStatusType_Alert -> "Alert"
    )
;;

let locatereqd_to_string (d)  =
    (match d with
        | FIX_LocateReqd_No -> "No"
        | FIX_LocateReqd_Yes -> "Yes"
    )
;;

let mdentrytype_to_string (d)  =
    (match d with
        | FIX_MDEntryType_OpenInterest -> "OpenInterest"
        | FIX_MDEntryType_ClosingPrice -> "ClosingPrice"
        | FIX_MDEntryType_IndexValue -> "IndexValue"
        | FIX_MDEntryType_Offer -> "Offer"
        | FIX_MDEntryType_SettlementPrice -> "SettlementPrice"
        | FIX_MDEntryType_TradingSessionVWAPPrice -> "TradingSessionVWAPPrice"
        | FIX_MDEntryType_Trade -> "Trade"
        | FIX_MDEntryType_TradingSessionHighPrice -> "TradingSessionHighPrice"
        | FIX_MDEntryType_OpeningPrice -> "OpeningPrice"
        | FIX_MDEntryType_TradeVolume -> "TradeVolume"
        | FIX_MDEntryType_Imbalance -> "Imbalance"
        | FIX_MDEntryType_Bid -> "Bid"
        | FIX_MDEntryType_TradingSessionLowPrice -> "TradingSessionLowPrice"
    )
;;

let mdimplicitdelete_to_string (d)  =
    (match d with
        | FIX_MDImplicitDelete_No -> "No"
        | FIX_MDImplicitDelete_Yes -> "Yes"
    )
;;

let mdreqrejreason_to_string (d)  =
    (match d with
        | FIX_MDReqRejReason_UnsupportedAggregatedBook -> "UnsupportedAggregatedBook"
        | FIX_MDReqRejReason_UnsupportedMDUpdateType -> "UnsupportedMDUpdateType"
        | FIX_MDReqRejReason_UnsupportedMDImplicitDelete -> "UnsupportedMDImplicitDelete"
        | FIX_MDReqRejReason_InsufficientPermissions -> "InsufficientPermissions"
        | FIX_MDReqRejReason_UnsupportedScope -> "UnsupportedScope"
        | FIX_MDReqRejReason_UnsupportedTradingSessionID -> "UnsupportedTradingSessionID"
        | FIX_MDReqRejReason_UnsupportedSubscriptionRequestType -> "UnsupportedSubscriptionRequestType"
        | FIX_MDReqRejReason_UnsupportedMDEntryType -> "UnsupportedMDEntryType"
        | FIX_MDReqRejReason_InsufficientBandwidth -> "InsufficientBandwidth"
        | FIX_MDReqRejReason_DuplicateMDReqID -> "DuplicateMDReqID"
        | FIX_MDReqRejReason_UnsupportedMarketDepth -> "UnsupportedMarketDepth"
        | FIX_MDReqRejReason_UnsupportedOpenCloseSettleFlag -> "UnsupportedOpenCloseSettleFlag"
        | FIX_MDReqRejReason_UnknownSymbol -> "UnknownSymbol"
    )
;;

let mdupdateaction_to_string (d)  =
    (match d with
        | FIX_MDUpdateAction_Delete -> "Delete"
        | FIX_MDUpdateAction_Change -> "Change"
        | FIX_MDUpdateAction_New -> "New"
    )
;;

let mdupdatetype_to_string (d)  =
    (match d with
        | FIX_MDUpdateType_FullRefresh -> "FullRefresh"
        | FIX_MDUpdateType_IncrementalRefresh -> "IncrementalRefresh"
    )
;;

let masscancelrejectreason_to_string (d)  =
    (match d with
        | FIX_MassCancelRejectReason_Other -> "Other"
        | FIX_MassCancelRejectReason_MassCancelNotSupported -> "MassCancelNotSupported"
        | FIX_MassCancelRejectReason_InvalidOrUnknownCFICode -> "InvalidOrUnknownCFICode"
        | FIX_MassCancelRejectReason_InvalidOrUnknownSecurityType -> "InvalidOrUnknownSecurityType"
        | FIX_MassCancelRejectReason_InvalidOrUnknownProduct -> "InvalidOrUnknownProduct"
        | FIX_MassCancelRejectReason_InvalidOrUnkownUnderlyingSecurity -> "InvalidOrUnkownUnderlyingSecurity"
        | FIX_MassCancelRejectReason_InvalidOrUnknownTradingSession -> "InvalidOrUnknownTradingSession"
        | FIX_MassCancelRejectReason_InvalidOrUnknownSecurity -> "InvalidOrUnknownSecurity"
    )
;;

let masscancelrequesttype_to_string (d)  =
    (match d with
        | FIX_MassCancelRequestType_CancelOrdersForASecurityType -> "CancelOrdersForASecurityType"
        | FIX_MassCancelRequestType_CancelOrdersForAProduct -> "CancelOrdersForAProduct"
        | FIX_MassCancelRequestType_CancelOrdersForASecurity -> "CancelOrdersForASecurity"
        | FIX_MassCancelRequestType_CancelOrdersForAnUnderlyingSecurity -> "CancelOrdersForAnUnderlyingSecurity"
        | FIX_MassCancelRequestType_CancelAllOrders -> "CancelAllOrders"
        | FIX_MassCancelRequestType_CancelOrdersForACFICode -> "CancelOrdersForACFICode"
        | FIX_MassCancelRequestType_CancelOrdersForATradingSession -> "CancelOrdersForATradingSession"
    )
;;

let masscancelresponse_to_string (d)  =
    (match d with
        | FIX_MassCancelResponse_CancelOrdersForASecurityType -> "CancelOrdersForASecurityType"
        | FIX_MassCancelResponse_CancelOrdersForAProduct -> "CancelOrdersForAProduct"
        | FIX_MassCancelResponse_CancelOrdersForASecurity -> "CancelOrdersForASecurity"
        | FIX_MassCancelResponse_CancelOrdersForAnUnderlyingSecurity -> "CancelOrdersForAnUnderlyingSecurity"
        | FIX_MassCancelResponse_CancelRequestRejected -> "CancelRequestRejected"
        | FIX_MassCancelResponse_CancelAllOrders -> "CancelAllOrders"
        | FIX_MassCancelResponse_CancelOrdersForACFICode -> "CancelOrdersForACFICode"
        | FIX_MassCancelResponse_CancelOrdersForATradingSession -> "CancelOrdersForATradingSession"
    )
;;

let massstatusreqtype_to_string (d)  =
    (match d with
        | FIX_MassStatusReqType_StatusForOrdersForASecurity -> "StatusForOrdersForASecurity"
        | FIX_MassStatusReqType_StatusForOrdersForATradingSession -> "StatusForOrdersForATradingSession"
        | FIX_MassStatusReqType_StatusForOrdersForAPartyID -> "StatusForOrdersForAPartyID"
        | FIX_MassStatusReqType_StatusForOrdersForAProduct -> "StatusForOrdersForAProduct"
        | FIX_MassStatusReqType_StatusForOrdersForAnUnderlyingSecurity -> "StatusForOrdersForAnUnderlyingSecurity"
        | FIX_MassStatusReqType_StatusForAllOrders -> "StatusForAllOrders"
        | FIX_MassStatusReqType_StatusForOrdersForASecurityType -> "StatusForOrdersForASecurityType"
        | FIX_MassStatusReqType_StatusForOrdersForACFICode -> "StatusForOrdersForACFICode"
    )
;;

let matchstatus_to_string (d)  =
    (match d with
        | FIX_MatchStatus_Compared -> "Compared"
        | FIX_MatchStatus_Uncompared -> "Uncompared"
        | FIX_MatchStatus_AdvisoryOrAlert -> "AdvisoryOrAlert"
    )
;;

let matchtype_to_string (d)  =
    (match d with
        | FIX_MatchType_ExactMatchPlus2Badges -> "ExactMatchPlus2Badges"
        | FIX_MatchType_ExactMatchPlus2BadgesExecTime -> "ExactMatchPlus2BadgesExecTime"
        | FIX_MatchType_A4ExactMatchSummarizedQuantity -> "A4ExactMatchSummarizedQuantity"
        | FIX_MatchType_A2ExactMatchSummarizedQuantity -> "A2ExactMatchSummarizedQuantity"
        | FIX_MatchType_OCSLockedIn -> "OCSLockedIn"
        | FIX_MatchType_ACTM6Match -> "ACTM6Match"
        | FIX_MatchType_ExactMatchPlusExecTime -> "ExactMatchPlusExecTime"
        | FIX_MatchType_ACTAcceptedTrade -> "ACTAcceptedTrade"
        | FIX_MatchType_ExactMatchMinusBadgesTimes -> "ExactMatchMinusBadgesTimes"
        | FIX_MatchType_ExactMatchPlus4Badges -> "ExactMatchPlus4Badges"
        | FIX_MatchType_A1ExactMatchSummarizedQuantity -> "A1ExactMatchSummarizedQuantity"
        | FIX_MatchType_SummarizedMatchMinusBadgesTimes -> "SummarizedMatchMinusBadgesTimes"
        | FIX_MatchType_ACTDefaultAfterM2 -> "ACTDefaultAfterM2"
        | FIX_MatchType_ExactMatchPlus4BadgesExecTime -> "ExactMatchPlus4BadgesExecTime"
        | FIX_MatchType_A5ExactMatchSummarizedQuantity -> "A5ExactMatchSummarizedQuantity"
        | FIX_MatchType_A3ExactMatchSummarizedQuantity -> "A3ExactMatchSummarizedQuantity"
        | FIX_MatchType_ACTDefaultTrade -> "ACTDefaultTrade"
        | FIX_MatchType_StampedAdvisoriesOrSpecialistAccepts -> "StampedAdvisoriesOrSpecialistAccepts"
    )
;;

let messageencoding_to_string (d)  =
    (match d with
        | FIX_MessageEncoding_ISO2022JP -> "ISO2022JP"
        | FIX_MessageEncoding_UTF8 -> "UTF8"
        | FIX_MessageEncoding_ShiftJIS -> "ShiftJIS"
        | FIX_MessageEncoding_EUCJP -> "EUCJP"
    )
;;

let miscfeebasis_to_string (d)  =
    (match d with
        | FIX_MiscFeeBasis_Percentage -> "Percentage"
        | FIX_MiscFeeBasis_PerUnit -> "PerUnit"
        | FIX_MiscFeeBasis_Absolute -> "Absolute"
    )
;;

let miscfeetype_to_string (d)  =
    (match d with
        | FIX_MiscFeeType_Other -> "Other"
        | FIX_MiscFeeType_Agent -> "Agent"
        | FIX_MiscFeeType_LocalCommission -> "LocalCommission"
        | FIX_MiscFeeType_ExchangeFees -> "ExchangeFees"
        | FIX_MiscFeeType_Stamp -> "Stamp"
        | FIX_MiscFeeType_Markup -> "Markup"
        | FIX_MiscFeeType_PerTransaction -> "PerTransaction"
        | FIX_MiscFeeType_Regulatory -> "Regulatory"
        | FIX_MiscFeeType_Tax -> "Tax"
        | FIX_MiscFeeType_ConsumptionTax -> "ConsumptionTax"
        | FIX_MiscFeeType_Conversion -> "Conversion"
        | FIX_MiscFeeType_Levy -> "Levy"
    )
;;

let moneylaunderingstatus_to_string (d)  =
    (match d with
        | FIX_MoneyLaunderingStatus_ExemptBelowLimit -> "ExemptBelowLimit"
        | FIX_MoneyLaunderingStatus_ExemptMoneyType -> "ExemptMoneyType"
        | FIX_MoneyLaunderingStatus_ExemptAuthorised -> "ExemptAuthorised"
        | FIX_MoneyLaunderingStatus_Passed -> "Passed"
        | FIX_MoneyLaunderingStatus_NotChecked -> "NotChecked"
    )
;;

let msgdirection_to_string (d)  =
    (match d with
        | FIX_MsgDirection_Send -> "Send"
        | FIX_MsgDirection_Receive -> "Receive"
    )
;;

let multilegreportingtype_to_string (d)  =
    (match d with
        | FIX_MultiLegReportingType_SingleSecurity -> "SingleSecurity"
        | FIX_MultiLegReportingType_IndividualLegOfAMultiLegSecurity -> "IndividualLegOfAMultiLegSecurity"
        | FIX_MultiLegReportingType_MultiLegSecurity -> "MultiLegSecurity"
    )
;;

let multilegrpttypereq_to_string (d)  =
    (match d with
        | FIX_MultiLegRptTypeReq_ReportByInstrumentLegsOnly -> "ReportByInstrumentLegsOnly"
        | FIX_MultiLegRptTypeReq_ReportByMulitlegSecurityOnly -> "ReportByMulitlegSecurityOnly"
        | FIX_MultiLegRptTypeReq_ReportByMultilegSecurityAndInstrumentLegs -> "ReportByMultilegSecurityAndInstrumentLegs"
    )
;;

let netgrossind_to_string (d)  =
    (match d with
        | FIX_NetGrossInd_Net -> "Net"
        | FIX_NetGrossInd_Gross -> "Gross"
    )
;;

let networkrequesttype_to_string (d)  =
    (match d with
        | FIX_NetworkRequestType_Snapshot -> "Snapshot"
        | FIX_NetworkRequestType_StopSubscribing -> "StopSubscribing"
        | FIX_NetworkRequestType_Subscribe -> "Subscribe"
        | FIX_NetworkRequestType_LevelOfDetail -> "LevelOfDetail"
    )
;;

let networkstatusresponsetype_to_string (d)  =
    (match d with
        | FIX_NetworkStatusResponseType_IncrementalUpdate -> "IncrementalUpdate"
        | FIX_NetworkStatusResponseType_Full -> "Full"
    )
;;

let nosides_to_string (d)  =
    (match d with
        | FIX_NoSides_OneSide -> "OneSide"
        | FIX_NoSides_BothSides -> "BothSides"
    )
;;

let notifybrokerofcredit_to_string (d)  =
    (match d with
        | FIX_NotifyBrokerOfCredit_DetailsShouldBeCommunicated -> "DetailsShouldBeCommunicated"
        | FIX_NotifyBrokerOfCredit_DetailsShouldNotBeCommunicated -> "DetailsShouldNotBeCommunicated"
    )
;;

let oddlot_to_string (d)  =
    (match d with
        | FIX_OddLot_TreatAsRoundLot -> "TreatAsRoundLot"
        | FIX_OddLot_TreatAsOddLot -> "TreatAsOddLot"
    )
;;

let openclosesettlflag_to_string (d)  =
    (match d with
        | FIX_OpenCloseSettlFlag_DeliverySettlementEntry -> "DeliverySettlementEntry"
        | FIX_OpenCloseSettlFlag_EntryFromPreviousBusinessDay -> "EntryFromPreviousBusinessDay"
        | FIX_OpenCloseSettlFlag_DailyOpen -> "DailyOpen"
        | FIX_OpenCloseSettlFlag_TheoreticalPriceValue -> "TheoreticalPriceValue"
        | FIX_OpenCloseSettlFlag_ExpectedEntry -> "ExpectedEntry"
        | FIX_OpenCloseSettlFlag_SessionOpen -> "SessionOpen"
    )
;;

let ordrejreason_to_string (d)  =
    (match d with
        | FIX_OrdRejReason_DuplicateOrder -> "DuplicateOrder"
        | FIX_OrdRejReason_Other -> "Other"
        | FIX_OrdRejReason_UnknownOrder -> "UnknownOrder"
        | FIX_OrdRejReason_TooLateToEnter -> "TooLateToEnter"
        | FIX_OrdRejReason_OrderExceedsLimit -> "OrderExceedsLimit"
        | FIX_OrdRejReason_UnknownAccount -> "UnknownAccount"
        | FIX_OrdRejReason_BrokerCredit -> "BrokerCredit"
        | FIX_OrdRejReason_UnsupportedOrderCharacteristic -> "UnsupportedOrderCharacteristic"
        | FIX_OrdRejReason_DuplicateOfAVerballyCommunicatedOrder -> "DuplicateOfAVerballyCommunicatedOrder"
        | FIX_OrdRejReason_IncorrectQuantity -> "IncorrectQuantity"
        | FIX_OrdRejReason_TradeAlongRequired -> "TradeAlongRequired"
        | FIX_OrdRejReason_StaleOrder -> "StaleOrder"
        | FIX_OrdRejReason_InvalidInvestorID -> "InvalidInvestorID"
        | FIX_OrdRejReason_ExchangeClosed -> "ExchangeClosed"
        | FIX_OrdRejReason_IncorrectAllocatedQuantity -> "IncorrectAllocatedQuantity"
        | FIX_OrdRejReason_UnknownSymbol -> "UnknownSymbol"
    )
;;

let ordstatus_to_string (d)  =
    (match d with
        | FIX_OrdStatus_PendingCancel -> "PendingCancel"
        | FIX_OrdStatus_Stopped -> "Stopped"
        | FIX_OrdStatus_PendingNew -> "PendingNew"
        | FIX_OrdStatus_Rejected -> "Rejected"
        | FIX_OrdStatus_Calculated -> "Calculated"
        | FIX_OrdStatus_Expired -> "Expired"
        | FIX_OrdStatus_Filled -> "Filled"
        | FIX_OrdStatus_Canceled -> "Canceled"
        | FIX_OrdStatus_Replaced -> "Replaced"
        | FIX_OrdStatus_PendingReplace -> "PendingReplace"
        | FIX_OrdStatus_DoneForDay -> "DoneForDay"
        | FIX_OrdStatus_Suspended -> "Suspended"
        | FIX_OrdStatus_New -> "New"
        | FIX_OrdStatus_PartiallyFilled -> "PartiallyFilled"
        | FIX_OrdStatus_AcceptedForBidding -> "AcceptedForBidding"
    )
;;

let ordtype_to_string (d)  =
    (match d with
        | FIX_OrdType_LimitOrBetter -> "LimitOrBetter"
        | FIX_OrdType_NextFundValuationPoint -> "NextFundValuationPoint"
        | FIX_OrdType_WithOrWithout -> "WithOrWithout"
        | FIX_OrdType_PreviouslyIndicated -> "PreviouslyIndicated"
        | FIX_OrdType_Stop -> "Stop"
        | FIX_OrdType_Market -> "Market"
        | FIX_OrdType_OnBasis -> "OnBasis"
        | FIX_OrdType_Funari -> "Funari"
        | FIX_OrdType_Pegged -> "Pegged"
        | FIX_OrdType_LimitWithOrWithout -> "LimitWithOrWithout"
        | FIX_OrdType_StopLimit -> "StopLimit"
        | FIX_OrdType_ForexSwap -> "ForexSwap"
        | FIX_OrdType_MarketIfTouched -> "MarketIfTouched"
        | FIX_OrdType_MarketWithLeftOverAsLimit -> "MarketWithLeftOverAsLimit"
        | FIX_OrdType_PreviouslyQuoted -> "PreviouslyQuoted"
        | FIX_OrdType_Limit -> "Limit"
        | FIX_OrdType_PreviousFundValuationPoint -> "PreviousFundValuationPoint"
    )
;;

let ordercapacity_to_string (d)  =
    (match d with
        | FIX_OrderCapacity_Agency -> "Agency"
        | FIX_OrderCapacity_Individual -> "Individual"
        | FIX_OrderCapacity_Proprietary -> "Proprietary"
        | FIX_OrderCapacity_AgentForOtherMember -> "AgentForOtherMember"
        | FIX_OrderCapacity_Principal -> "Principal"
        | FIX_OrderCapacity_RisklessPrincipal -> "RisklessPrincipal"
    )
;;

let orderrestrictions_to_string (d)  =
    (match d with
        | FIX_OrderRestrictions_ForeignEntity -> "ForeignEntity"
        | FIX_OrderRestrictions_ExternalMarketParticipant -> "ExternalMarketParticipant"
        | FIX_OrderRestrictions_IndexArbitrage -> "IndexArbitrage"
        | FIX_OrderRestrictions_CompetingMarketMaker -> "CompetingMarketMaker"
        | FIX_OrderRestrictions_RisklessArbitrage -> "RisklessArbitrage"
        | FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInSecurity -> "ActingAsMarketMakerOrSpecialistInSecurity"
        | FIX_OrderRestrictions_ProgramTrade -> "ProgramTrade"
        | FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInUnderlying -> "ActingAsMarketMakerOrSpecialistInUnderlying"
        | FIX_OrderRestrictions_NonIndexArbitrage -> "NonIndexArbitrage"
        | FIX_OrderRestrictions_ExternalInterConnectedMarketLinkage -> "ExternalInterConnectedMarketLinkage"
    )
;;

let ownertype_to_string (d)  =
    (match d with
        | FIX_OwnerType_PrivateCompany -> "PrivateCompany"
        | FIX_OwnerType_PublicCompany -> "PublicCompany"
        | FIX_OwnerType_IndividualTrustee -> "IndividualTrustee"
        | FIX_OwnerType_Fiduciaries -> "Fiduciaries"
        | FIX_OwnerType_NonProfitOrganization -> "NonProfitOrganization"
        | FIX_OwnerType_CompanyTrustee -> "CompanyTrustee"
        | FIX_OwnerType_NetworkingSubAccount -> "NetworkingSubAccount"
        | FIX_OwnerType_Trusts -> "Trusts"
        | FIX_OwnerType_Nominee -> "Nominee"
        | FIX_OwnerType_CustodianUnderGiftsToMinorsAct -> "CustodianUnderGiftsToMinorsAct"
        | FIX_OwnerType_IndividualInvestor -> "IndividualInvestor"
        | FIX_OwnerType_PensionPlan -> "PensionPlan"
        | FIX_OwnerType_CorporateBody -> "CorporateBody"
    )
;;

let ownershiptype_to_string (d)  =
    (match d with
        | FIX_OwnershipType_TenantsInCommon -> "TenantsInCommon"
        | FIX_OwnershipType_JointTrustees -> "JointTrustees"
        | FIX_OwnershipType_JointInvestors -> "JointInvestors"
    )
;;

let partyidsource_to_string (d)  =
    (match d with
        | FIX_PartyIDSource_CSDParticipant -> "CSDParticipant"
        | FIX_PartyIDSource_KoreanInvestorID -> "KoreanInvestorID"
        | FIX_PartyIDSource_USEmployerOrTaxIDNumber -> "USEmployerOrTaxIDNumber"
        | FIX_PartyIDSource_TaiwaneseForeignInvestorID -> "TaiwaneseForeignInvestorID"
        | FIX_PartyIDSource_TaiwaneseTradingAcct -> "TaiwaneseTradingAcct"
        | FIX_PartyIDSource_UKNationalInsuranceOrPensionNumber -> "UKNationalInsuranceOrPensionNumber"
        | FIX_PartyIDSource_MIC -> "MIC"
        | FIX_PartyIDSource_USSocialSecurityNumber -> "USSocialSecurityNumber"
        | FIX_PartyIDSource_Proprietary -> "Proprietary"
        | FIX_PartyIDSource_AustralianTaxFileNumber -> "AustralianTaxFileNumber"
        | FIX_PartyIDSource_MalaysianCentralDepository -> "MalaysianCentralDepository"
        | FIX_PartyIDSource_ISITCAcronym -> "ISITCAcronym"
        | FIX_PartyIDSource_ISOCountryCode -> "ISOCountryCode"
        | FIX_PartyIDSource_ChineseInvestorID -> "ChineseInvestorID"
        | FIX_PartyIDSource_AustralianBusinessNumber -> "AustralianBusinessNumber"
        | FIX_PartyIDSource_BIC -> "BIC"
        | FIX_PartyIDSource_GeneralIdentifier -> "GeneralIdentifier"
        | FIX_PartyIDSource_SettlementEntityLocation -> "SettlementEntityLocation"
    )
;;

let partyrole_to_string (d)  =
    (match d with
        | FIX_PartyRole_CorrespondantClearingFirm -> "CorrespondantClearingFirm"
        | FIX_PartyRole_Agent -> "Agent"
        | FIX_PartyRole_ExecutingSystem -> "ExecutingSystem"
        | FIX_PartyRole_SponsoringFirm -> "SponsoringFirm"
        | FIX_PartyRole_Intermediary -> "Intermediary"
        | FIX_PartyRole_IntroducingFirm -> "IntroducingFirm"
        | FIX_PartyRole_EnteringFirm -> "EnteringFirm"
        | FIX_PartyRole_LiquidityProvider -> "LiquidityProvider"
        | FIX_PartyRole_ClearingFirm -> "ClearingFirm"
        | FIX_PartyRole_ContraFirm -> "ContraFirm"
        | FIX_PartyRole_ContraTrader -> "ContraTrader"
        | FIX_PartyRole_CustomerAccount -> "CustomerAccount"
        | FIX_PartyRole_RegulatoryBody -> "RegulatoryBody"
        | FIX_PartyRole_SettlementLocation -> "SettlementLocation"
        | FIX_PartyRole_Exchange -> "Exchange"
        | FIX_PartyRole_Custodian -> "Custodian"
        | FIX_PartyRole_CorrespondentClearingOrganization -> "CorrespondentClearingOrganization"
        | FIX_PartyRole_ExecutingTrader -> "ExecutingTrader"
        | FIX_PartyRole_CorrespondentBroker -> "CorrespondentBroker"
        | FIX_PartyRole_ClientID -> "ClientID"
        | FIX_PartyRole_OrderOriginationTrader -> "OrderOriginationTrader"
        | FIX_PartyRole_Beneficiary -> "Beneficiary"
        | FIX_PartyRole_InterestedParty -> "InterestedParty"
        | FIX_PartyRole_UnderlyingContraFirm -> "UnderlyingContraFirm"
        | FIX_PartyRole_GiveupClearingFirm -> "GiveupClearingFirm"
        | FIX_PartyRole_ClearingOrganization -> "ClearingOrganization"
        | FIX_PartyRole_Locate -> "Locate"
        | FIX_PartyRole_Buyer -> "Buyer"
        | FIX_PartyRole_PositionAccount -> "PositionAccount"
        | FIX_PartyRole_OrderOriginationFirm -> "OrderOriginationFirm"
        | FIX_PartyRole_BrokerOfCredit -> "BrokerOfCredit"
        | FIX_PartyRole_SubCustodian -> "SubCustodian"
        | FIX_PartyRole_EnteringTrader -> "EnteringTrader"
        | FIX_PartyRole_ExecutingFirm -> "ExecutingFirm"
        | FIX_PartyRole_FundManagerClientID -> "FundManagerClientID"
        | FIX_PartyRole_ContraClearingFirm -> "ContraClearingFirm"
        | FIX_PartyRole_InvestorID -> "InvestorID"
    )
;;

let partysubidtype_to_string (d)  =
    (match d with
        | FIX_PartySubIDType_EmailAddress -> "EmailAddress"
        | FIX_PartySubIDType_Application -> "Application"
        | FIX_PartySubIDType_FundAccountName -> "FundAccountName"
        | FIX_PartySubIDType_FullLegalNameOfFirm -> "FullLegalNameOfFirm"
        | FIX_PartySubIDType_CSDParticipantMemberCode -> "CSDParticipantMemberCode"
        | FIX_PartySubIDType_RegistrationName -> "RegistrationName"
        | FIX_PartySubIDType_PostalAddress -> "PostalAddress"
        | FIX_PartySubIDType_SecuritiesAccountNumber -> "SecuritiesAccountNumber"
        | FIX_PartySubIDType_RegisteredAddress -> "RegisteredAddress"
        | FIX_PartySubIDType_TelexNumber -> "TelexNumber"
        | FIX_PartySubIDType_RegulatoryStatus -> "RegulatoryStatus"
        | FIX_PartySubIDType_PhoneNumber -> "PhoneNumber"
        | FIX_PartySubIDType_Firm -> "Firm"
        | FIX_PartySubIDType_Person -> "Person"
        | FIX_PartySubIDType_ContactName -> "ContactName"
        | FIX_PartySubIDType_CashAccountNumber -> "CashAccountNumber"
        | FIX_PartySubIDType_CashAccountName -> "CashAccountName"
        | FIX_PartySubIDType_LocationDesk -> "LocationDesk"
        | FIX_PartySubIDType_RegisteredAddressForConfirmation -> "RegisteredAddressForConfirmation"
        | FIX_PartySubIDType_PositionAccountType -> "PositionAccountType"
        | FIX_PartySubIDType_System -> "System"
        | FIX_PartySubIDType_Department -> "Department"
        | FIX_PartySubIDType_FaxNumber -> "FaxNumber"
        | FIX_PartySubIDType_RegistrationNumber -> "RegistrationNumber"
        | FIX_PartySubIDType_BIC -> "BIC"
        | FIX_PartySubIDType_SecuritiesAccountName -> "SecuritiesAccountName"
    )
;;

let paymentmethod_to_string (d)  =
    (match d with
        | FIX_PaymentMethod_CREST -> "CREST"
        | FIX_PaymentMethod_NSCC -> "NSCC"
        | FIX_PaymentMethod_DirectCredit -> "DirectCredit"
        | FIX_PaymentMethod_ACHCredit -> "ACHCredit"
        | FIX_PaymentMethod_Clearstream -> "Clearstream"
        | FIX_PaymentMethod_HighValueClearingSystem -> "HighValueClearingSystem"
        | FIX_PaymentMethod_DebitCard -> "DebitCard"
        | FIX_PaymentMethod_Euroclear -> "Euroclear"
        | FIX_PaymentMethod_TelegraphicTransfer -> "TelegraphicTransfer"
        | FIX_PaymentMethod_CreditCard -> "CreditCard"
        | FIX_PaymentMethod_DirectDebit -> "DirectDebit"
        | FIX_PaymentMethod_BPAY -> "BPAY"
        | FIX_PaymentMethod_Cheque -> "Cheque"
        | FIX_PaymentMethod_ACHDebit -> "ACHDebit"
        | FIX_PaymentMethod_FedWire -> "FedWire"
    )
;;

let peglimittype_to_string (d)  =
    (match d with
        | FIX_PegLimitType_Strict -> "Strict"
        | FIX_PegLimitType_OrBetter -> "OrBetter"
        | FIX_PegLimitType_OrWorse -> "OrWorse"
    )
;;

let pegmovetype_to_string (d)  =
    (match d with
        | FIX_PegMoveType_Fixed -> "Fixed"
        | FIX_PegMoveType_Floating -> "Floating"
    )
;;

let pegoffsettype_to_string (d)  =
    (match d with
        | FIX_PegOffsetType_BasisPoints -> "BasisPoints"
        | FIX_PegOffsetType_Price -> "Price"
        | FIX_PegOffsetType_Ticks -> "Ticks"
        | FIX_PegOffsetType_PriceTier -> "PriceTier"
    )
;;

let pegrounddirection_to_string (d)  =
    (match d with
        | FIX_PegRoundDirection_MoreAggressive -> "MoreAggressive"
        | FIX_PegRoundDirection_MorePassive -> "MorePassive"
    )
;;

let pegscope_to_string (d)  =
    (match d with
        | FIX_PegScope_National -> "National"
        | FIX_PegScope_Local -> "Local"
        | FIX_PegScope_NationalExcludingLocal -> "NationalExcludingLocal"
        | FIX_PegScope_Global -> "Global"
    )
;;

let posamttype_to_string (d)  =
    (match d with
        | FIX_PosAmtType_PremiumAmount -> "PremiumAmount"
        | FIX_PosAmtType_StartOfDayMarkToMarketAmount -> "StartOfDayMarkToMarketAmount"
        | FIX_PosAmtType_FinalMarkToMarketAmount -> "FinalMarkToMarketAmount"
        | FIX_PosAmtType_ValueAdjustedAmount -> "ValueAdjustedAmount"
        | FIX_PosAmtType_TradeVariationAmount -> "TradeVariationAmount"
        | FIX_PosAmtType_CashResidualAmount -> "CashResidualAmount"
        | FIX_PosAmtType_IncrementalMarkToMarketAmount -> "IncrementalMarkToMarketAmount"
        | FIX_PosAmtType_CashAmount -> "CashAmount"
    )
;;

let posmaintaction_to_string (d)  =
    (match d with
        | FIX_PosMaintAction_Replace -> "Replace"
        | FIX_PosMaintAction_Cancel -> "Cancel"
        | FIX_PosMaintAction_New -> "New"
    )
;;

let posmaintresult_to_string (d)  =
    (match d with
        | FIX_PosMaintResult_Other -> "Other"
        | FIX_PosMaintResult_SuccessfulCompletion -> "SuccessfulCompletion"
        | FIX_PosMaintResult_Rejected -> "Rejected"
    )
;;

let posmaintstatus_to_string (d)  =
    (match d with
        | FIX_PosMaintStatus_AcceptedWithWarnings -> "AcceptedWithWarnings"
        | FIX_PosMaintStatus_Rejected -> "Rejected"
        | FIX_PosMaintStatus_CompletedWithWarnings -> "CompletedWithWarnings"
        | FIX_PosMaintStatus_Completed -> "Completed"
        | FIX_PosMaintStatus_Accepted -> "Accepted"
    )
;;

let posqtystatus_to_string (d)  =
    (match d with
        | FIX_PosQtyStatus_Submitted -> "Submitted"
        | FIX_PosQtyStatus_Rejected -> "Rejected"
        | FIX_PosQtyStatus_Accepted -> "Accepted"
    )
;;

let posreqresult_to_string (d)  =
    (match d with
        | FIX_PosReqResult_Other -> "Other"
        | FIX_PosReqResult_RequestForPositionNotSupported -> "RequestForPositionNotSupported"
        | FIX_PosReqResult_NoPositionsFoundThatMatchCriteria -> "NoPositionsFoundThatMatchCriteria"
        | FIX_PosReqResult_NotAuthorizedToRequestPositions -> "NotAuthorizedToRequestPositions"
        | FIX_PosReqResult_InvalidOrUnsupportedRequest -> "InvalidOrUnsupportedRequest"
        | FIX_PosReqResult_ValidRequest -> "ValidRequest"
    )
;;

let posreqstatus_to_string (d)  =
    (match d with
        | FIX_PosReqStatus_CompletedWithWarnings -> "CompletedWithWarnings"
        | FIX_PosReqStatus_Rejected -> "Rejected"
        | FIX_PosReqStatus_Completed -> "Completed"
    )
;;

let posreqtype_to_string (d)  =
    (match d with
        | FIX_PosReqType_Trades -> "Trades"
        | FIX_PosReqType_Positions -> "Positions"
        | FIX_PosReqType_Exercises -> "Exercises"
        | FIX_PosReqType_Assignments -> "Assignments"
    )
;;

let postranstype_to_string (d)  =
    (match d with
        | FIX_PosTransType_PositionAdjustment -> "PositionAdjustment"
        | FIX_PosTransType_PositionChangeSubmission -> "PositionChangeSubmission"
        | FIX_PosTransType_DoNotExercise -> "DoNotExercise"
        | FIX_PosTransType_Exercise -> "Exercise"
        | FIX_PosTransType_Pledge -> "Pledge"
    )
;;

let postype_to_string (d)  =
    (match d with
        | FIX_PosType_TotalTransactionQty -> "TotalTransactionQty"
        | FIX_PosType_IntegralSplit -> "IntegralSplit"
        | FIX_PosType_OptionAssignment -> "OptionAssignment"
        | FIX_PosType_AllocationTradeQty -> "AllocationTradeQty"
        | FIX_PosType_IntraSpreadQty -> "IntraSpreadQty"
        | FIX_PosType_DeliveryQty -> "DeliveryQty"
        | FIX_PosType_TransactionFromExercise -> "TransactionFromExercise"
        | FIX_PosType_InterSpreadQty -> "InterSpreadQty"
        | FIX_PosType_EndOfDayQty -> "EndOfDayQty"
        | FIX_PosType_TransactionQuantity -> "TransactionQuantity"
        | FIX_PosType_PitTradeQty -> "PitTradeQty"
        | FIX_PosType_ElectronicTradeQty -> "ElectronicTradeQty"
        | FIX_PosType_CrossMarginQty -> "CrossMarginQty"
        | FIX_PosType_StartOfDayQty -> "StartOfDayQty"
        | FIX_PosType_TransferTradeQty -> "TransferTradeQty"
        | FIX_PosType_TransactionFromAssignment -> "TransactionFromAssignment"
        | FIX_PosType_OptionExerciseQty -> "OptionExerciseQty"
        | FIX_PosType_AdjustmentQty -> "AdjustmentQty"
        | FIX_PosType_AsOfTradeQty -> "AsOfTradeQty"
    )
;;

let positioneffect_to_string (d)  =
    (match d with
        | FIX_PositionEffect_Close -> "Close"
        | FIX_PositionEffect_Rolled -> "Rolled"
        | FIX_PositionEffect_FIFO -> "FIFO"
        | FIX_PositionEffect_Open -> "Open"
    )
;;

let possdupflag_to_string (d)  =
    (match d with
        | FIX_PossDupFlag_PossibleDuplicate -> "PossibleDuplicate"
        | FIX_PossDupFlag_OriginalTransmission -> "OriginalTransmission"
    )
;;

let possresend_to_string (d)  =
    (match d with
        | FIX_PossResend_OriginalTransmission -> "OriginalTransmission"
        | FIX_PossResend_PossibleResend -> "PossibleResend"
    )
;;

let preallocmethod_to_string (d)  =
    (match d with
        | FIX_PreallocMethod_ProRata -> "ProRata"
        | FIX_PreallocMethod_DoNotProRata -> "DoNotProRata"
    )
;;

let previouslyreported_to_string (d)  =
    (match d with
        | FIX_PreviouslyReported_PerviouslyReportedToCounterparty -> "PerviouslyReportedToCounterparty"
        | FIX_PreviouslyReported_NotReportedToCounterparty -> "NotReportedToCounterparty"
    )
;;

let pricetype_to_string (d)  =
    (match d with
        | FIX_PriceType_Discount -> "Discount"
        | FIX_PriceType_Spread -> "Spread"
        | FIX_PriceType_TEDPrice -> "TEDPrice"
        | FIX_PriceType_FixedCabinetTradePrice -> "FixedCabinetTradePrice"
        | FIX_PriceType_Percentage -> "Percentage"
        | FIX_PriceType_VariableCabinetTradePrice -> "VariableCabinetTradePrice"
        | FIX_PriceType_TEDYield -> "TEDYield"
        | FIX_PriceType_PerUnit -> "PerUnit"
        | FIX_PriceType_FixedAmount -> "FixedAmount"
        | FIX_PriceType_Premium -> "Premium"
        | FIX_PriceType_Yield -> "Yield"
    )
;;

let priorityindicator_to_string (d)  =
    (match d with
        | FIX_PriorityIndicator_PriorityUnchanged -> "PriorityUnchanged"
        | FIX_PriorityIndicator_LostPriorityAsResultOfOrderChange -> "LostPriorityAsResultOfOrderChange"
    )
;;

let processcode_to_string (d)  =
    (match d with
        | FIX_ProcessCode_Regular -> "Regular"
        | FIX_ProcessCode_SoftDollarStepOut -> "SoftDollarStepOut"
        | FIX_ProcessCode_StepIn -> "StepIn"
        | FIX_ProcessCode_PlanSponsor -> "PlanSponsor"
        | FIX_ProcessCode_SoftDollarStepIn -> "SoftDollarStepIn"
        | FIX_ProcessCode_SoftDollar -> "SoftDollar"
        | FIX_ProcessCode_StepOut -> "StepOut"
    )
;;

let product_to_string (d)  =
    (match d with
        | FIX_Product_CURRENCY -> "CURRENCY"
        | FIX_Product_COMMODITY -> "COMMODITY"
        | FIX_Product_CORPORATE -> "CORPORATE"
        | FIX_Product_LOAN -> "LOAN"
        | FIX_Product_MORTGAGE -> "MORTGAGE"
        | FIX_Product_OTHER -> "OTHER"
        | FIX_Product_AGENCY -> "AGENCY"
        | FIX_Product_FINANCING -> "FINANCING"
        | FIX_Product_MUNICIPAL -> "MUNICIPAL"
        | FIX_Product_MONEYMARKET -> "MONEYMARKET"
        | FIX_Product_INDEX -> "INDEX"
        | FIX_Product_GOVERNMENT -> "GOVERNMENT"
        | FIX_Product_EQUITY -> "EQUITY"
    )
;;

let progrptreqs_to_string (d)  =
    (match d with
        | FIX_ProgRptReqs_BuySideRequests -> "BuySideRequests"
        | FIX_ProgRptReqs_SellSideSends -> "SellSideSends"
        | FIX_ProgRptReqs_RealTimeExecutionReports -> "RealTimeExecutionReports"
    )
;;

let publishtrdindicator_to_string (d)  =
    (match d with
        | FIX_PublishTrdIndicator_ReportTrade -> "ReportTrade"
        | FIX_PublishTrdIndicator_DoNotReportTrade -> "DoNotReportTrade"
    )
;;

let putorcall_to_string (d)  =
    (match d with
        | FIX_PutOrCall_Call -> "Call"
        | FIX_PutOrCall_Put -> "Put"
    )
;;

let qtytype_to_string (d)  =
    (match d with
        | FIX_QtyType_Units -> "Units"
        | FIX_QtyType_Contracts -> "Contracts"
    )
;;

let quotecanceltype_to_string (d)  =
    (match d with
        | FIX_QuoteCancelType_CancelAllQuotes -> "CancelAllQuotes"
        | FIX_QuoteCancelType_CancelForOneOrMoreSecurities -> "CancelForOneOrMoreSecurities"
        | FIX_QuoteCancelType_CancelForUnderlyingSecurity -> "CancelForUnderlyingSecurity"
        | FIX_QuoteCancelType_CancelForSecurityType -> "CancelForSecurityType"
    )
;;

let quotecondition_to_string (d)  =
    (match d with
        | FIX_QuoteCondition_Closed -> "Closed"
        | FIX_QuoteCondition_Locked -> "Locked"
        | FIX_QuoteCondition_Crossed -> "Crossed"
        | FIX_QuoteCondition_NonFirm -> "NonFirm"
        | FIX_QuoteCondition_FastTrading -> "FastTrading"
        | FIX_QuoteCondition_ConsolidatedBest -> "ConsolidatedBest"
        | FIX_QuoteCondition_Open -> "Open"
        | FIX_QuoteCondition_ExchangeBest -> "ExchangeBest"
        | FIX_QuoteCondition_Depth -> "Depth"
    )
;;

let quotepricetype_to_string (d)  =
    (match d with
        | FIX_QuotePriceType_Discount -> "Discount"
        | FIX_QuotePriceType_Spread -> "Spread"
        | FIX_QuotePriceType_TEDPrice -> "TEDPrice"
        | FIX_QuotePriceType_Percent -> "Percent"
        | FIX_QuotePriceType_TEDYield -> "TEDYield"
        | FIX_QuotePriceType_FixedAmount -> "FixedAmount"
        | FIX_QuotePriceType_Premium -> "Premium"
        | FIX_QuotePriceType_Yield -> "Yield"
        | FIX_QuotePriceType_YieldSpread -> "YieldSpread"
        | FIX_QuotePriceType_PerShare -> "PerShare"
    )
;;

let quoterejectreason_to_string (d)  =
    (match d with
        | FIX_QuoteRejectReason_DuplicateQuote -> "DuplicateQuote"
        | FIX_QuoteRejectReason_Other -> "Other"
        | FIX_QuoteRejectReason_Exchange -> "Exchange"
        | FIX_QuoteRejectReason_InvalidPrice -> "InvalidPrice"
        | FIX_QuoteRejectReason_InvalidBid -> "InvalidBid"
        | FIX_QuoteRejectReason_UnknownQuote -> "UnknownQuote"
        | FIX_QuoteRejectReason_TooLateToEnter -> "TooLateToEnter"
        | FIX_QuoteRejectReason_QuoteRequestExceedsLimit -> "QuoteRequestExceedsLimit"
        | FIX_QuoteRejectReason_NotAuthorizedToQuoteSecurity -> "NotAuthorizedToQuoteSecurity"
        | FIX_QuoteRejectReason_UnknownSymbol -> "UnknownSymbol"
    )
;;

let quoterequestrejectreason_to_string (d)  =
    (match d with
        | FIX_QuoteRequestRejectReason_Other -> "Other"
        | FIX_QuoteRequestRejectReason_Exchange -> "Exchange"
        | FIX_QuoteRequestRejectReason_InvalidPrice -> "InvalidPrice"
        | FIX_QuoteRequestRejectReason_NoInventory -> "NoInventory"
        | FIX_QuoteRequestRejectReason_NoMatchForInquiry -> "NoMatchForInquiry"
        | FIX_QuoteRequestRejectReason_Pass -> "Pass"
        | FIX_QuoteRequestRejectReason_TooLateToEnter -> "TooLateToEnter"
        | FIX_QuoteRequestRejectReason_NoMarketForInstrument -> "NoMarketForInstrument"
        | FIX_QuoteRequestRejectReason_NotAuthorizedToRequestQuote -> "NotAuthorizedToRequestQuote"
        | FIX_QuoteRequestRejectReason_QuoteRequestExceedsLimit -> "QuoteRequestExceedsLimit"
        | FIX_QuoteRequestRejectReason_UnknownSymbol -> "UnknownSymbol"
    )
;;

let quoterequesttype_to_string (d)  =
    (match d with
        | FIX_QuoteRequestType_Manual -> "Manual"
        | FIX_QuoteRequestType_Automatic -> "Automatic"
    )
;;

let quoteresptype_to_string (d)  =
    (match d with
        | FIX_QuoteRespType_Cover -> "Cover"
        | FIX_QuoteRespType_Hit -> "Hit"
        | FIX_QuoteRespType_Counter -> "Counter"
        | FIX_QuoteRespType_Pass -> "Pass"
        | FIX_QuoteRespType_DoneAway -> "DoneAway"
        | FIX_QuoteRespType_Expired -> "Expired"
    )
;;

let quoteresponselevel_to_string (d)  =
    (match d with
        | FIX_QuoteResponseLevel_NoAcknowledgement -> "NoAcknowledgement"
        | FIX_QuoteResponseLevel_AcknowledgeOnlyNegativeOrErroneousQuotes -> "AcknowledgeOnlyNegativeOrErroneousQuotes"
        | FIX_QuoteResponseLevel_AcknowledgeEachQuoteMessage -> "AcknowledgeEachQuoteMessage"
    )
;;

let quotestatus_to_string (d)  =
    (match d with
        | FIX_QuoteStatus_CanceledDueToLockMarket -> "CanceledDueToLockMarket"
        | FIX_QuoteStatus_RemovedFromMarket -> "RemovedFromMarket"
        | FIX_QuoteStatus_CanceledDueToCrossMarket -> "CanceledDueToCrossMarket"
        | FIX_QuoteStatus_Rejected -> "Rejected"
        | FIX_QuoteStatus_Expired -> "Expired"
        | FIX_QuoteStatus_Query -> "Query"
        | FIX_QuoteStatus_QuoteNotFound -> "QuoteNotFound"
        | FIX_QuoteStatus_CanceledAll -> "CanceledAll"
        | FIX_QuoteStatus_LockedMarketWarning -> "LockedMarketWarning"
        | FIX_QuoteStatus_Accepted -> "Accepted"
        | FIX_QuoteStatus_CancelForSymbol -> "CancelForSymbol"
        | FIX_QuoteStatus_CrossMarketWarning -> "CrossMarketWarning"
        | FIX_QuoteStatus_Pass -> "Pass"
        | FIX_QuoteStatus_CanceledForSecurityType -> "CanceledForSecurityType"
        | FIX_QuoteStatus_CanceledForUnderlying -> "CanceledForUnderlying"
        | FIX_QuoteStatus_Pending -> "Pending"
    )
;;

let quotetype_to_string (d)  =
    (match d with
        | FIX_QuoteType_RestrictedTradeable -> "RestrictedTradeable"
        | FIX_QuoteType_Indicative -> "Indicative"
        | FIX_QuoteType_Counter -> "Counter"
        | FIX_QuoteType_Tradeable -> "Tradeable"
    )
;;

let registrejreasoncode_to_string (d)  =
    (match d with
        | FIX_RegistRejReasonCode_InvalidRegSeqNo -> "InvalidRegSeqNo"
        | FIX_RegistRejReasonCode_Other -> "Other"
        | FIX_RegistRejReasonCode_InvalidDistribInstns -> "InvalidDistribInstns"
        | FIX_RegistRejReasonCode_InvalidTaxExemptType -> "InvalidTaxExemptType"
        | FIX_RegistRejReasonCode_InvalidDateOfBirth -> "InvalidDateOfBirth"
        | FIX_RegistRejReasonCode_InvalidAgentCode -> "InvalidAgentCode"
        | FIX_RegistRejReasonCode_InvalidPaymentMethod -> "InvalidPaymentMethod"
        | FIX_RegistRejReasonCode_InvalidRegDetails -> "InvalidRegDetails"
        | FIX_RegistRejReasonCode_InvalidAccountName -> "InvalidAccountName"
        | FIX_RegistRejReasonCode_InvalidMailingInstructions -> "InvalidMailingInstructions"
        | FIX_RegistRejReasonCode_InvalidPercentage -> "InvalidPercentage"
        | FIX_RegistRejReasonCode_NoRegDetails -> "NoRegDetails"
        | FIX_RegistRejReasonCode_InvalidInvestorID -> "InvalidInvestorID"
        | FIX_RegistRejReasonCode_InvalidCountry -> "InvalidCountry"
        | FIX_RegistRejReasonCode_InvalidOwnershipType -> "InvalidOwnershipType"
        | FIX_RegistRejReasonCode_InvalidAccountType -> "InvalidAccountType"
        | FIX_RegistRejReasonCode_InvalidInvestorIDSource -> "InvalidInvestorIDSource"
        | FIX_RegistRejReasonCode_InvalidAccountNum -> "InvalidAccountNum"
        | FIX_RegistRejReasonCode_InvalidMailingDetails -> "InvalidMailingDetails"
    )
;;

let registstatus_to_string (d)  =
    (match d with
        | FIX_RegistStatus_Reminder -> "Reminder"
        | FIX_RegistStatus_Held -> "Held"
        | FIX_RegistStatus_Rejected -> "Rejected"
        | FIX_RegistStatus_Accepted -> "Accepted"
    )
;;

let registtranstype_to_string (d)  =
    (match d with
        | FIX_RegistTransType_Replace -> "Replace"
        | FIX_RegistTransType_Cancel -> "Cancel"
        | FIX_RegistTransType_New -> "New"
    )
;;

let reporttoexch_to_string (d)  =
    (match d with
        | FIX_ReportToExch_ReceiverReports -> "ReceiverReports"
        | FIX_ReportToExch_SenderReports -> "SenderReports"
    )
;;

let resetseqnumflag_to_string (d)  =
    (match d with
        | FIX_ResetSeqNumFlag_No -> "No"
        | FIX_ResetSeqNumFlag_Yes -> "Yes"
    )
;;

let responsetransporttype_to_string (d)  =
    (match d with
        | FIX_ResponseTransportType_Inband -> "Inband"
        | FIX_ResponseTransportType_OutOfBand -> "OutOfBand"
    )
;;

let roundingdirection_to_string (d)  =
    (match d with
        | FIX_RoundingDirection_RoundDown -> "RoundDown"
        | FIX_RoundingDirection_RoundUp -> "RoundUp"
        | FIX_RoundingDirection_RoundToNearest -> "RoundToNearest"
    )
;;

let routingtype_to_string (d)  =
    (match d with
        | FIX_RoutingType_TargetList -> "TargetList"
        | FIX_RoutingType_TargetFirm -> "TargetFirm"
        | FIX_RoutingType_BlockList -> "BlockList"
        | FIX_RoutingType_BlockFirm -> "BlockFirm"
    )
;;

let scope_to_string (d)  =
    (match d with
        | FIX_Scope_National -> "National"
        | FIX_Scope_LocalMarket -> "LocalMarket"
        | FIX_Scope_Global -> "Global"
    )
;;

let securityidsource_to_string (d)  =
    (match d with
        | FIX_SecurityIDSource_Belgian -> "Belgian"
        | FIX_SecurityIDSource_QUIK -> "QUIK"
        | FIX_SecurityIDSource_Sicovam -> "Sicovam"
        | FIX_SecurityIDSource_Valoren -> "Valoren"
        | FIX_SecurityIDSource_ExchangeSymbol -> "ExchangeSymbol"
        | FIX_SecurityIDSource_ISINNumber -> "ISINNumber"
        | FIX_SecurityIDSource_BloombergSymbol -> "BloombergSymbol"
        | FIX_SecurityIDSource_Common -> "Common"
        | FIX_SecurityIDSource_ConsolidatedTapeAssociation -> "ConsolidatedTapeAssociation"
        | FIX_SecurityIDSource_OptionPriceReportingAuthority -> "OptionPriceReportingAuthority"
        | FIX_SecurityIDSource_ClearingHouse -> "ClearingHouse"
        | FIX_SecurityIDSource_Dutch -> "Dutch"
        | FIX_SecurityIDSource_ISDAFpMLSpecification -> "ISDAFpMLSpecification"
        | FIX_SecurityIDSource_ISOCurrencyCode -> "ISOCurrencyCode"
        | FIX_SecurityIDSource_ISOCountryCode -> "ISOCountryCode"
        | FIX_SecurityIDSource_RICCode -> "RICCode"
        | FIX_SecurityIDSource_SEDOL -> "SEDOL"
        | FIX_SecurityIDSource_Wertpapier -> "Wertpapier"
        | FIX_SecurityIDSource_CUSIP -> "CUSIP"
    )
;;

let securitylistrequesttype_to_string (d)  =
    (match d with
        | FIX_SecurityListRequestType_Product -> "Product"
        | FIX_SecurityListRequestType_Symbol -> "Symbol"
        | FIX_SecurityListRequestType_SecurityTypeAnd -> "SecurityTypeAnd"
        | FIX_SecurityListRequestType_TradingSessionID -> "TradingSessionID"
        | FIX_SecurityListRequestType_AllSecurities -> "AllSecurities"
    )
;;

let securityrequestresult_to_string (d)  =
    (match d with
        | FIX_SecurityRequestResult_InstrumentDataTemporarilyUnavailable -> "InstrumentDataTemporarilyUnavailable"
        | FIX_SecurityRequestResult_NoInstrumentsFound -> "NoInstrumentsFound"
        | FIX_SecurityRequestResult_InvalidOrUnsupportedRequest -> "InvalidOrUnsupportedRequest"
        | FIX_SecurityRequestResult_RequestForInstrumentDataNotSupported -> "RequestForInstrumentDataNotSupported"
        | FIX_SecurityRequestResult_ValidRequest -> "ValidRequest"
        | FIX_SecurityRequestResult_NotAuthorizedToRetrieveInstrumentData -> "NotAuthorizedToRetrieveInstrumentData"
    )
;;

let securityrequesttype_to_string (d)  =
    (match d with
        | FIX_SecurityRequestType_RequestListSecurities -> "RequestListSecurities"
        | FIX_SecurityRequestType_RequestListSecurityTypes -> "RequestListSecurityTypes"
        | FIX_SecurityRequestType_RequestSecurityIdentityAndSpecifications -> "RequestSecurityIdentityAndSpecifications"
        | FIX_SecurityRequestType_RequestSecurityIdentityForSpecifications -> "RequestSecurityIdentityForSpecifications"
    )
;;

let securityresponsetype_to_string (d)  =
    (match d with
        | FIX_SecurityResponseType_AcceptAsIs -> "AcceptAsIs"
        | FIX_SecurityResponseType_RejectSecurityProposal -> "RejectSecurityProposal"
        | FIX_SecurityResponseType_CannotMatchSelectionCriteria -> "CannotMatchSelectionCriteria"
        | FIX_SecurityResponseType_AcceptWithRevisions -> "AcceptWithRevisions"
    )
;;

let securitytradingstatus_to_string (d)  =
    (match d with
        | FIX_SecurityTradingStatus_ITSPreOpening -> "ITSPreOpening"
        | FIX_SecurityTradingStatus_PreOpen -> "PreOpen"
        | FIX_SecurityTradingStatus_MarketImbalanceBuy -> "MarketImbalanceBuy"
        | FIX_SecurityTradingStatus_NoMarketOnCloseImbalance -> "NoMarketOnCloseImbalance"
        | FIX_SecurityTradingStatus_NotAvailableForTrading -> "NotAvailableForTrading"
        | FIX_SecurityTradingStatus_OpeningRotation -> "OpeningRotation"
        | FIX_SecurityTradingStatus_NoMarketImbalance -> "NoMarketImbalance"
        | FIX_SecurityTradingStatus_TradeDisseminationTime -> "TradeDisseminationTime"
        | FIX_SecurityTradingStatus_ReadyToTrade -> "ReadyToTrade"
        | FIX_SecurityTradingStatus_UnknownOrInvalid -> "UnknownOrInvalid"
        | FIX_SecurityTradingStatus_MarketOnCloseImbalanceBuy -> "MarketOnCloseImbalanceBuy"
        | FIX_SecurityTradingStatus_OpeningDelay -> "OpeningDelay"
        | FIX_SecurityTradingStatus_NoOpen -> "NoOpen"
        | FIX_SecurityTradingStatus_TradingHalt -> "TradingHalt"
        | FIX_SecurityTradingStatus_MarketOnCloseImbalanceSell -> "MarketOnCloseImbalanceSell"
        | FIX_SecurityTradingStatus_MarketImbalanceSell -> "MarketImbalanceSell"
        | FIX_SecurityTradingStatus_NotTradedOnThisMarket -> "NotTradedOnThisMarket"
        | FIX_SecurityTradingStatus_TradingRangeIndication -> "TradingRangeIndication"
        | FIX_SecurityTradingStatus_FastMarket -> "FastMarket"
        | FIX_SecurityTradingStatus_NewPriceIndication -> "NewPriceIndication"
        | FIX_SecurityTradingStatus_PriceIndication -> "PriceIndication"
        | FIX_SecurityTradingStatus_Resume -> "Resume"
    )
;;

let securitytype_to_string (d)  =
    (match d with
        | FIX_SecurityType_MutualFund -> "MutualFund"
        | FIX_SecurityType_YankeeCorporateBond -> "YankeeCorporateBond"
        | FIX_SecurityType_InterestStripFromAnyBondOrNote -> "InterestStripFromAnyBondOrNote"
        | FIX_SecurityType_Revolver -> "Revolver"
        | FIX_SecurityType_CommercialPaper -> "CommercialPaper"
        | FIX_SecurityType_RevenueAnticipationNote -> "RevenueAnticipationNote"
        | FIX_SecurityType_Matured -> "Matured"
        | FIX_SecurityType_Retired -> "Retired"
        | FIX_SecurityType_StructuredNotes -> "StructuredNotes"
        | FIX_SecurityType_MortgagePrivatePlacement -> "MortgagePrivatePlacement"
        | FIX_SecurityType_Pfandbriefe -> "Pfandbriefe"
        | FIX_SecurityType_OtherAnticipationNotes -> "OtherAnticipationNotes"
        | FIX_SecurityType_USDSupranationalCoupons -> "USDSupranationalCoupons"
        | FIX_SecurityType_MandatoryTender -> "MandatoryTender"
        | FIX_SecurityType_PreferredStock -> "PreferredStock"
        | FIX_SecurityType_ToBeAnnounced -> "ToBeAnnounced"
        | FIX_SecurityType_GeneralObligationBonds -> "GeneralObligationBonds"
        | FIX_SecurityType_TimeDeposit -> "TimeDeposit"
        | FIX_SecurityType_ExtendedCommNote -> "ExtendedCommNote"
        | FIX_SecurityType_MiscellaneousPassThrough -> "MiscellaneousPassThrough"
        | FIX_SecurityType_YankeeCertificateOfDeposit -> "YankeeCertificateOfDeposit"
        | FIX_SecurityType_Future -> "Future"
        | FIX_SecurityType_Forward -> "Forward"
        | FIX_SecurityType_VariableRateDemandNote -> "VariableRateDemandNote"
        | FIX_SecurityType_MediumTermNotes -> "MediumTermNotes"
        | FIX_SecurityType_Option -> "Option"
        | FIX_SecurityType_Repurchase -> "Repurchase"
        | FIX_SecurityType_PlazosFijos -> "PlazosFijos"
        | FIX_SecurityType_USTreasuryBill -> "USTreasuryBill"
        | FIX_SecurityType_BankNotes -> "BankNotes"
        | FIX_SecurityType_MortgagePrincipalOnly -> "MortgagePrincipalOnly"
        | FIX_SecurityType_MortgageInterestOnly -> "MortgageInterestOnly"
        | FIX_SecurityType_AssetBackedSecurities -> "AssetBackedSecurities"
        | FIX_SecurityType_Warrant -> "Warrant"
        | FIX_SecurityType_SpecialTax -> "SpecialTax"
        | FIX_SecurityType_EuroSupranationalCoupons -> "EuroSupranationalCoupons"
        | FIX_SecurityType_ForeignExchangeContract -> "ForeignExchangeContract"
        | FIX_SecurityType_USTreasuryBillOld -> "USTreasuryBillOld"
        | FIX_SecurityType_CertificateOfDeposit -> "CertificateOfDeposit"
        | FIX_SecurityType_TaxAnticipationNote -> "TaxAnticipationNote"
        | FIX_SecurityType_LetterOfCredit -> "LetterOfCredit"
        | FIX_SecurityType_CollateralizedMortgageObligation -> "CollateralizedMortgageObligation"
        | FIX_SecurityType_IOETTEMortgage -> "IOETTEMortgage"
        | FIX_SecurityType_MortgageBackedSecurities -> "MortgageBackedSecurities"
        | FIX_SecurityType_BillOfExchanges -> "BillOfExchanges"
        | FIX_SecurityType_Amended -> "Amended"
        | FIX_SecurityType_RevenueBonds -> "RevenueBonds"
        | FIX_SecurityType_EuroCorporateBond -> "EuroCorporateBond"
        | FIX_SecurityType_PrivateExportFunding -> "PrivateExportFunding"
        | FIX_SecurityType_RevolverLoan -> "RevolverLoan"
        | FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote -> "PrincipalStripFromANonCallableBondOrNote"
        | FIX_SecurityType_Withdrawn -> "Withdrawn"
        | FIX_SecurityType_DepositNotes -> "DepositNotes"
        | FIX_SecurityType_SpecialAssessment -> "SpecialAssessment"
        | FIX_SecurityType_EuroSovereigns -> "EuroSovereigns"
        | FIX_SecurityType_TaxAllocation -> "TaxAllocation"
        | FIX_SecurityType_EuroCertificateOfDeposit -> "EuroCertificateOfDeposit"
        | FIX_SecurityType_PromissoryNote -> "PromissoryNote"
        | FIX_SecurityType_PrincipalStripOfACallableBondOrNote -> "PrincipalStripOfACallableBondOrNote"
        | FIX_SecurityType_Overnight -> "Overnight"
        | FIX_SecurityType_ConvertibleBond -> "ConvertibleBond"
        | FIX_SecurityType_Corp -> "Corp"
        | FIX_SecurityType_SpecialObligation -> "SpecialObligation"
        | FIX_SecurityType_SecuritiesLoan -> "SecuritiesLoan"
        | FIX_SecurityType_CertificateOfObligation -> "CertificateOfObligation"
        | FIX_SecurityType_FederalAgencyDiscountNote -> "FederalAgencyDiscountNote"
        | FIX_SecurityType_CallLoans -> "CallLoans"
        | FIX_SecurityType_DebtorInPossession -> "DebtorInPossession"
        | FIX_SecurityType_USTreasuryBond -> "USTreasuryBond"
        | FIX_SecurityType_SecuritiesPledge -> "SecuritiesPledge"
        | FIX_SecurityType_Replaced -> "Replaced"
        | FIX_SecurityType_BradyBond -> "BradyBond"
        | FIX_SecurityType_CorporateBond -> "CorporateBond"
        | FIX_SecurityType_TermLoan -> "TermLoan"
        | FIX_SecurityType_TaxRevenueAnticipationNote -> "TaxRevenueAnticipationNote"
        | FIX_SecurityType_SwingLineFacility -> "SwingLineFacility"
        | FIX_SecurityType_TaxExemptCommercialPaper -> "TaxExemptCommercialPaper"
        | FIX_SecurityType_NoSecurityType -> "NoSecurityType"
        | FIX_SecurityType_DualCurrency -> "DualCurrency"
        | FIX_SecurityType_FederalAgencyCoupon -> "FederalAgencyCoupon"
        | FIX_SecurityType_BankersAcceptance -> "BankersAcceptance"
        | FIX_SecurityType_MultilegInstrument -> "MultilegInstrument"
        | FIX_SecurityType_EuroCommercialPaper -> "EuroCommercialPaper"
        | FIX_SecurityType_CommonStock -> "CommonStock"
        | FIX_SecurityType_USTreasuryNote -> "USTreasuryNote"
        | FIX_SecurityType_TreasuryInflationProtectedSecurities -> "TreasuryInflationProtectedSecurities"
        | FIX_SecurityType_IndexedLinked -> "IndexedLinked"
        | FIX_SecurityType_BridgeLoan -> "BridgeLoan"
        | FIX_SecurityType_ShortTermLoanNote -> "ShortTermLoanNote"
        | FIX_SecurityType_Defaulted -> "Defaulted"
        | FIX_SecurityType_USTreasuryNoteOld -> "USTreasuryNoteOld"
        | FIX_SecurityType_CertificateOfParticipation -> "CertificateOfParticipation"
        | FIX_SecurityType_CorporatePrivatePlacement -> "CorporatePrivatePlacement"
        | FIX_SecurityType_BuySellback -> "BuySellback"
        | FIX_SecurityType_LiquidityNote -> "LiquidityNote"
    )
;;

let settlcurrfxratecalc_to_string (d)  =
    (match d with
        | FIX_SettlCurrFxRateCalc_Multiply -> "Multiply"
        | FIX_SettlCurrFxRateCalc_Divide -> "Divide"
    )
;;

let settldeliverytype_to_string (d)  =
    (match d with
        | FIX_SettlDeliveryType_TriParty -> "TriParty"
        | FIX_SettlDeliveryType_Versus -> "Versus"
        | FIX_SettlDeliveryType_HoldInCustody -> "HoldInCustody"
        | FIX_SettlDeliveryType_Free -> "Free"
    )
;;

let settlinstmode_to_string (d)  =
    (match d with
        | FIX_SettlInstMode_RequestReject -> "RequestReject"
        | FIX_SettlInstMode_StandingInstructionsProvided -> "StandingInstructionsProvided"
        | FIX_SettlInstMode_SpecificOrderForASingleAccount -> "SpecificOrderForASingleAccount"
    )
;;

let settlinstreqrejcode_to_string (d)  =
    (match d with
        | FIX_SettlInstReqRejCode_Other -> "Other"
        | FIX_SettlInstReqRejCode_NoMatchingSettlementInstructionsFound -> "NoMatchingSettlementInstructionsFound"
        | FIX_SettlInstReqRejCode_UnknownAccount -> "UnknownAccount"
        | FIX_SettlInstReqRejCode_UnableToProcessRequest -> "UnableToProcessRequest"
    )
;;

let settlinstsource_to_string (d)  =
    (match d with
        | FIX_SettlInstSource_Investor -> "Investor"
        | FIX_SettlInstSource_Institution -> "Institution"
        | FIX_SettlInstSource_BrokerCredit -> "BrokerCredit"
    )
;;

let settlinsttranstype_to_string (d)  =
    (match d with
        | FIX_SettlInstTransType_Cancel -> "Cancel"
        | FIX_SettlInstTransType_Replace -> "Replace"
        | FIX_SettlInstTransType_New -> "New"
        | FIX_SettlInstTransType_Restate -> "Restate"
    )
;;

let settlpricetype_to_string (d)  =
    (match d with
        | FIX_SettlPriceType_Theoretical -> "Theoretical"
        | FIX_SettlPriceType_Final -> "Final"
    )
;;

let settlsessid_to_string (d)  =
    (match d with
        | FIX_SettlSessID_Intraday -> "Intraday"
        | FIX_SettlSessID_RegularTradingHours -> "RegularTradingHours"
        | FIX_SettlSessID_ElectronicTradingHours -> "ElectronicTradingHours"
    )
;;

let settltype_to_string (d)  =
    (match d with
        | FIX_SettlType_Regular -> "Regular"
        | FIX_SettlType_TPlus2 -> "TPlus2"
        | FIX_SettlType_SellersOption -> "SellersOption"
        | FIX_SettlType_TPlus4 -> "TPlus4"
        | FIX_SettlType_TPlus3 -> "TPlus3"
        | FIX_SettlType_TPlus5 -> "TPlus5"
        | FIX_SettlType_NextDay -> "NextDay"
        | FIX_SettlType_Future -> "Future"
        | FIX_SettlType_Cash -> "Cash"
        | FIX_SettlType_WhenAndIfIssued -> "WhenAndIfIssued"
    )
;;

let shortsalereason_to_string (d)  =
    (match d with
        | FIX_ShortSaleReason_SellingCustomerSoldShort -> "SellingCustomerSoldShort"
        | FIX_ShortSaleReason_QSROrAGUContraSideSoldShortExempt -> "QSROrAGUContraSideSoldShortExempt"
        | FIX_ShortSaleReason_DealerSoldShort -> "DealerSoldShort"
        | FIX_ShortSaleReason_QualifiedServiceRepresentative -> "QualifiedServiceRepresentative"
        | FIX_ShortSaleReason_DealerSoldShortExempt -> "DealerSoldShortExempt"
        | FIX_ShortSaleReason_SellingCustomerSoldShortExempt -> "SellingCustomerSoldShortExempt"
    )
;;

let side_to_string (d)  =
    (match d with
        | FIX_Side_AsDefined -> "AsDefined"
        | FIX_Side_Opposite -> "Opposite"
        | FIX_Side_Buy -> "Buy"
        | FIX_Side_CrossShortExempt -> "CrossShortExempt"
        | FIX_Side_Borrow -> "Borrow"
        | FIX_Side_BuyMinus -> "BuyMinus"
        | FIX_Side_Subscribe -> "Subscribe"
        | FIX_Side_Lend -> "Lend"
        | FIX_Side_SellShortExempt -> "SellShortExempt"
        | FIX_Side_Redeem -> "Redeem"
        | FIX_Side_SellPlus -> "SellPlus"
        | FIX_Side_Sell -> "Sell"
        | FIX_Side_Undisclosed -> "Undisclosed"
        | FIX_Side_Cross -> "Cross"
        | FIX_Side_CrossShort -> "CrossShort"
        | FIX_Side_SellShort -> "SellShort"
    )
;;

let sidemultilegreportingtype_to_string (d)  =
    (match d with
        | FIX_SideMultiLegReportingType_SingleSecurity -> "SingleSecurity"
        | FIX_SideMultiLegReportingType_MultilegSecurity -> "MultilegSecurity"
        | FIX_SideMultiLegReportingType_IndividualLegOfAMultilegSecurity -> "IndividualLegOfAMultilegSecurity"
    )
;;

let sidevalueind_to_string (d)  =
    (match d with
        | FIX_SideValueInd_SideValue1 -> "SideValue1"
        | FIX_SideValueInd_SideValue2 -> "SideValue2"
    )
;;

let solicitedflag_to_string (d)  =
    (match d with
        | FIX_SolicitedFlag_WasSolicited -> "WasSolicited"
        | FIX_SolicitedFlag_WasNotSolicited -> "WasNotSolicited"
    )
;;

let standinstdbtype_to_string (d)  =
    (match d with
        | FIX_StandInstDbType_Other -> "Other"
        | FIX_StandInstDbType_AccountNet -> "AccountNet"
        | FIX_StandInstDbType_DTCSID -> "DTCSID"
        | FIX_StandInstDbType_ThomsonALERT -> "ThomsonALERT"
        | FIX_StandInstDbType_AGlobalCustodian -> "AGlobalCustodian"
    )
;;

let statusvalue_to_string (d)  =
    (match d with
        | FIX_StatusValue_NotConnectedUnexpected -> "NotConnectedUnexpected"
        | FIX_StatusValue_InProcess -> "InProcess"
        | FIX_StatusValue_Connected -> "Connected"
        | FIX_StatusValue_NotConnectedExpected -> "NotConnectedExpected"
    )
;;

let stipulationtype_to_string (d)  =
    (match d with
        | FIX_StipulationType_LookbackDays -> "LookbackDays"
        | FIX_StipulationType_CouponRange -> "CouponRange"
        | FIX_StipulationType_PoolsPerLot -> "PoolsPerLot"
        | FIX_StipulationType_YieldRange -> "YieldRange"
        | FIX_StipulationType_Purpose -> "Purpose"
        | FIX_StipulationType_PaymentFrequency -> "PaymentFrequency"
        | FIX_StipulationType_Insured -> "Insured"
        | FIX_StipulationType_SubstitutionsFrequency -> "SubstitutionsFrequency"
        | FIX_StipulationType_WeightedAverageLoanAge -> "WeightedAverageLoanAge"
        | FIX_StipulationType_PricingFrequency -> "PricingFrequency"
        | FIX_StipulationType_PoolsMaximum -> "PoolsMaximum"
        | FIX_StipulationType_CallProtection -> "CallProtection"
        | FIX_StipulationType_TypeOfRedemption -> "TypeOfRedemption"
        | FIX_StipulationType_MaturityRange -> "MaturityRange"
        | FIX_StipulationType_SecurityTypeIncludedOrExcluded -> "SecurityTypeIncludedOrExcluded"
        | FIX_StipulationType_SubstitutionsLeft -> "SubstitutionsLeft"
        | FIX_StipulationType_IssueSizeRange -> "IssueSizeRange"
        | FIX_StipulationType_WeightedAverageCoupon -> "WeightedAverageCoupon"
        | FIX_StipulationType_FreeformText -> "FreeformText"
        | FIX_StipulationType_WeightedAverageLifeCoupon -> "WeightedAverageLifeCoupon"
        | FIX_StipulationType_BankQualified -> "BankQualified"
        | FIX_StipulationType_ExplicitLotIdentifier -> "ExplicitLotIdentifier"
        | FIX_StipulationType_TradeVariance -> "TradeVariance"
        | FIX_StipulationType_MaximumSubstitutions -> "MaximumSubstitutions"
        | FIX_StipulationType_RatingSourceAndRange -> "RatingSourceAndRange"
        | FIX_StipulationType_MinimumIncrement -> "MinimumIncrement"
        | FIX_StipulationType_CustomStart -> "CustomStart"
        | FIX_StipulationType_MinimumDenomination -> "MinimumDenomination"
        | FIX_StipulationType_PoolsPerMillion -> "PoolsPerMillion"
        | FIX_StipulationType_IssueDate -> "IssueDate"
        | FIX_StipulationType_Geographics -> "Geographics"
        | FIX_StipulationType_MinimumQuantity -> "MinimumQuantity"
        | FIX_StipulationType_PoolsPerTrade -> "PoolsPerTrade"
        | FIX_StipulationType_ISOCurrencyCode -> "ISOCurrencyCode"
        | FIX_StipulationType_MaturityYearAndMonth -> "MaturityYearAndMonth"
        | FIX_StipulationType_WholePool -> "WholePool"
        | FIX_StipulationType_AlternativeMinimumTax -> "AlternativeMinimumTax"
        | FIX_StipulationType_Issuer -> "Issuer"
        | FIX_StipulationType_Restricted -> "Restricted"
        | FIX_StipulationType_PriceRange -> "PriceRange"
        | FIX_StipulationType_MarketSector -> "MarketSector"
        | FIX_StipulationType_AutoReinvestment -> "AutoReinvestment"
        | FIX_StipulationType_NumberOfPieces -> "NumberOfPieces"
        | FIX_StipulationType_ProductionYear -> "ProductionYear"
        | FIX_StipulationType_ValuationDiscount -> "ValuationDiscount"
        | FIX_StipulationType_BargainConditions -> "BargainConditions"
        | FIX_StipulationType_BenchmarkPriceSource -> "BenchmarkPriceSource"
        | FIX_StipulationType_WeightedAverageMaturity -> "WeightedAverageMaturity"
        | FIX_StipulationType_Structure -> "Structure"
        | FIX_StipulationType_LotVariance -> "LotVariance"
    )
;;

let subscriptionrequesttype_to_string (d)  =
    (match d with
        | FIX_SubscriptionRequestType_DisablePreviousSnapshot -> "DisablePreviousSnapshot"
        | FIX_SubscriptionRequestType_SnapshotAndUpdates -> "SnapshotAndUpdates"
        | FIX_SubscriptionRequestType_Snapshot -> "Snapshot"
    )
;;

let targetstrategy_to_string (d)  =
    (match d with
        | FIX_TargetStrategy_MininizeMarketImpact -> "MininizeMarketImpact"
        | FIX_TargetStrategy_VWAP -> "VWAP"
        | FIX_TargetStrategy_Participate -> "Participate"
    )
;;

let taxadvantagetype_to_string (d)  =
    (match d with
        | FIX_TaxAdvantageType_MiniInsuranceISA -> "MiniInsuranceISA"
        | FIX_TaxAdvantageType_US457 -> "US457"
        | FIX_TaxAdvantageType_CurrentYearPayment -> "CurrentYearPayment"
        | FIX_TaxAdvantageType_US401K -> "US401K"
        | FIX_TaxAdvantageType_AssetTransfer -> "AssetTransfer"
        | FIX_TaxAdvantageType_EducationIRAPrototype -> "EducationIRAPrototype"
        | FIX_TaxAdvantageType_IRARollover -> "IRARollover"
        | FIX_TaxAdvantageType_RothIRANonPrototype -> "RothIRANonPrototype"
        | FIX_TaxAdvantageType_MiniCashISA -> "MiniCashISA"
        | FIX_TaxAdvantageType_IRA -> "IRA"
        | FIX_TaxAdvantageType_SelfDirectedIRA -> "SelfDirectedIRA"
        | FIX_TaxAdvantageType_RothIRAPrototype -> "RothIRAPrototype"
        | FIX_TaxAdvantageType_MaxiISA -> "MaxiISA"
        | FIX_TaxAdvantageType_EmployeeCurrentYear -> "EmployeeCurrentYear"
        | FIX_TaxAdvantageType_NonFundPrototypeIRA -> "NonFundPrototypeIRA"
        | FIX_TaxAdvantageType_MiniStocksAndSharesISA -> "MiniStocksAndSharesISA"
        | FIX_TaxAdvantageType_PriorYearPayment -> "PriorYearPayment"
        | FIX_TaxAdvantageType_ProfitSharingPlan -> "ProfitSharingPlan"
        | FIX_TaxAdvantageType_FIXNone -> "FIXNone"
        | FIX_TaxAdvantageType_TESSA -> "TESSA"
        | FIX_TaxAdvantageType_EmployerPriorYear -> "EmployerPriorYear"
        | FIX_TaxAdvantageType_EmployerCurrentYear -> "EmployerCurrentYear"
        | FIX_TaxAdvantageType_KEOGH -> "KEOGH"
        | FIX_TaxAdvantageType_NonFundQualifiedPlan -> "NonFundQualifiedPlan"
        | FIX_TaxAdvantageType_EmployeePriorYear -> "EmployeePriorYear"
        | FIX_TaxAdvantageType_RothConversionIRANonPrototype -> "RothConversionIRANonPrototype"
        | FIX_TaxAdvantageType_US403b -> "US403b"
        | FIX_TaxAdvantageType_RothConversionIRAPrototype -> "RothConversionIRAPrototype"
        | FIX_TaxAdvantageType_DefinedContributionPlan -> "DefinedContributionPlan"
        | FIX_TaxAdvantageType_EducationIRANonPrototype -> "EducationIRANonPrototype"
    )
;;

let terminationtype_to_string (d)  =
    (match d with
        | FIX_TerminationType_Flexible -> "Flexible"
        | FIX_TerminationType_Overnight -> "Overnight"
        | FIX_TerminationType_Term -> "Term"
        | FIX_TerminationType_Open -> "Open"
    )
;;

let testmessageindicator_to_string (d)  =
    (match d with
        | FIX_TestMessageIndicator_Fales -> "Fales"
        | FIX_TestMessageIndicator_True -> "True"
    )
;;

let tickdirection_to_string (d)  =
    (match d with
        | FIX_TickDirection_ZeroMinusTick -> "ZeroMinusTick"
        | FIX_TickDirection_PlusTick -> "PlusTick"
        | FIX_TickDirection_MinusTick -> "MinusTick"
        | FIX_TickDirection_ZeroPlusTick -> "ZeroPlusTick"
    )
;;

let timeinforce_to_string (d)  =
    (match d with
        | FIX_TimeInForce_GoodTillCancel -> "GoodTillCancel"
        | FIX_TimeInForce_AtTheClose -> "AtTheClose"
        | FIX_TimeInForce_ImmediateOrCancel -> "ImmediateOrCancel"
        | FIX_TimeInForce_Day -> "Day"
        | FIX_TimeInForce_FillOrKill -> "FillOrKill"
        | FIX_TimeInForce_AtTheOpening -> "AtTheOpening"
        | FIX_TimeInForce_GoodTillCrossing -> "GoodTillCrossing"
        | FIX_TimeInForce_GoodTillDate -> "GoodTillDate"
    )
;;

let tradsesmethod_to_string (d)  =
    (match d with
        | FIX_TradSesMethod_OpenOutcry -> "OpenOutcry"
        | FIX_TradSesMethod_Electronic -> "Electronic"
        | FIX_TradSesMethod_TwoParty -> "TwoParty"
    )
;;

let tradsesmode_to_string (d)  =
    (match d with
        | FIX_TradSesMode_Testing -> "Testing"
        | FIX_TradSesMode_Simulated -> "Simulated"
        | FIX_TradSesMode_Production -> "Production"
    )
;;

let tradsesstatus_to_string (d)  =
    (match d with
        | FIX_TradSesStatus_Closed -> "Closed"
        | FIX_TradSesStatus_PreOpen -> "PreOpen"
        | FIX_TradSesStatus_RequestRejected -> "RequestRejected"
        | FIX_TradSesStatus_PreClose -> "PreClose"
        | FIX_TradSesStatus_Unknown -> "Unknown"
        | FIX_TradSesStatus_Halted -> "Halted"
        | FIX_TradSesStatus_Open -> "Open"
    )
;;

let tradsesstatusrejreason_to_string (d)  =
    (match d with
        | FIX_TradSesStatusRejReason_Other -> "Other"
        | FIX_TradSesStatusRejReason_UnknownOrInvalidTradingSessionID -> "UnknownOrInvalidTradingSessionID"
    )
;;

let tradeallocindicator_to_string (d)  =
    (match d with
        | FIX_TradeAllocIndicator_UseAllocationProvidedWithTheTrade -> "UseAllocationProvidedWithTheTrade"
        | FIX_TradeAllocIndicator_AllocationNotRequired -> "AllocationNotRequired"
        | FIX_TradeAllocIndicator_AllocationRequired -> "AllocationRequired"
    )
;;

let tradecondition_to_string (d)  =
    (match d with
        | FIX_TradeCondition_Opened -> "Opened"
        | FIX_TradeCondition_Rule127Trade -> "Rule127Trade"
        | FIX_TradeCondition_CashTrade -> "CashTrade"
        | FIX_TradeCondition_IntradayTradeDetail -> "IntradayTradeDetail"
        | FIX_TradeCondition_SoldLast -> "SoldLast"
        | FIX_TradeCondition_Cash -> "Cash"
        | FIX_TradeCondition_StoppedStock -> "StoppedStock"
        | FIX_TradeCondition_ImbalanceMoreSellers -> "ImbalanceMoreSellers"
        | FIX_TradeCondition_Sold -> "Sold"
        | FIX_TradeCondition_ImbalanceMoreBuyers -> "ImbalanceMoreBuyers"
        | FIX_TradeCondition_NextDay -> "NextDay"
        | FIX_TradeCondition_Opening -> "Opening"
        | FIX_TradeCondition_Seller -> "Seller"
        | FIX_TradeCondition_OpeningPrice -> "OpeningPrice"
        | FIX_TradeCondition_AveragePriceTrade -> "AveragePriceTrade"
        | FIX_TradeCondition_Rule155Trade -> "Rule155Trade"
        | FIX_TradeCondition_NextDayTrade -> "NextDayTrade"
    )
;;

let tradereportrejectreason_to_string (d)  =
    (match d with
        | FIX_TradeReportRejectReason_Other -> "Other"
        | FIX_TradeReportRejectReason_InvalidTradeType -> "InvalidTradeType"
        | FIX_TradeReportRejectReason_UnauthorizedToReportTrades -> "UnauthorizedToReportTrades"
        | FIX_TradeReportRejectReason_InvalidPartyOnformation -> "InvalidPartyOnformation"
        | FIX_TradeReportRejectReason_UnknownInstrument -> "UnknownInstrument"
        | FIX_TradeReportRejectReason_Successful -> "Successful"
    )
;;

let tradereporttype_to_string (d)  =
    (match d with
        | FIX_TradeReportType_Alleged -> "Alleged"
        | FIX_TradeReportType_No -> "No"
        | FIX_TradeReportType_TradeReportCancel -> "TradeReportCancel"
        | FIX_TradeReportType_Decline -> "Decline"
        | FIX_TradeReportType_Addendum -> "Addendum"
        | FIX_TradeReportType_Submit -> "Submit"
        | FIX_TradeReportType_Accept -> "Accept"
        | FIX_TradeReportType_LockedIn -> "LockedIn"
    )
;;

let traderequestresult_to_string (d)  =
    (match d with
        | FIX_TradeRequestResult_TradeRequestTypeNotSupported -> "TradeRequestTypeNotSupported"
        | FIX_TradeRequestResult_Other -> "Other"
        | FIX_TradeRequestResult_InvalidParties -> "InvalidParties"
        | FIX_TradeRequestResult_InvalidOrUnknownInstrument -> "InvalidOrUnknownInstrument"
        | FIX_TradeRequestResult_InvalidTransportTypeRequested -> "InvalidTransportTypeRequested"
        | FIX_TradeRequestResult_InvalidTypeOfTradeRequested -> "InvalidTypeOfTradeRequested"
        | FIX_TradeRequestResult_InvalidDestinationRequested -> "InvalidDestinationRequested"
        | FIX_TradeRequestResult_Successful -> "Successful"
        | FIX_TradeRequestResult_NotAuthorized -> "NotAuthorized"
    )
;;

let traderequeststatus_to_string (d)  =
    (match d with
        | FIX_TradeRequestStatus_Rejected -> "Rejected"
        | FIX_TradeRequestStatus_Completed -> "Completed"
        | FIX_TradeRequestStatus_Accepted -> "Accepted"
    )
;;

let traderequesttype_to_string (d)  =
    (match d with
        | FIX_TradeRequestType_MatchedTradesMatchingCriteria -> "MatchedTradesMatchingCriteria"
        | FIX_TradeRequestType_AdvisoriesThatMatchCriteria -> "AdvisoriesThatMatchCriteria"
        | FIX_TradeRequestType_AllTrades -> "AllTrades"
        | FIX_TradeRequestType_UnreportedTradesThatMatchCriteria -> "UnreportedTradesThatMatchCriteria"
        | FIX_TradeRequestType_UnmatchedTradesThatMatchCriteria -> "UnmatchedTradesThatMatchCriteria"
    )
;;

let tradedflatswitch_to_string (d)  =
    (match d with
        | FIX_TradedFlatSwitch_TradedFlat -> "TradedFlat"
        | FIX_TradedFlatSwitch_NotTradedFlat -> "NotTradedFlat"
    )
;;

let trdregtimestamptype_to_string (d)  =
    (match d with
        | FIX_TrdRegTimestampType_ExecutionTime -> "ExecutionTime"
        | FIX_TrdRegTimestampType_TimeIn -> "TimeIn"
        | FIX_TrdRegTimestampType_BrokerReceipt -> "BrokerReceipt"
        | FIX_TrdRegTimestampType_BrokerExecution -> "BrokerExecution"
        | FIX_TrdRegTimestampType_TimeOut -> "TimeOut"
    )
;;

let trdrptstatus_to_string (d)  =
    (match d with
        | FIX_TrdRptStatus_Rejected -> "Rejected"
        | FIX_TrdRptStatus_Accepted -> "Accepted"
    )
;;

let trdtype_to_string (d)  =
    (match d with
        | FIX_TrdType_BlockTrade -> "BlockTrade"
        | FIX_TrdType_TTrade -> "TTrade"
        | FIX_TrdType_BunchedTrade -> "BunchedTrade"
        | FIX_TrdType_WeightedAveragePriceTrade -> "WeightedAveragePriceTrade"
        | FIX_TrdType_PriorReferencePriceTrade -> "PriorReferencePriceTrade"
        | FIX_TrdType_AfterHoursTrade -> "AfterHoursTrade"
        | FIX_TrdType_Transfer -> "Transfer"
        | FIX_TrdType_LateTrade -> "LateTrade"
        | FIX_TrdType_LateBunchedTrade -> "LateBunchedTrade"
        | FIX_TrdType_RegularTrade -> "RegularTrade"
        | FIX_TrdType_EFP -> "EFP"
    )
;;

let unsolicitedindicator_to_string (d)  =
    (match d with
        | FIX_UnsolicitedIndicator_MessageIsBeingSentAsAResultOfAPriorRequest -> "MessageIsBeingSentAsAResultOfAPriorRequest"
        | FIX_UnsolicitedIndicator_MessageIsBeingSentUnsolicited -> "MessageIsBeingSentUnsolicited"
    )
;;

let urgency_to_string (d)  =
    (match d with
        | FIX_Urgency_Flash -> "Flash"
        | FIX_Urgency_Background -> "Background"
        | FIX_Urgency_Normal -> "Normal"
    )
;;

let userrequesttype_to_string (d)  =
    (match d with
        | FIX_UserRequestType_RequestIndividualUserStatus -> "RequestIndividualUserStatus"
        | FIX_UserRequestType_LogOffUser -> "LogOffUser"
        | FIX_UserRequestType_LogOnUser -> "LogOnUser"
        | FIX_UserRequestType_ChangePasswordForUser -> "ChangePasswordForUser"
    )
;;

let userstatus_to_string (d)  =
    (match d with
        | FIX_UserStatus_UserNotRecognised -> "UserNotRecognised"
        | FIX_UserStatus_Other -> "Other"
        | FIX_UserStatus_PasswordChanged -> "PasswordChanged"
        | FIX_UserStatus_NotLoggedIn -> "NotLoggedIn"
        | FIX_UserStatus_LoggedIn -> "LoggedIn"
        | FIX_UserStatus_PasswordIncorrect -> "PasswordIncorrect"
    )
;;

let workingindicator_to_string (d)  =
    (match d with
        | FIX_WorkingIndicator_Working -> "Working"
        | FIX_WorkingIndicator_NotWorking -> "NotWorking"
    )
;;

let yieldtype_to_string (d)  =
    (match d with
        | FIX_YieldType_AfterTaxYield -> "AfterTaxYield"
        | FIX_YieldType_YieldToNextRefund -> "YieldToNextRefund"
        | FIX_YieldType_SemiAnnualYield -> "SemiAnnualYield"
        | FIX_YieldType_SimpleYield -> "SimpleYield"
        | FIX_YieldType_GvntEquivalentYield -> "GvntEquivalentYield"
        | FIX_YieldType_YieldToLongestAverageLife -> "YieldToLongestAverageLife"
        | FIX_YieldType_ClosingYieldMostRecentQuarter -> "ClosingYieldMostRecentQuarter"
        | FIX_YieldType_YieldToShortestAverageLife -> "YieldToShortestAverageLife"
        | FIX_YieldType_YieldToNextCall -> "YieldToNextCall"
        | FIX_YieldType_YieldToNextPut -> "YieldToNextPut"
        | FIX_YieldType_TrueGrossYield -> "TrueGrossYield"
        | FIX_YieldType_InverseFloaterBondYield -> "InverseFloaterBondYield"
        | FIX_YieldType_YieldToMaturity -> "YieldToMaturity"
        | FIX_YieldType_YieldWithInflationAssumption -> "YieldWithInflationAssumption"
        | FIX_YieldType_TaxEquivalentYield -> "TaxEquivalentYield"
        | FIX_YieldType_YieldToTenderDate -> "YieldToTenderDate"
        | FIX_YieldType_YieldToWorst -> "YieldToWorst"
        | FIX_YieldType_ClosingYield -> "ClosingYield"
        | FIX_YieldType_YieldAtIssue -> "YieldAtIssue"
        | FIX_YieldType_YieldToAverageMaturity -> "YieldToAverageMaturity"
        | FIX_YieldType_BookYield -> "BookYield"
        | FIX_YieldType_CurrentYield -> "CurrentYield"
        | FIX_YieldType_ClosingYieldMostRecentMonth -> "ClosingYieldMostRecentMonth"
        | FIX_YieldType_ClosingYieldMostRecentYear -> "ClosingYieldMostRecentYear"
        | FIX_YieldType_CompoundYield -> "CompoundYield"
        | FIX_YieldType_YieldChangeSinceClose -> "YieldChangeSinceClose"
        | FIX_YieldType_OpenAverageYield -> "OpenAverageYield"
        | FIX_YieldType_MarkToMarketYield -> "MarkToMarketYield"
        | FIX_YieldType_YieldValueOf132 -> "YieldValueOf132"
        | FIX_YieldType_TrueYield -> "TrueYield"
        | FIX_YieldType_AnnualYield -> "AnnualYield"
        | FIX_YieldType_PreviousCloseYield -> "PreviousCloseYield"
        | FIX_YieldType_MostRecentClosingYield -> "MostRecentClosingYield"
        | FIX_YieldType_ProceedsYield -> "ProceedsYield"
    )
;;

let week_to_string (d)  =
    (match d with
        | FIX_week_w1 -> "w1"
        | FIX_week_w2 -> "w2"
        | FIX_week_w3 -> "w3"
        | FIX_week_noweek -> "noweek"
        | FIX_week_w4 -> "w4"
        | FIX_week_w5 -> "w5"
    )
;;

let currency_to_string (d)  =
    (match d with
        | FIX_Currency_EUR -> "EUR"
        | FIX_Currency_CHF -> "CHF"
        | FIX_Currency_USD -> "USD"
        | FIX_Currency_GBP -> "GBP"
    )
;;

let country_to_string (d)  =
    (match d with
        | FIX_Country_DE -> "DE"
        | FIX_Country_GB -> "GB"
        | FIX_Country_US -> "US"
    )
;;

let exchange_to_string (d)  =
    (match d with
        | FIX_Exchange_XSHG -> "XSHG"
        | FIX_Exchange_SHSC -> "SHSC"
        | FIX_Exchange_XNYS -> "XNYS"
        | FIX_Exchange_XJAS -> "XJAS"
        | FIX_Exchange_XLON -> "XLON"
        | FIX_Exchange_XNAS -> "XNAS"
    )
;;

let accounttype_to_json (d)  : json =
    `String (accounttype_to_string d)
;;

let acctidsource_to_json (d)  : json =
    `String (acctidsource_to_string d)
;;

let adjustment_to_json (d)  : json =
    `String (adjustment_to_string d)
;;

let adjustmenttype_to_json (d)  : json =
    `String (adjustmenttype_to_string d)
;;

let advside_to_json (d)  : json =
    `String (advside_to_string d)
;;

let advtranstype_to_json (d)  : json =
    `String (advtranstype_to_string d)
;;

let affirmstatus_to_json (d)  : json =
    `String (affirmstatus_to_string d)
;;

let aggregatedbook_to_json (d)  : json =
    `String (aggregatedbook_to_string d)
;;

let allocaccounttype_to_json (d)  : json =
    `String (allocaccounttype_to_string d)
;;

let alloccancreplacereason_to_json (d)  : json =
    `String (alloccancreplacereason_to_string d)
;;

let allochandlinst_to_json (d)  : json =
    `String (allochandlinst_to_string d)
;;

let allocintermedreqtype_to_json (d)  : json =
    `String (allocintermedreqtype_to_string d)
;;

let alloclinktype_to_json (d)  : json =
    `String (alloclinktype_to_string d)
;;

let allocnoorderstype_to_json (d)  : json =
    `String (allocnoorderstype_to_string d)
;;

let allocrejcode_to_json (d)  : json =
    `String (allocrejcode_to_string d)
;;

let allocreporttype_to_json (d)  : json =
    `String (allocreporttype_to_string d)
;;

let allocsettlinsttype_to_json (d)  : json =
    `String (allocsettlinsttype_to_string d)
;;

let allocstatus_to_json (d)  : json =
    `String (allocstatus_to_string d)
;;

let alloctranstype_to_json (d)  : json =
    `String (alloctranstype_to_string d)
;;

let alloctype_to_json (d)  : json =
    `String (alloctype_to_string d)
;;

let applqueueaction_to_json (d)  : json =
    `String (applqueueaction_to_string d)
;;

let applqueueresolution_to_json (d)  : json =
    `String (applqueueresolution_to_string d)
;;

let assignmentmethod_to_json (d)  : json =
    `String (assignmentmethod_to_string d)
;;

let avgpxindicator_to_json (d)  : json =
    `String (avgpxindicator_to_string d)
;;

let basispxtype_to_json (d)  : json =
    `String (basispxtype_to_string d)
;;

let biddescriptortype_to_json (d)  : json =
    `String (biddescriptortype_to_string d)
;;

let bidrequesttranstype_to_json (d)  : json =
    `String (bidrequesttranstype_to_string d)
;;

let bidtradetype_to_json (d)  : json =
    `String (bidtradetype_to_string d)
;;

let bidtype_to_json (d)  : json =
    `String (bidtype_to_string d)
;;

let bookingtype_to_json (d)  : json =
    `String (bookingtype_to_string d)
;;

let bookingunit_to_json (d)  : json =
    `String (bookingunit_to_string d)
;;

let cpprogram_to_json (d)  : json =
    `String (cpprogram_to_string d)
;;

let cancellationrights_to_json (d)  : json =
    `String (cancellationrights_to_string d)
;;

let cashmargin_to_json (d)  : json =
    `String (cashmargin_to_string d)
;;

let clearingfeeindicator_to_json (d)  : json =
    `String (clearingfeeindicator_to_string d)
;;

let clearinginstruction_to_json (d)  : json =
    `String (clearinginstruction_to_string d)
;;

let collaction_to_json (d)  : json =
    `String (collaction_to_string d)
;;

let collasgnreason_to_json (d)  : json =
    `String (collasgnreason_to_string d)
;;

let collasgnrejectreason_to_json (d)  : json =
    `String (collasgnrejectreason_to_string d)
;;

let collasgnresptype_to_json (d)  : json =
    `String (collasgnresptype_to_string d)
;;

let collasgntranstype_to_json (d)  : json =
    `String (collasgntranstype_to_string d)
;;

let collinquiryqualifier_to_json (d)  : json =
    `String (collinquiryqualifier_to_string d)
;;

let collinquiryresult_to_json (d)  : json =
    `String (collinquiryresult_to_string d)
;;

let collinquirystatus_to_json (d)  : json =
    `String (collinquirystatus_to_string d)
;;

let collstatus_to_json (d)  : json =
    `String (collstatus_to_string d)
;;

let commtype_to_json (d)  : json =
    `String (commtype_to_string d)
;;

let confirmrejreason_to_json (d)  : json =
    `String (confirmrejreason_to_string d)
;;

let confirmstatus_to_json (d)  : json =
    `String (confirmstatus_to_string d)
;;

let confirmtranstype_to_json (d)  : json =
    `String (confirmtranstype_to_string d)
;;

let confirmtype_to_json (d)  : json =
    `String (confirmtype_to_string d)
;;

let contamttype_to_json (d)  : json =
    `String (contamttype_to_string d)
;;

let corporateaction_to_json (d)  : json =
    `String (corporateaction_to_string d)
;;

let coveredoruncovered_to_json (d)  : json =
    `String (coveredoruncovered_to_string d)
;;

let crossprioritization_to_json (d)  : json =
    `String (crossprioritization_to_string d)
;;

let crosstype_to_json (d)  : json =
    `String (crosstype_to_string d)
;;

let custordercapacity_to_json (d)  : json =
    `String (custordercapacity_to_string d)
;;

let cxlrejreason_to_json (d)  : json =
    `String (cxlrejreason_to_string d)
;;

let cxlrejresponseto_to_json (d)  : json =
    `String (cxlrejresponseto_to_string d)
;;

let dkreason_to_json (d)  : json =
    `String (dkreason_to_string d)
;;

let daybookinginst_to_json (d)  : json =
    `String (daybookinginst_to_string d)
;;

let deletereason_to_json (d)  : json =
    `String (deletereason_to_string d)
;;

let deliveryform_to_json (d)  : json =
    `String (deliveryform_to_string d)
;;

let deliverytype_to_json (d)  : json =
    `String (deliverytype_to_string d)
;;

let discretioninst_to_json (d)  : json =
    `String (discretioninst_to_string d)
;;

let discretionlimittype_to_json (d)  : json =
    `String (discretionlimittype_to_string d)
;;

let discretionmovetype_to_json (d)  : json =
    `String (discretionmovetype_to_string d)
;;

let discretionoffsettype_to_json (d)  : json =
    `String (discretionoffsettype_to_string d)
;;

let discretionrounddirection_to_json (d)  : json =
    `String (discretionrounddirection_to_string d)
;;

let discretionscope_to_json (d)  : json =
    `String (discretionscope_to_string d)
;;

let distribpaymentmethod_to_json (d)  : json =
    `String (distribpaymentmethod_to_string d)
;;

let dlvyinsttype_to_json (d)  : json =
    `String (dlvyinsttype_to_string d)
;;

let duetorelated_to_json (d)  : json =
    `String (duetorelated_to_string d)
;;

let emailtype_to_json (d)  : json =
    `String (emailtype_to_string d)
;;

let eventtype_to_json (d)  : json =
    `String (eventtype_to_string d)
;;

let exchangeforphysical_to_json (d)  : json =
    `String (exchangeforphysical_to_string d)
;;

let execinst_to_json (d)  : json =
    `String (execinst_to_string d)
;;

let execpricetype_to_json (d)  : json =
    `String (execpricetype_to_string d)
;;

let execrestatementreason_to_json (d)  : json =
    `String (execrestatementreason_to_string d)
;;

let exectype_to_json (d)  : json =
    `String (exectype_to_string d)
;;

let exercisemethod_to_json (d)  : json =
    `String (exercisemethod_to_string d)
;;

let expirationcycle_to_json (d)  : json =
    `String (expirationcycle_to_string d)
;;

let financialstatus_to_json (d)  : json =
    `String (financialstatus_to_string d)
;;

let forexreq_to_json (d)  : json =
    `String (forexreq_to_string d)
;;

let fundrenewwaiv_to_json (d)  : json =
    `String (fundrenewwaiv_to_string d)
;;

let gtbookinginst_to_json (d)  : json =
    `String (gtbookinginst_to_string d)
;;

let haltreason_to_json (d)  : json =
    `String (haltreason_to_string d)
;;

let handlinst_to_json (d)  : json =
    `String (handlinst_to_string d)
;;

let ioinaturalflag_to_json (d)  : json =
    `String (ioinaturalflag_to_string d)
;;

let ioiqltyind_to_json (d)  : json =
    `String (ioiqltyind_to_string d)
;;

let ioiqty_to_json (d)  : json =
    `String (ioiqty_to_string d)
;;

let ioiqualifier_to_json (d)  : json =
    `String (ioiqualifier_to_string d)
;;

let ioitranstype_to_json (d)  : json =
    `String (ioitranstype_to_string d)
;;

let inviewofcommon_to_json (d)  : json =
    `String (inviewofcommon_to_string d)
;;

let inctaxind_to_json (d)  : json =
    `String (inctaxind_to_string d)
;;

let instrattribtype_to_json (d)  : json =
    `String (instrattribtype_to_string d)
;;

let lastcapacity_to_json (d)  : json =
    `String (lastcapacity_to_string d)
;;

let lastfragment_to_json (d)  : json =
    `String (lastfragment_to_string d)
;;

let lastliquidityind_to_json (d)  : json =
    `String (lastliquidityind_to_string d)
;;

let legswaptype_to_json (d)  : json =
    `String (legswaptype_to_string d)
;;

let legalconfirm_to_json (d)  : json =
    `String (legalconfirm_to_string d)
;;

let liquidityindtype_to_json (d)  : json =
    `String (liquidityindtype_to_string d)
;;

let listexecinsttype_to_json (d)  : json =
    `String (listexecinsttype_to_string d)
;;

let listorderstatus_to_json (d)  : json =
    `String (listorderstatus_to_string d)
;;

let liststatustype_to_json (d)  : json =
    `String (liststatustype_to_string d)
;;

let locatereqd_to_json (d)  : json =
    `String (locatereqd_to_string d)
;;

let mdentrytype_to_json (d)  : json =
    `String (mdentrytype_to_string d)
;;

let mdimplicitdelete_to_json (d)  : json =
    `String (mdimplicitdelete_to_string d)
;;

let mdreqrejreason_to_json (d)  : json =
    `String (mdreqrejreason_to_string d)
;;

let mdupdateaction_to_json (d)  : json =
    `String (mdupdateaction_to_string d)
;;

let mdupdatetype_to_json (d)  : json =
    `String (mdupdatetype_to_string d)
;;

let masscancelrejectreason_to_json (d)  : json =
    `String (masscancelrejectreason_to_string d)
;;

let masscancelrequesttype_to_json (d)  : json =
    `String (masscancelrequesttype_to_string d)
;;

let masscancelresponse_to_json (d)  : json =
    `String (masscancelresponse_to_string d)
;;

let massstatusreqtype_to_json (d)  : json =
    `String (massstatusreqtype_to_string d)
;;

let matchstatus_to_json (d)  : json =
    `String (matchstatus_to_string d)
;;

let matchtype_to_json (d)  : json =
    `String (matchtype_to_string d)
;;

let messageencoding_to_json (d)  : json =
    `String (messageencoding_to_string d)
;;

let miscfeebasis_to_json (d)  : json =
    `String (miscfeebasis_to_string d)
;;

let miscfeetype_to_json (d)  : json =
    `String (miscfeetype_to_string d)
;;

let moneylaunderingstatus_to_json (d)  : json =
    `String (moneylaunderingstatus_to_string d)
;;

let msgdirection_to_json (d)  : json =
    `String (msgdirection_to_string d)
;;

let multilegreportingtype_to_json (d)  : json =
    `String (multilegreportingtype_to_string d)
;;

let multilegrpttypereq_to_json (d)  : json =
    `String (multilegrpttypereq_to_string d)
;;

let netgrossind_to_json (d)  : json =
    `String (netgrossind_to_string d)
;;

let networkrequesttype_to_json (d)  : json =
    `String (networkrequesttype_to_string d)
;;

let networkstatusresponsetype_to_json (d)  : json =
    `String (networkstatusresponsetype_to_string d)
;;

let nosides_to_json (d)  : json =
    `String (nosides_to_string d)
;;

let notifybrokerofcredit_to_json (d)  : json =
    `String (notifybrokerofcredit_to_string d)
;;

let oddlot_to_json (d)  : json =
    `String (oddlot_to_string d)
;;

let openclosesettlflag_to_json (d)  : json =
    `String (openclosesettlflag_to_string d)
;;

let ordrejreason_to_json (d)  : json =
    `String (ordrejreason_to_string d)
;;

let ordstatus_to_json (d)  : json =
    `String (ordstatus_to_string d)
;;

let ordtype_to_json (d)  : json =
    `String (ordtype_to_string d)
;;

let ordercapacity_to_json (d)  : json =
    `String (ordercapacity_to_string d)
;;

let orderrestrictions_to_json (d)  : json =
    `String (orderrestrictions_to_string d)
;;

let ownertype_to_json (d)  : json =
    `String (ownertype_to_string d)
;;

let ownershiptype_to_json (d)  : json =
    `String (ownershiptype_to_string d)
;;

let partyidsource_to_json (d)  : json =
    `String (partyidsource_to_string d)
;;

let partyrole_to_json (d)  : json =
    `String (partyrole_to_string d)
;;

let partysubidtype_to_json (d)  : json =
    `String (partysubidtype_to_string d)
;;

let paymentmethod_to_json (d)  : json =
    `String (paymentmethod_to_string d)
;;

let peglimittype_to_json (d)  : json =
    `String (peglimittype_to_string d)
;;

let pegmovetype_to_json (d)  : json =
    `String (pegmovetype_to_string d)
;;

let pegoffsettype_to_json (d)  : json =
    `String (pegoffsettype_to_string d)
;;

let pegrounddirection_to_json (d)  : json =
    `String (pegrounddirection_to_string d)
;;

let pegscope_to_json (d)  : json =
    `String (pegscope_to_string d)
;;

let posamttype_to_json (d)  : json =
    `String (posamttype_to_string d)
;;

let posmaintaction_to_json (d)  : json =
    `String (posmaintaction_to_string d)
;;

let posmaintresult_to_json (d)  : json =
    `String (posmaintresult_to_string d)
;;

let posmaintstatus_to_json (d)  : json =
    `String (posmaintstatus_to_string d)
;;

let posqtystatus_to_json (d)  : json =
    `String (posqtystatus_to_string d)
;;

let posreqresult_to_json (d)  : json =
    `String (posreqresult_to_string d)
;;

let posreqstatus_to_json (d)  : json =
    `String (posreqstatus_to_string d)
;;

let posreqtype_to_json (d)  : json =
    `String (posreqtype_to_string d)
;;

let postranstype_to_json (d)  : json =
    `String (postranstype_to_string d)
;;

let postype_to_json (d)  : json =
    `String (postype_to_string d)
;;

let positioneffect_to_json (d)  : json =
    `String (positioneffect_to_string d)
;;

let possdupflag_to_json (d)  : json =
    `String (possdupflag_to_string d)
;;

let possresend_to_json (d)  : json =
    `String (possresend_to_string d)
;;

let preallocmethod_to_json (d)  : json =
    `String (preallocmethod_to_string d)
;;

let previouslyreported_to_json (d)  : json =
    `String (previouslyreported_to_string d)
;;

let pricetype_to_json (d)  : json =
    `String (pricetype_to_string d)
;;

let priorityindicator_to_json (d)  : json =
    `String (priorityindicator_to_string d)
;;

let processcode_to_json (d)  : json =
    `String (processcode_to_string d)
;;

let product_to_json (d)  : json =
    `String (product_to_string d)
;;

let progrptreqs_to_json (d)  : json =
    `String (progrptreqs_to_string d)
;;

let publishtrdindicator_to_json (d)  : json =
    `String (publishtrdindicator_to_string d)
;;

let putorcall_to_json (d)  : json =
    `String (putorcall_to_string d)
;;

let qtytype_to_json (d)  : json =
    `String (qtytype_to_string d)
;;

let quotecanceltype_to_json (d)  : json =
    `String (quotecanceltype_to_string d)
;;

let quotecondition_to_json (d)  : json =
    `String (quotecondition_to_string d)
;;

let quotepricetype_to_json (d)  : json =
    `String (quotepricetype_to_string d)
;;

let quoterejectreason_to_json (d)  : json =
    `String (quoterejectreason_to_string d)
;;

let quoterequestrejectreason_to_json (d)  : json =
    `String (quoterequestrejectreason_to_string d)
;;

let quoterequesttype_to_json (d)  : json =
    `String (quoterequesttype_to_string d)
;;

let quoteresptype_to_json (d)  : json =
    `String (quoteresptype_to_string d)
;;

let quoteresponselevel_to_json (d)  : json =
    `String (quoteresponselevel_to_string d)
;;

let quotestatus_to_json (d)  : json =
    `String (quotestatus_to_string d)
;;

let quotetype_to_json (d)  : json =
    `String (quotetype_to_string d)
;;

let registrejreasoncode_to_json (d)  : json =
    `String (registrejreasoncode_to_string d)
;;

let registstatus_to_json (d)  : json =
    `String (registstatus_to_string d)
;;

let registtranstype_to_json (d)  : json =
    `String (registtranstype_to_string d)
;;

let reporttoexch_to_json (d)  : json =
    `String (reporttoexch_to_string d)
;;

let resetseqnumflag_to_json (d)  : json =
    `String (resetseqnumflag_to_string d)
;;

let responsetransporttype_to_json (d)  : json =
    `String (responsetransporttype_to_string d)
;;

let roundingdirection_to_json (d)  : json =
    `String (roundingdirection_to_string d)
;;

let routingtype_to_json (d)  : json =
    `String (routingtype_to_string d)
;;

let scope_to_json (d)  : json =
    `String (scope_to_string d)
;;

let securityidsource_to_json (d)  : json =
    `String (securityidsource_to_string d)
;;

let securitylistrequesttype_to_json (d)  : json =
    `String (securitylistrequesttype_to_string d)
;;

let securityrequestresult_to_json (d)  : json =
    `String (securityrequestresult_to_string d)
;;

let securityrequesttype_to_json (d)  : json =
    `String (securityrequesttype_to_string d)
;;

let securityresponsetype_to_json (d)  : json =
    `String (securityresponsetype_to_string d)
;;

let securitytradingstatus_to_json (d)  : json =
    `String (securitytradingstatus_to_string d)
;;

let securitytype_to_json (d)  : json =
    `String (securitytype_to_string d)
;;

let settlcurrfxratecalc_to_json (d)  : json =
    `String (settlcurrfxratecalc_to_string d)
;;

let settldeliverytype_to_json (d)  : json =
    `String (settldeliverytype_to_string d)
;;

let settlinstmode_to_json (d)  : json =
    `String (settlinstmode_to_string d)
;;

let settlinstreqrejcode_to_json (d)  : json =
    `String (settlinstreqrejcode_to_string d)
;;

let settlinstsource_to_json (d)  : json =
    `String (settlinstsource_to_string d)
;;

let settlinsttranstype_to_json (d)  : json =
    `String (settlinsttranstype_to_string d)
;;

let settlpricetype_to_json (d)  : json =
    `String (settlpricetype_to_string d)
;;

let settlsessid_to_json (d)  : json =
    `String (settlsessid_to_string d)
;;

let settltype_to_json (d)  : json =
    `String (settltype_to_string d)
;;

let shortsalereason_to_json (d)  : json =
    `String (shortsalereason_to_string d)
;;

let side_to_json (d)  : json =
    `String (side_to_string d)
;;

let sidemultilegreportingtype_to_json (d)  : json =
    `String (sidemultilegreportingtype_to_string d)
;;

let sidevalueind_to_json (d)  : json =
    `String (sidevalueind_to_string d)
;;

let solicitedflag_to_json (d)  : json =
    `String (solicitedflag_to_string d)
;;

let standinstdbtype_to_json (d)  : json =
    `String (standinstdbtype_to_string d)
;;

let statusvalue_to_json (d)  : json =
    `String (statusvalue_to_string d)
;;

let stipulationtype_to_json (d)  : json =
    `String (stipulationtype_to_string d)
;;

let subscriptionrequesttype_to_json (d)  : json =
    `String (subscriptionrequesttype_to_string d)
;;

let targetstrategy_to_json (d)  : json =
    `String (targetstrategy_to_string d)
;;

let taxadvantagetype_to_json (d)  : json =
    `String (taxadvantagetype_to_string d)
;;

let terminationtype_to_json (d)  : json =
    `String (terminationtype_to_string d)
;;

let testmessageindicator_to_json (d)  : json =
    `String (testmessageindicator_to_string d)
;;

let tickdirection_to_json (d)  : json =
    `String (tickdirection_to_string d)
;;

let timeinforce_to_json (d)  : json =
    `String (timeinforce_to_string d)
;;

let tradsesmethod_to_json (d)  : json =
    `String (tradsesmethod_to_string d)
;;

let tradsesmode_to_json (d)  : json =
    `String (tradsesmode_to_string d)
;;

let tradsesstatus_to_json (d)  : json =
    `String (tradsesstatus_to_string d)
;;

let tradsesstatusrejreason_to_json (d)  : json =
    `String (tradsesstatusrejreason_to_string d)
;;

let tradeallocindicator_to_json (d)  : json =
    `String (tradeallocindicator_to_string d)
;;

let tradecondition_to_json (d)  : json =
    `String (tradecondition_to_string d)
;;

let tradereportrejectreason_to_json (d)  : json =
    `String (tradereportrejectreason_to_string d)
;;

let tradereporttype_to_json (d)  : json =
    `String (tradereporttype_to_string d)
;;

let traderequestresult_to_json (d)  : json =
    `String (traderequestresult_to_string d)
;;

let traderequeststatus_to_json (d)  : json =
    `String (traderequeststatus_to_string d)
;;

let traderequesttype_to_json (d)  : json =
    `String (traderequesttype_to_string d)
;;

let tradedflatswitch_to_json (d)  : json =
    `String (tradedflatswitch_to_string d)
;;

let trdregtimestamptype_to_json (d)  : json =
    `String (trdregtimestamptype_to_string d)
;;

let trdrptstatus_to_json (d)  : json =
    `String (trdrptstatus_to_string d)
;;

let trdtype_to_json (d)  : json =
    `String (trdtype_to_string d)
;;

let unsolicitedindicator_to_json (d)  : json =
    `String (unsolicitedindicator_to_string d)
;;

let urgency_to_json (d)  : json =
    `String (urgency_to_string d)
;;

let userrequesttype_to_json (d)  : json =
    `String (userrequesttype_to_string d)
;;

let userstatus_to_json (d)  : json =
    `String (userstatus_to_string d)
;;

let workingindicator_to_json (d)  : json =
    `String (workingindicator_to_string d)
;;

let yieldtype_to_json (d)  : json =
    `String (yieldtype_to_string d)
;;

let week_to_json (d)  : json =
    `String (week_to_string d)
;;

let currency_to_json (d)  : json =
    `String (currency_to_string d)
;;

let country_to_json (d)  : json =
    `String (country_to_string d)
;;

let exchange_to_json (d)  : json =
    `String (exchange_to_string d)
;;

let accounttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (accounttype_to_json d)
    )
;;

let acctidsource_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (acctidsource_to_json d)
    )
;;

let adjustment_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (adjustment_to_json d)
    )
;;

let adjustmenttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (adjustmenttype_to_json d)
    )
;;

let advside_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (advside_to_json d)
    )
;;

let advtranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (advtranstype_to_json d)
    )
;;

let affirmstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (affirmstatus_to_json d)
    )
;;

let aggregatedbook_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (aggregatedbook_to_json d)
    )
;;

let allocaccounttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocaccounttype_to_json d)
    )
;;

let alloccancreplacereason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (alloccancreplacereason_to_json d)
    )
;;

let allochandlinst_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allochandlinst_to_json d)
    )
;;

let allocintermedreqtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocintermedreqtype_to_json d)
    )
;;

let alloclinktype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (alloclinktype_to_json d)
    )
;;

let allocnoorderstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocnoorderstype_to_json d)
    )
;;

let allocrejcode_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocrejcode_to_json d)
    )
;;

let allocreporttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocreporttype_to_json d)
    )
;;

let allocsettlinsttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocsettlinsttype_to_json d)
    )
;;

let allocstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (allocstatus_to_json d)
    )
;;

let alloctranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (alloctranstype_to_json d)
    )
;;

let alloctype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (alloctype_to_json d)
    )
;;

let applqueueaction_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (applqueueaction_to_json d)
    )
;;

let applqueueresolution_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (applqueueresolution_to_json d)
    )
;;

let assignmentmethod_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (assignmentmethod_to_json d)
    )
;;

let avgpxindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (avgpxindicator_to_json d)
    )
;;

let basispxtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (basispxtype_to_json d)
    )
;;

let biddescriptortype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (biddescriptortype_to_json d)
    )
;;

let bidrequesttranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (bidrequesttranstype_to_json d)
    )
;;

let bidtradetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (bidtradetype_to_json d)
    )
;;

let bidtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (bidtype_to_json d)
    )
;;

let bookingtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (bookingtype_to_json d)
    )
;;

let bookingunit_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (bookingunit_to_json d)
    )
;;

let cpprogram_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (cpprogram_to_json d)
    )
;;

let cancellationrights_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (cancellationrights_to_json d)
    )
;;

let cashmargin_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (cashmargin_to_json d)
    )
;;

let clearingfeeindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (clearingfeeindicator_to_json d)
    )
;;

let clearinginstruction_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (clearinginstruction_to_json d)
    )
;;

let collaction_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collaction_to_json d)
    )
;;

let collasgnreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collasgnreason_to_json d)
    )
;;

let collasgnrejectreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collasgnrejectreason_to_json d)
    )
;;

let collasgnresptype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collasgnresptype_to_json d)
    )
;;

let collasgntranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collasgntranstype_to_json d)
    )
;;

let collinquiryqualifier_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collinquiryqualifier_to_json d)
    )
;;

let collinquiryresult_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collinquiryresult_to_json d)
    )
;;

let collinquirystatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collinquirystatus_to_json d)
    )
;;

let collstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (collstatus_to_json d)
    )
;;

let commtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (commtype_to_json d)
    )
;;

let confirmrejreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (confirmrejreason_to_json d)
    )
;;

let confirmstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (confirmstatus_to_json d)
    )
;;

let confirmtranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (confirmtranstype_to_json d)
    )
;;

let confirmtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (confirmtype_to_json d)
    )
;;

let contamttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (contamttype_to_json d)
    )
;;

let corporateaction_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (corporateaction_to_json d)
    )
;;

let coveredoruncovered_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (coveredoruncovered_to_json d)
    )
;;

let crossprioritization_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (crossprioritization_to_json d)
    )
;;

let crosstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (crosstype_to_json d)
    )
;;

let custordercapacity_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (custordercapacity_to_json d)
    )
;;

let cxlrejreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (cxlrejreason_to_json d)
    )
;;

let cxlrejresponseto_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (cxlrejresponseto_to_json d)
    )
;;

let dkreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (dkreason_to_json d)
    )
;;

let daybookinginst_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (daybookinginst_to_json d)
    )
;;

let deletereason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (deletereason_to_json d)
    )
;;

let deliveryform_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (deliveryform_to_json d)
    )
;;

let deliverytype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (deliverytype_to_json d)
    )
;;

let discretioninst_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (discretioninst_to_json d)
    )
;;

let discretionlimittype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (discretionlimittype_to_json d)
    )
;;

let discretionmovetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (discretionmovetype_to_json d)
    )
;;

let discretionoffsettype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (discretionoffsettype_to_json d)
    )
;;

let discretionrounddirection_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (discretionrounddirection_to_json d)
    )
;;

let discretionscope_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (discretionscope_to_json d)
    )
;;

let distribpaymentmethod_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (distribpaymentmethod_to_json d)
    )
;;

let dlvyinsttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (dlvyinsttype_to_json d)
    )
;;

let duetorelated_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (duetorelated_to_json d)
    )
;;

let emailtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (emailtype_to_json d)
    )
;;

let eventtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (eventtype_to_json d)
    )
;;

let exchangeforphysical_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (exchangeforphysical_to_json d)
    )
;;

let execinst_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (execinst_to_json d)
    )
;;

let execpricetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (execpricetype_to_json d)
    )
;;

let execrestatementreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (execrestatementreason_to_json d)
    )
;;

let exectype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (exectype_to_json d)
    )
;;

let exercisemethod_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (exercisemethod_to_json d)
    )
;;

let expirationcycle_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (expirationcycle_to_json d)
    )
;;

let financialstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (financialstatus_to_json d)
    )
;;

let forexreq_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (forexreq_to_json d)
    )
;;

let fundrenewwaiv_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (fundrenewwaiv_to_json d)
    )
;;

let gtbookinginst_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (gtbookinginst_to_json d)
    )
;;

let haltreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (haltreason_to_json d)
    )
;;

let handlinst_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (handlinst_to_json d)
    )
;;

let ioinaturalflag_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ioinaturalflag_to_json d)
    )
;;

let ioiqltyind_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ioiqltyind_to_json d)
    )
;;

let ioiqty_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ioiqty_to_json d)
    )
;;

let ioiqualifier_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ioiqualifier_to_json d)
    )
;;

let ioitranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ioitranstype_to_json d)
    )
;;

let inviewofcommon_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (inviewofcommon_to_json d)
    )
;;

let inctaxind_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (inctaxind_to_json d)
    )
;;

let instrattribtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (instrattribtype_to_json d)
    )
;;

let lastcapacity_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (lastcapacity_to_json d)
    )
;;

let lastfragment_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (lastfragment_to_json d)
    )
;;

let lastliquidityind_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (lastliquidityind_to_json d)
    )
;;

let legswaptype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (legswaptype_to_json d)
    )
;;

let legalconfirm_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (legalconfirm_to_json d)
    )
;;

let liquidityindtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (liquidityindtype_to_json d)
    )
;;

let listexecinsttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (listexecinsttype_to_json d)
    )
;;

let listorderstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (listorderstatus_to_json d)
    )
;;

let liststatustype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (liststatustype_to_json d)
    )
;;

let locatereqd_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (locatereqd_to_json d)
    )
;;

let mdentrytype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mdentrytype_to_json d)
    )
;;

let mdimplicitdelete_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mdimplicitdelete_to_json d)
    )
;;

let mdreqrejreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mdreqrejreason_to_json d)
    )
;;

let mdupdateaction_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mdupdateaction_to_json d)
    )
;;

let mdupdatetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (mdupdatetype_to_json d)
    )
;;

let masscancelrejectreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (masscancelrejectreason_to_json d)
    )
;;

let masscancelrequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (masscancelrequesttype_to_json d)
    )
;;

let masscancelresponse_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (masscancelresponse_to_json d)
    )
;;

let massstatusreqtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (massstatusreqtype_to_json d)
    )
;;

let matchstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (matchstatus_to_json d)
    )
;;

let matchtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (matchtype_to_json d)
    )
;;

let messageencoding_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (messageencoding_to_json d)
    )
;;

let miscfeebasis_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (miscfeebasis_to_json d)
    )
;;

let miscfeetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (miscfeetype_to_json d)
    )
;;

let moneylaunderingstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (moneylaunderingstatus_to_json d)
    )
;;

let msgdirection_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (msgdirection_to_json d)
    )
;;

let multilegreportingtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (multilegreportingtype_to_json d)
    )
;;

let multilegrpttypereq_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (multilegrpttypereq_to_json d)
    )
;;

let netgrossind_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (netgrossind_to_json d)
    )
;;

let networkrequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (networkrequesttype_to_json d)
    )
;;

let networkstatusresponsetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (networkstatusresponsetype_to_json d)
    )
;;

let nosides_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (nosides_to_json d)
    )
;;

let notifybrokerofcredit_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (notifybrokerofcredit_to_json d)
    )
;;

let oddlot_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (oddlot_to_json d)
    )
;;

let openclosesettlflag_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (openclosesettlflag_to_json d)
    )
;;

let ordrejreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ordrejreason_to_json d)
    )
;;

let ordstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ordstatus_to_json d)
    )
;;

let ordtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ordtype_to_json d)
    )
;;

let ordercapacity_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ordercapacity_to_json d)
    )
;;

let orderrestrictions_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (orderrestrictions_to_json d)
    )
;;

let ownertype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ownertype_to_json d)
    )
;;

let ownershiptype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (ownershiptype_to_json d)
    )
;;

let partyidsource_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (partyidsource_to_json d)
    )
;;

let partyrole_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (partyrole_to_json d)
    )
;;

let partysubidtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (partysubidtype_to_json d)
    )
;;

let paymentmethod_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (paymentmethod_to_json d)
    )
;;

let peglimittype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (peglimittype_to_json d)
    )
;;

let pegmovetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (pegmovetype_to_json d)
    )
;;

let pegoffsettype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (pegoffsettype_to_json d)
    )
;;

let pegrounddirection_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (pegrounddirection_to_json d)
    )
;;

let pegscope_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (pegscope_to_json d)
    )
;;

let posamttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posamttype_to_json d)
    )
;;

let posmaintaction_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posmaintaction_to_json d)
    )
;;

let posmaintresult_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posmaintresult_to_json d)
    )
;;

let posmaintstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posmaintstatus_to_json d)
    )
;;

let posqtystatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posqtystatus_to_json d)
    )
;;

let posreqresult_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posreqresult_to_json d)
    )
;;

let posreqstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posreqstatus_to_json d)
    )
;;

let posreqtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (posreqtype_to_json d)
    )
;;

let postranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (postranstype_to_json d)
    )
;;

let postype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (postype_to_json d)
    )
;;

let positioneffect_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (positioneffect_to_json d)
    )
;;

let possdupflag_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (possdupflag_to_json d)
    )
;;

let possresend_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (possresend_to_json d)
    )
;;

let preallocmethod_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (preallocmethod_to_json d)
    )
;;

let previouslyreported_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (previouslyreported_to_json d)
    )
;;

let pricetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (pricetype_to_json d)
    )
;;

let priorityindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (priorityindicator_to_json d)
    )
;;

let processcode_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (processcode_to_json d)
    )
;;

let product_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (product_to_json d)
    )
;;

let progrptreqs_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (progrptreqs_to_json d)
    )
;;

let publishtrdindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (publishtrdindicator_to_json d)
    )
;;

let putorcall_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (putorcall_to_json d)
    )
;;

let qtytype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (qtytype_to_json d)
    )
;;

let quotecanceltype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quotecanceltype_to_json d)
    )
;;

let quotecondition_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quotecondition_to_json d)
    )
;;

let quotepricetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quotepricetype_to_json d)
    )
;;

let quoterejectreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quoterejectreason_to_json d)
    )
;;

let quoterequestrejectreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quoterequestrejectreason_to_json d)
    )
;;

let quoterequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quoterequesttype_to_json d)
    )
;;

let quoteresptype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quoteresptype_to_json d)
    )
;;

let quoteresponselevel_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quoteresponselevel_to_json d)
    )
;;

let quotestatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quotestatus_to_json d)
    )
;;

let quotetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (quotetype_to_json d)
    )
;;

let registrejreasoncode_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (registrejreasoncode_to_json d)
    )
;;

let registstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (registstatus_to_json d)
    )
;;

let registtranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (registtranstype_to_json d)
    )
;;

let reporttoexch_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (reporttoexch_to_json d)
    )
;;

let resetseqnumflag_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (resetseqnumflag_to_json d)
    )
;;

let responsetransporttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (responsetransporttype_to_json d)
    )
;;

let roundingdirection_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (roundingdirection_to_json d)
    )
;;

let routingtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (routingtype_to_json d)
    )
;;

let scope_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (scope_to_json d)
    )
;;

let securityidsource_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securityidsource_to_json d)
    )
;;

let securitylistrequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securitylistrequesttype_to_json d)
    )
;;

let securityrequestresult_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securityrequestresult_to_json d)
    )
;;

let securityrequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securityrequesttype_to_json d)
    )
;;

let securityresponsetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securityresponsetype_to_json d)
    )
;;

let securitytradingstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securitytradingstatus_to_json d)
    )
;;

let securitytype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (securitytype_to_json d)
    )
;;

let settlcurrfxratecalc_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlcurrfxratecalc_to_json d)
    )
;;

let settldeliverytype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settldeliverytype_to_json d)
    )
;;

let settlinstmode_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlinstmode_to_json d)
    )
;;

let settlinstreqrejcode_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlinstreqrejcode_to_json d)
    )
;;

let settlinstsource_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlinstsource_to_json d)
    )
;;

let settlinsttranstype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlinsttranstype_to_json d)
    )
;;

let settlpricetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlpricetype_to_json d)
    )
;;

let settlsessid_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settlsessid_to_json d)
    )
;;

let settltype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (settltype_to_json d)
    )
;;

let shortsalereason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (shortsalereason_to_json d)
    )
;;

let side_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (side_to_json d)
    )
;;

let sidemultilegreportingtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (sidemultilegreportingtype_to_json d)
    )
;;

let sidevalueind_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (sidevalueind_to_json d)
    )
;;

let solicitedflag_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (solicitedflag_to_json d)
    )
;;

let standinstdbtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (standinstdbtype_to_json d)
    )
;;

let statusvalue_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (statusvalue_to_json d)
    )
;;

let stipulationtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (stipulationtype_to_json d)
    )
;;

let subscriptionrequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (subscriptionrequesttype_to_json d)
    )
;;

let targetstrategy_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (targetstrategy_to_json d)
    )
;;

let taxadvantagetype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (taxadvantagetype_to_json d)
    )
;;

let terminationtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (terminationtype_to_json d)
    )
;;

let testmessageindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (testmessageindicator_to_json d)
    )
;;

let tickdirection_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tickdirection_to_json d)
    )
;;

let timeinforce_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (timeinforce_to_json d)
    )
;;

let tradsesmethod_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradsesmethod_to_json d)
    )
;;

let tradsesmode_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradsesmode_to_json d)
    )
;;

let tradsesstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradsesstatus_to_json d)
    )
;;

let tradsesstatusrejreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradsesstatusrejreason_to_json d)
    )
;;

let tradeallocindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradeallocindicator_to_json d)
    )
;;

let tradecondition_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradecondition_to_json d)
    )
;;

let tradereportrejectreason_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradereportrejectreason_to_json d)
    )
;;

let tradereporttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradereporttype_to_json d)
    )
;;

let traderequestresult_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (traderequestresult_to_json d)
    )
;;

let traderequeststatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (traderequeststatus_to_json d)
    )
;;

let traderequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (traderequesttype_to_json d)
    )
;;

let tradedflatswitch_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (tradedflatswitch_to_json d)
    )
;;

let trdregtimestamptype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (trdregtimestamptype_to_json d)
    )
;;

let trdrptstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (trdrptstatus_to_json d)
    )
;;

let trdtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (trdtype_to_json d)
    )
;;

let unsolicitedindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (unsolicitedindicator_to_json d)
    )
;;

let urgency_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (urgency_to_json d)
    )
;;

let userrequesttype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (userrequesttype_to_json d)
    )
;;

let userstatus_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (userstatus_to_json d)
    )
;;

let workingindicator_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (workingindicator_to_json d)
    )
;;

let yieldtype_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (yieldtype_to_json d)
    )
;;

let week_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (week_to_json d)
    )
;;

let currency_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (currency_to_json d)
    )
;;

let country_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (country_to_json d)
    )
;;

let exchange_opt_to_json (d)  : json =
    (match d with
        | None -> (`Null)
        | Some d -> (exchange_to_json d)
    )
;;
