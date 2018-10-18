(* Aesthetic Integration copyright 2018 *)
open Full_app_enums;;
open Parser_utils.Parser;;

let parse_AccountType (str)  =
    (match str with
        | "1" -> (Some (FIX_AccountType_CarriedCustomerSide))
        | "3" -> (Some (FIX_AccountType_HouseTrader))
        | "2" -> (Some (FIX_AccountType_CarriedNonCustomerSide))
        | "6" -> (Some (FIX_AccountType_CarriedNonCustomerSideCrossMargined))
        | "8" -> (Some (FIX_AccountType_JointBackOfficeAccount))
        | "7" -> (Some (FIX_AccountType_HouseTraderCrossMargined))
        | "4" -> (Some (FIX_AccountType_FloorTrader))
        | _ -> (None)
    )
;;

let parse_AcctIDSource (str)  =
    (match str with
        | "99" -> (Some (FIX_AcctIDSource_Other))
        | "1" -> (Some (FIX_AcctIDSource_BIC))
        | "3" -> (Some (FIX_AcctIDSource_TFM))
        | "5" -> (Some (FIX_AcctIDSource_DTCCCode))
        | "2" -> (Some (FIX_AcctIDSource_SIDCode))
        | "4" -> (Some (FIX_AcctIDSource_OMGEO))
        | _ -> (None)
    )
;;

let parse_Adjustment (str)  =
    (match str with
        | "1" -> (Some (FIX_Adjustment_Cancel))
        | "2" -> (Some (FIX_Adjustment_Error))
        | "3" -> (Some (FIX_Adjustment_Correction))
        | _ -> (None)
    )
;;

let parse_AdjustmentType (str)  =
    (match str with
        | "0" -> (Some (FIX_AdjustmentType_ProcessRequestAsMarginDisposition))
        | "1" -> (Some (FIX_AdjustmentType_DeltaPlus))
        | "3" -> (Some (FIX_AdjustmentType_Final))
        | "2" -> (Some (FIX_AdjustmentType_DeltaMinus))
        | _ -> (None)
    )
;;

let parse_AdvSide (str)  =
    (match str with
        | "B" -> (Some (FIX_AdvSide_Buy))
        | "S" -> (Some (FIX_AdvSide_Sell))
        | "T" -> (Some (FIX_AdvSide_Trade))
        | "X" -> (Some (FIX_AdvSide_Cross))
        | _ -> (None)
    )
;;

let parse_AdvTransType (str)  =
    (match str with
        | "C" -> (Some (FIX_AdvTransType_Cancel))
        | "R" -> (Some (FIX_AdvTransType_Replace))
        | "N" -> (Some (FIX_AdvTransType_New))
        | _ -> (None)
    )
;;

let parse_AffirmStatus (str)  =
    (match str with
        | "3" -> (Some (FIX_AffirmStatus_Affirmed))
        | "1" -> (Some (FIX_AffirmStatus_Received))
        | "2" -> (Some (FIX_AffirmStatus_ConfirmRejected))
        | _ -> (None)
    )
;;

let parse_AggregatedBook (str)  =
    (match str with
        | "Y" -> (Some (FIX_AggregatedBook_BookEntriesToBeAggregated))
        | "N" -> (Some (FIX_AggregatedBook_BookEntriesShouldNotBeAggregated))
        | _ -> (None)
    )
;;

let parse_AllocAccountType (str)  =
    (match str with
        | "1" -> (Some (FIX_AllocAccountType_CarriedCustomerSide))
        | "3" -> (Some (FIX_AllocAccountType_HouseTrader))
        | "2" -> (Some (FIX_AllocAccountType_CarriedNonCustomerSide))
        | "6" -> (Some (FIX_AllocAccountType_CarriedNonCustomerSideCrossMargined))
        | "8" -> (Some (FIX_AllocAccountType_JointBackOfficeAccount))
        | "7" -> (Some (FIX_AllocAccountType_HouseTraderCrossMargined))
        | "4" -> (Some (FIX_AllocAccountType_FloorTrader))
        | _ -> (None)
    )
;;

let parse_AllocCancReplaceReason (str)  =
    (match str with
        | "99" -> (Some (FIX_AllocCancReplaceReason_Other))
        | "2" -> (Some (FIX_AllocCancReplaceReason_ChangeInUnderlyingOrderDetails))
        | "1" -> (Some (FIX_AllocCancReplaceReason_OriginalDetailsIncomplete))
        | _ -> (None)
    )
;;

let parse_AllocHandlInst (str)  =
    (match str with
        | "3" -> (Some (FIX_AllocHandlInst_ForwardAndMatch))
        | "2" -> (Some (FIX_AllocHandlInst_Forward))
        | "1" -> (Some (FIX_AllocHandlInst_Match))
        | _ -> (None)
    )
;;

let parse_AllocIntermedReqType (str)  =
    (match str with
        | "1" -> (Some (FIX_AllocIntermedReqType_PendingAccept))
        | "5" -> (Some (FIX_AllocIntermedReqType_BlockLevelReject))
        | "2" -> (Some (FIX_AllocIntermedReqType_PendingRelease))
        | "3" -> (Some (FIX_AllocIntermedReqType_PendingReversal))
        | "6" -> (Some (FIX_AllocIntermedReqType_AccountLevelReject))
        | "4" -> (Some (FIX_AllocIntermedReqType_Accept))
        | _ -> (None)
    )
;;

let parse_AllocLinkType (str)  =
    (match str with
        | "1" -> (Some (FIX_AllocLinkType_FXSwap))
        | "0" -> (Some (FIX_AllocLinkType_FXNetting))
        | _ -> (None)
    )
;;

let parse_AllocNoOrdersType (str)  =
    (match str with
        | "1" -> (Some (FIX_AllocNoOrdersType_ExplicitListProvided))
        | "0" -> (Some (FIX_AllocNoOrdersType_NotSpecified))
        | _ -> (None)
    )
;;

let parse_AllocRejCode (str)  =
    (match str with
        | "10" -> (Some (FIX_AllocRejCode_UnknownOrStaleExecID))
        | "0" -> (Some (FIX_AllocRejCode_UnknownAccount))
        | "7" -> (Some (FIX_AllocRejCode_OtherSeeText))
        | "6" -> (Some (FIX_AllocRejCode_UnknownListID))
        | "9" -> (Some (FIX_AllocRejCode_CalculationDifference))
        | "1" -> (Some (FIX_AllocRejCode_IncorrectQuantity))
        | "12" -> (Some (FIX_AllocRejCode_UnknownClOrdID))
        | "4" -> (Some (FIX_AllocRejCode_CommissionDifference))
        | "13" -> (Some (FIX_AllocRejCode_WarehouseRequestRejected))
        | "3" -> (Some (FIX_AllocRejCode_UnknownExecutingBrokerMnemonic))
        | "11" -> (Some (FIX_AllocRejCode_MismatchedData))
        | "5" -> (Some (FIX_AllocRejCode_UnknownOrderID))
        | "2" -> (Some (FIX_AllocRejCode_IncorrectAveragegPrice))
        | "8" -> (Some (FIX_AllocRejCode_IncorrectAllocatedQuantity))
        | _ -> (None)
    )
;;

let parse_AllocReportType (str)  =
    (match str with
        | "4" -> (Some (FIX_AllocReportType_SellsideCalculatedWithoutPreliminary))
        | "5" -> (Some (FIX_AllocReportType_WarehouseRecap))
        | "3" -> (Some (FIX_AllocReportType_SellsideCalculatedUsingPreliminary))
        | "8" -> (Some (FIX_AllocReportType_RequestToIntermediary))
        | _ -> (None)
    )
;;

let parse_AllocSettlInstType (str)  =
    (match str with
        | "1" -> (Some (FIX_AllocSettlInstType_DeriveFromParametersProvided))
        | "2" -> (Some (FIX_AllocSettlInstType_FullDetailsProvided))
        | "4" -> (Some (FIX_AllocSettlInstType_PhoneForInstructions))
        | "0" -> (Some (FIX_AllocSettlInstType_UseDefaultInstructions))
        | "3" -> (Some (FIX_AllocSettlInstType_SSIDBIDsProvided))
        | _ -> (None)
    )
;;

let parse_AllocStatus (str)  =
    (match str with
        | "4" -> (Some (FIX_AllocStatus_Incomplete))
        | "3" -> (Some (FIX_AllocStatus_Received))
        | "1" -> (Some (FIX_AllocStatus_BlockLevelReject))
        | "2" -> (Some (FIX_AllocStatus_AccountLevelReject))
        | "5" -> (Some (FIX_AllocStatus_RejectedByIntermediary))
        | "0" -> (Some (FIX_AllocStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_AllocTransType (str)  =
    (match str with
        | "1" -> (Some (FIX_AllocTransType_Replace))
        | "2" -> (Some (FIX_AllocTransType_Cancel))
        | "0" -> (Some (FIX_AllocTransType_New))
        | _ -> (None)
    )
;;

let parse_AllocType (str)  =
    (match str with
        | "2" -> (Some (FIX_AllocType_Preliminary))
        | "5" -> (Some (FIX_AllocType_ReadyToBook))
        | "1" -> (Some (FIX_AllocType_Calculated))
        | "7" -> (Some (FIX_AllocType_WarehouseInstruction))
        | "8" -> (Some (FIX_AllocType_RequestToIntermediary))
        | _ -> (None)
    )
;;

let parse_ApplQueueAction (str)  =
    (match str with
        | "0" -> (Some (FIX_ApplQueueAction_NoActionTaken))
        | "2" -> (Some (FIX_ApplQueueAction_OverlayLast))
        | "1" -> (Some (FIX_ApplQueueAction_QueueFlushed))
        | "3" -> (Some (FIX_ApplQueueAction_EndSession))
        | _ -> (None)
    )
;;

let parse_ApplQueueResolution (str)  =
    (match str with
        | "0" -> (Some (FIX_ApplQueueResolution_NoActionTaken))
        | "2" -> (Some (FIX_ApplQueueResolution_OverlayLast))
        | "1" -> (Some (FIX_ApplQueueResolution_QueueFlushed))
        | "3" -> (Some (FIX_ApplQueueResolution_EndSession))
        | _ -> (None)
    )
;;

let parse_AssignmentMethod (str)  =
    (match str with
        | "R" -> (Some (FIX_AssignmentMethod_Random))
        | "P" -> (Some (FIX_AssignmentMethod_ProRata))
        | _ -> (None)
    )
;;

let parse_AvgPxIndicator (str)  =
    (match str with
        | "0" -> (Some (FIX_AvgPxIndicator_NoAveragePricing))
        | "1" -> (Some (FIX_AvgPxIndicator_Trade))
        | "2" -> (Some (FIX_AvgPxIndicator_LastTrade))
        | _ -> (None)
    )
;;

let parse_BasisPxType (str)  =
    (match str with
        | "Z" -> (Some (FIX_BasisPxType_Others))
        | "6" -> (Some (FIX_BasisPxType_VWAPThroughADay))
        | "B" -> (Some (FIX_BasisPxType_VWAPThroughAnAfternoonSessionExcept))
        | "7" -> (Some (FIX_BasisPxType_VWAPThroughAMorningSession))
        | "3" -> (Some (FIX_BasisPxType_ClosingPrice))
        | "4" -> (Some (FIX_BasisPxType_CurrentPrice))
        | "C" -> (Some (FIX_BasisPxType_Strike))
        | "D" -> (Some (FIX_BasisPxType_Open))
        | "2" -> (Some (FIX_BasisPxType_ClosingPriceAtMorningSession))
        | "9" -> (Some (FIX_BasisPxType_VWAPThroughADayExcept))
        | "A" -> (Some (FIX_BasisPxType_VWAPThroughAMorningSessionExcept))
        | "8" -> (Some (FIX_BasisPxType_VWAPThroughAnAfternoonSession))
        | "5" -> (Some (FIX_BasisPxType_SQ))
        | _ -> (None)
    )
;;

let parse_BidDescriptorType (str)  =
    (match str with
        | "1" -> (Some (FIX_BidDescriptorType_Sector))
        | "3" -> (Some (FIX_BidDescriptorType_Index))
        | "2" -> (Some (FIX_BidDescriptorType_Country))
        | _ -> (None)
    )
;;

let parse_BidRequestTransType (str)  =
    (match str with
        | "C" -> (Some (FIX_BidRequestTransType_Cancel))
        | "N" -> (Some (FIX_BidRequestTransType_New))
        | _ -> (None)
    )
;;

let parse_BidTradeType (str)  =
    (match str with
        | "A" -> (Some (FIX_BidTradeType_Agency))
        | "R" -> (Some (FIX_BidTradeType_RiskTrade))
        | "G" -> (Some (FIX_BidTradeType_VWAPGuarantee))
        | "J" -> (Some (FIX_BidTradeType_GuaranteedClose))
        | _ -> (None)
    )
;;

let parse_BidType (str)  =
    (match str with
        | "2" -> (Some (FIX_BidType_Disclosed))
        | "3" -> (Some (FIX_BidType_NoBiddingProcess))
        | "1" -> (Some (FIX_BidType_NonDisclosed))
        | _ -> (None)
    )
;;

let parse_BookingType (str)  =
    (match str with
        | "1" -> (Some (FIX_BookingType_CFD))
        | "0" -> (Some (FIX_BookingType_RegularBooking))
        | "2" -> (Some (FIX_BookingType_TotalReturnSwap))
        | _ -> (None)
    )
;;

let parse_BookingUnit (str)  =
    (match str with
        | "1" -> (Some (FIX_BookingUnit_AggregatePartialExecutionsOnThisOrder))
        | "2" -> (Some (FIX_BookingUnit_AggregateExecutionsForThisSymbol))
        | "0" -> (Some (FIX_BookingUnit_EachPartialExecutionIsABookableUnit))
        | _ -> (None)
    )
;;

let parse_CPProgram (str)  =
    (match str with
        | "99" -> (Some (FIX_CPProgram_Other))
        | "1" -> (Some (FIX_CPProgram_Program3a3))
        | "2" -> (Some (FIX_CPProgram_Program42))
        | _ -> (None)
    )
;;

let parse_CancellationRights (str)  =
    (match str with
        | "M" -> (Some (FIX_CancellationRights_NoWaiverAgreement))
        | "N" -> (Some (FIX_CancellationRights_NoExecutionOnly))
        | "Y" -> (Some (FIX_CancellationRights_Yes))
        | "O" -> (Some (FIX_CancellationRights_NoInstitutional))
        | _ -> (None)
    )
;;

let parse_CashMargin (str)  =
    (match str with
        | "2" -> (Some (FIX_CashMargin_MarginOpen))
        | "1" -> (Some (FIX_CashMargin_Cash))
        | "3" -> (Some (FIX_CashMargin_MarginClose))
        | _ -> (None)
    )
;;

let parse_ClearingFeeIndicator (str)  =
    (match str with
        | "B" -> (Some (FIX_ClearingFeeIndicator_CBOEMember))
        | "3" -> (Some (FIX_ClearingFeeIndicator_ThirdYearDelegate))
        | "9" -> (Some (FIX_ClearingFeeIndicator_SixthYearDelegate))
        | "4" -> (Some (FIX_ClearingFeeIndicator_FourthYearDelegate))
        | "1" -> (Some (FIX_ClearingFeeIndicator_FirstYearDelegate))
        | "2" -> (Some (FIX_ClearingFeeIndicator_SecondYearDelegate))
        | "I" -> (Some (FIX_ClearingFeeIndicator_GIM))
        | "F" -> (Some (FIX_ClearingFeeIndicator_FullAndAssociateMember))
        | "H" -> (Some (FIX_ClearingFeeIndicator_Firms106HAnd106J))
        | "L" -> (Some (FIX_ClearingFeeIndicator_Lessee106FEmployees))
        | "E" -> (Some (FIX_ClearingFeeIndicator_EquityMemberAndClearingMember))
        | "C" -> (Some (FIX_ClearingFeeIndicator_NonMemberAndCustomer))
        | "M" -> (Some (FIX_ClearingFeeIndicator_AllOtherOwnershipTypes))
        | "5" -> (Some (FIX_ClearingFeeIndicator_FifthYearDelegate))
        | _ -> (None)
    )
;;

let parse_ClearingInstruction (str)  =
    (match str with
        | "11" -> (Some (FIX_ClearingInstruction_QualifiedServiceRepresentativeQSR))
        | "4" -> (Some (FIX_ClearingInstruction_SpecialTrade))
        | "13" -> (Some (FIX_ClearingInstruction_SelfClearing))
        | "2" -> (Some (FIX_ClearingInstruction_BilateralNettingOnly))
        | "9" -> (Some (FIX_ClearingInstruction_AutomaticPostingMode))
        | "10" -> (Some (FIX_ClearingInstruction_AutomaticGiveUpMode))
        | "6" -> (Some (FIX_ClearingInstruction_ClearAgainstCentralCounterparty))
        | "0" -> (Some (FIX_ClearingInstruction_ProcessNormally))
        | "3" -> (Some (FIX_ClearingInstruction_ExClearing))
        | "8" -> (Some (FIX_ClearingInstruction_ManualMode))
        | "7" -> (Some (FIX_ClearingInstruction_ExcludeFromCentralCounterparty))
        | "12" -> (Some (FIX_ClearingInstruction_CustomerTrade))
        | "1" -> (Some (FIX_ClearingInstruction_ExcludeFromAllNetting))
        | "5" -> (Some (FIX_ClearingInstruction_MultilateralNetting))
        | _ -> (None)
    )
;;

let parse_CollAction (str)  =
    (match str with
        | "1" -> (Some (FIX_CollAction_Add))
        | "0" -> (Some (FIX_CollAction_Retain))
        | "2" -> (Some (FIX_CollAction_Remove))
        | _ -> (None)
    )
;;

let parse_CollAsgnReason (str)  =
    (match str with
        | "1" -> (Some (FIX_CollAsgnReason_Scheduled))
        | "7" -> (Some (FIX_CollAsgnReason_AdverseTaxEvent))
        | "4" -> (Some (FIX_CollAsgnReason_MarginExcess))
        | "5" -> (Some (FIX_CollAsgnReason_ForwardCollateralDemand))
        | "3" -> (Some (FIX_CollAsgnReason_MarginDeficiency))
        | "0" -> (Some (FIX_CollAsgnReason_Initial))
        | "2" -> (Some (FIX_CollAsgnReason_TimeWarning))
        | "6" -> (Some (FIX_CollAsgnReason_EventOfDefault))
        | _ -> (None)
    )
;;

let parse_CollAsgnRejectReason (str)  =
    (match str with
        | "99" -> (Some (FIX_CollAsgnRejectReason_Other))
        | "4" -> (Some (FIX_CollAsgnRejectReason_InvalidTypeOfCollateral))
        | "2" -> (Some (FIX_CollAsgnRejectReason_UnauthorizedTransaction))
        | "0" -> (Some (FIX_CollAsgnRejectReason_UnknownDeal))
        | "1" -> (Some (FIX_CollAsgnRejectReason_UnknownOrInvalidInstrument))
        | "5" -> (Some (FIX_CollAsgnRejectReason_ExcessiveSubstitution))
        | "3" -> (Some (FIX_CollAsgnRejectReason_InsufficientCollateral))
        | _ -> (None)
    )
;;

let parse_CollAsgnRespType (str)  =
    (match str with
        | "2" -> (Some (FIX_CollAsgnRespType_Declined))
        | "0" -> (Some (FIX_CollAsgnRespType_Received))
        | "3" -> (Some (FIX_CollAsgnRespType_Rejected))
        | "1" -> (Some (FIX_CollAsgnRespType_Accepted))
        | _ -> (None)
    )
;;

let parse_CollAsgnTransType (str)  =
    (match str with
        | "1" -> (Some (FIX_CollAsgnTransType_Replace))
        | "2" -> (Some (FIX_CollAsgnTransType_Cancel))
        | "4" -> (Some (FIX_CollAsgnTransType_Reverse))
        | "0" -> (Some (FIX_CollAsgnTransType_New))
        | "3" -> (Some (FIX_CollAsgnTransType_Release))
        | _ -> (None)
    )
;;

let parse_CollInquiryQualifier (str)  =
    (match str with
        | "5" -> (Some (FIX_CollInquiryQualifier_PartiallyAssigned))
        | "6" -> (Some (FIX_CollInquiryQualifier_FullyAssigned))
        | "4" -> (Some (FIX_CollInquiryQualifier_NotAssigned))
        | "2" -> (Some (FIX_CollInquiryQualifier_CollateralInstrument))
        | "0" -> (Some (FIX_CollInquiryQualifier_TradeDate))
        | "1" -> (Some (FIX_CollInquiryQualifier_GCInstrument))
        | "3" -> (Some (FIX_CollInquiryQualifier_SubstitutionEligible))
        | "7" -> (Some (FIX_CollInquiryQualifier_OutstandingTrades))
        | _ -> (None)
    )
;;

let parse_CollInquiryResult (str)  =
    (match str with
        | "99" -> (Some (FIX_CollInquiryResult_Other))
        | "3" -> (Some (FIX_CollInquiryResult_InvalidParties))
        | "1" -> (Some (FIX_CollInquiryResult_InvalidOrUnknownInstrument))
        | "4" -> (Some (FIX_CollInquiryResult_InvalidTransportTypeRequested))
        | "7" -> (Some (FIX_CollInquiryResult_NoCollateralFoundForTheOrderSpecified))
        | "5" -> (Some (FIX_CollInquiryResult_InvalidDestinationRequested))
        | "8" -> (Some (FIX_CollInquiryResult_CollateralInquiryTypeNotSupported))
        | "2" -> (Some (FIX_CollInquiryResult_InvalidOrUnknownCollateralType))
        | "6" -> (Some (FIX_CollInquiryResult_NoCollateralFoundForTheTradeSpecified))
        | "9" -> (Some (FIX_CollInquiryResult_UnauthorizedForCollateralInquiry))
        | "0" -> (Some (FIX_CollInquiryResult_Successful))
        | _ -> (None)
    )
;;

let parse_CollInquiryStatus (str)  =
    (match str with
        | "1" -> (Some (FIX_CollInquiryStatus_AcceptedWithWarnings))
        | "3" -> (Some (FIX_CollInquiryStatus_CompletedWithWarnings))
        | "4" -> (Some (FIX_CollInquiryStatus_Rejected))
        | "2" -> (Some (FIX_CollInquiryStatus_Completed))
        | "0" -> (Some (FIX_CollInquiryStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_CollStatus (str)  =
    (match str with
        | "2" -> (Some (FIX_CollStatus_AssignmentProposed))
        | "1" -> (Some (FIX_CollStatus_PartiallyAssigned))
        | "3" -> (Some (FIX_CollStatus_Assigned))
        | "4" -> (Some (FIX_CollStatus_Challenged))
        | "0" -> (Some (FIX_CollStatus_Unassigned))
        | _ -> (None)
    )
;;

let parse_CommType (str)  =
    (match str with
        | "5" -> (Some (FIX_CommType_PercentageWaivedEnhancedUnits))
        | "6" -> (Some (FIX_CommType_PointsPerBondOrContract))
        | "2" -> (Some (FIX_CommType_Percent))
        | "1" -> (Some (FIX_CommType_PerUnit))
        | "3" -> (Some (FIX_CommType_Absolute))
        | "4" -> (Some (FIX_CommType_PercentageWaivedCashDiscount))
        | _ -> (None)
    )
;;

let parse_ConfirmRejReason (str)  =
    (match str with
        | "2" -> (Some (FIX_ConfirmRejReason_MissingSettlementInstructions))
        | "99" -> (Some (FIX_ConfirmRejReason_Other))
        | "1" -> (Some (FIX_ConfirmRejReason_MismatchedAccount))
        | _ -> (None)
    )
;;

let parse_ConfirmStatus (str)  =
    (match str with
        | "3" -> (Some (FIX_ConfirmStatus_MissingSettlementInstructions))
        | "5" -> (Some (FIX_ConfirmStatus_RequestRejected))
        | "1" -> (Some (FIX_ConfirmStatus_Received))
        | "2" -> (Some (FIX_ConfirmStatus_MismatchedAccount))
        | "4" -> (Some (FIX_ConfirmStatus_Confirmed))
        | _ -> (None)
    )
;;

let parse_ConfirmTransType (str)  =
    (match str with
        | "1" -> (Some (FIX_ConfirmTransType_Replace))
        | "2" -> (Some (FIX_ConfirmTransType_Cancel))
        | "0" -> (Some (FIX_ConfirmTransType_New))
        | _ -> (None)
    )
;;

let parse_ConfirmType (str)  =
    (match str with
        | "3" -> (Some (FIX_ConfirmType_ConfirmationRequestRejected))
        | "1" -> (Some (FIX_ConfirmType_Status))
        | "2" -> (Some (FIX_ConfirmType_Confirmation))
        | _ -> (None)
    )
;;

let parse_ContAmtType (str)  =
    (match str with
        | "1" -> (Some (FIX_ContAmtType_CommissionAmount))
        | "13" -> (Some (FIX_ContAmtType_FundBasedRenewalCommissionOnOrder))
        | "14" -> (Some (FIX_ContAmtType_FundBasedRenewalCommissionOnFund))
        | "4" -> (Some (FIX_ContAmtType_InitialChargePercent))
        | "9" -> (Some (FIX_ContAmtType_ExitChargeAmount))
        | "8" -> (Some (FIX_ContAmtType_DilutionLevyPercent))
        | "10" -> (Some (FIX_ContAmtType_ExitChargePercent))
        | "5" -> (Some (FIX_ContAmtType_DiscountAmount))
        | "15" -> (Some (FIX_ContAmtType_NetSettlementAmount))
        | "3" -> (Some (FIX_ContAmtType_InitialChargeAmount))
        | "12" -> (Some (FIX_ContAmtType_ProjectedFundValue))
        | "6" -> (Some (FIX_ContAmtType_DiscountPercent))
        | "7" -> (Some (FIX_ContAmtType_DilutionLevyAmount))
        | "2" -> (Some (FIX_ContAmtType_CommissionPercent))
        | "11" -> (Some (FIX_ContAmtType_FundBasedRenewalCommissionPercent))
        | _ -> (None)
    )
;;

let parse_inner_CorporateAction (str)  =
    (match str with
        | "B" -> (Some (FIX_CorporateAction_ExDistribution))
        | "A" -> (Some (FIX_CorporateAction_ExDividend))
        | "E" -> (Some (FIX_CorporateAction_ExInterest))
        | "C" -> (Some (FIX_CorporateAction_ExRights))
        | "D" -> (Some (FIX_CorporateAction_New))
        | _ -> (None)
    )
;;

let rec parse_CorporateAction_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_CorporateAction h with
            | None -> (parse_CorporateAction_filter t)
            | Some x -> (x :: (parse_CorporateAction_filter t))
        )
        )
    )
;;

let parse_CorporateAction (str)  =
    let x = split_to_list str ' ' in
    Some (parse_CorporateAction_filter x)
;;

let parse_CoveredOrUncovered (str)  =
    (match str with
        | "1" -> (Some (FIX_CoveredOrUncovered_Uncovered))
        | "0" -> (Some (FIX_CoveredOrUncovered_Covered))
        | _ -> (None)
    )
;;

let parse_CrossPrioritization (str)  =
    (match str with
        | "1" -> (Some (FIX_CrossPrioritization_BuySideIsPrioritized))
        | "2" -> (Some (FIX_CrossPrioritization_SellSideIsPrioritized))
        | "0" -> (Some (FIX_CrossPrioritization_FIXNone))
        | _ -> (None)
    )
;;

let parse_CrossType (str)  =
    (match str with
        | "2" -> (Some (FIX_CrossType_CrossIOC))
        | "3" -> (Some (FIX_CrossType_CrossOneSide))
        | "4" -> (Some (FIX_CrossType_CrossSamePrice))
        | "1" -> (Some (FIX_CrossType_CrossAON))
        | _ -> (None)
    )
;;

let parse_CustOrderCapacity (str)  =
    (match str with
        | "1" -> (Some (FIX_CustOrderCapacity_MemberTradingForTheirOwnAccount))
        | "4" -> (Some (FIX_CustOrderCapacity_AllOther))
        | "2" -> (Some (FIX_CustOrderCapacity_ClearingFirmTradingForItsProprietaryAccount))
        | "3" -> (Some (FIX_CustOrderCapacity_MemberTradingForAnotherMember))
        | _ -> (None)
    )
;;

let parse_CxlRejReason (str)  =
    (match str with
        | "99" -> (Some (FIX_CxlRejReason_Other))
        | "3" -> (Some (FIX_CxlRejReason_OrderAlreadyInPendingStatus))
        | "0" -> (Some (FIX_CxlRejReason_TooLateToCancel))
        | "1" -> (Some (FIX_CxlRejReason_UnknownOrder))
        | "4" -> (Some (FIX_CxlRejReason_UnableToProcessOrderMassCancelRequest))
        | "5" -> (Some (FIX_CxlRejReason_OrigOrdModTime))
        | "6" -> (Some (FIX_CxlRejReason_DuplicateClOrdID))
        | "2" -> (Some (FIX_CxlRejReason_BrokerCredit))
        | _ -> (None)
    )
;;

let parse_CxlRejResponseTo (str)  =
    (match str with
        | "1" -> (Some (FIX_CxlRejResponseTo_OrderCancelRequest))
        | "2" -> (Some (FIX_CxlRejResponseTo_OrderCancel))
        | _ -> (None)
    )
;;

let parse_DKReason (str)  =
    (match str with
        | "B" -> (Some (FIX_DKReason_WrongSide))
        | "C" -> (Some (FIX_DKReason_QuantityExceedsOrder))
        | "Z" -> (Some (FIX_DKReason_Other))
        | "F" -> (Some (FIX_DKReason_CalculationDifference))
        | "D" -> (Some (FIX_DKReason_NoMatchingOrder))
        | "E" -> (Some (FIX_DKReason_PriceExceedsLimit))
        | "A" -> (Some (FIX_DKReason_UnknownSymbol))
        | _ -> (None)
    )
;;

let parse_DayBookingInst (str)  =
    (match str with
        | "0" -> (Some (FIX_DayBookingInst_Auto))
        | "1" -> (Some (FIX_DayBookingInst_SpeakWithOrderInitiatorBeforeBooking))
        | "2" -> (Some (FIX_DayBookingInst_Accumulate))
        | _ -> (None)
    )
;;

let parse_DeleteReason (str)  =
    (match str with
        | "1" -> (Some (FIX_DeleteReason_Error))
        | "0" -> (Some (FIX_DeleteReason_Cancellation))
        | _ -> (None)
    )
;;

let parse_DeliveryForm (str)  =
    (match str with
        | "1" -> (Some (FIX_DeliveryForm_BookEntry))
        | "2" -> (Some (FIX_DeliveryForm_Bearer))
        | _ -> (None)
    )
;;

let parse_DeliveryType (str)  =
    (match str with
        | "2" -> (Some (FIX_DeliveryType_TriParty))
        | "0" -> (Some (FIX_DeliveryType_VersusPayment))
        | "3" -> (Some (FIX_DeliveryType_HoldInCustody))
        | "1" -> (Some (FIX_DeliveryType_Free))
        | _ -> (None)
    )
;;

let parse_DiscretionInst (str)  =
    (match str with
        | "2" -> (Some (FIX_DiscretionInst_RelatedToPrimaryPrice))
        | "4" -> (Some (FIX_DiscretionInst_RelatedToMidpointPrice))
        | "5" -> (Some (FIX_DiscretionInst_RelatedToLastTradePrice))
        | "0" -> (Some (FIX_DiscretionInst_RelatedToDisplayedPrice))
        | "6" -> (Some (FIX_DiscretionInst_RelatedToVWAP))
        | "1" -> (Some (FIX_DiscretionInst_RelatedToMarketPrice))
        | "3" -> (Some (FIX_DiscretionInst_RelatedToLocalPrimaryPrice))
        | _ -> (None)
    )
;;

let parse_DiscretionLimitType (str)  =
    (match str with
        | "1" -> (Some (FIX_DiscretionLimitType_Strict))
        | "0" -> (Some (FIX_DiscretionLimitType_OrBetter))
        | "2" -> (Some (FIX_DiscretionLimitType_OrWorse))
        | _ -> (None)
    )
;;

let parse_DiscretionMoveType (str)  =
    (match str with
        | "1" -> (Some (FIX_DiscretionMoveType_Fixed))
        | "0" -> (Some (FIX_DiscretionMoveType_Floating))
        | _ -> (None)
    )
;;

let parse_DiscretionOffsetType (str)  =
    (match str with
        | "1" -> (Some (FIX_DiscretionOffsetType_BasisPoints))
        | "0" -> (Some (FIX_DiscretionOffsetType_Price))
        | "2" -> (Some (FIX_DiscretionOffsetType_Ticks))
        | "3" -> (Some (FIX_DiscretionOffsetType_PriceTier))
        | _ -> (None)
    )
;;

let parse_DiscretionRoundDirection (str)  =
    (match str with
        | "1" -> (Some (FIX_DiscretionRoundDirection_MoreAggressive))
        | "2" -> (Some (FIX_DiscretionRoundDirection_MorePassive))
        | _ -> (None)
    )
;;

let parse_DiscretionScope (str)  =
    (match str with
        | "2" -> (Some (FIX_DiscretionScope_National))
        | "1" -> (Some (FIX_DiscretionScope_Local))
        | "4" -> (Some (FIX_DiscretionScope_NationalExcludingLocal))
        | "3" -> (Some (FIX_DiscretionScope_Global))
        | _ -> (None)
    )
;;

let parse_DistribPaymentMethod (str)  =
    (match str with
        | "1" -> (Some (FIX_DistribPaymentMethod_CREST))
        | "2" -> (Some (FIX_DistribPaymentMethod_NSCC))
        | "11" -> (Some (FIX_DistribPaymentMethod_HighValueClearingSystemHVACS))
        | "8" -> (Some (FIX_DistribPaymentMethod_DirectCredit))
        | "12" -> (Some (FIX_DistribPaymentMethod_ReinvestInFund))
        | "9" -> (Some (FIX_DistribPaymentMethod_ACHCredit))
        | "4" -> (Some (FIX_DistribPaymentMethod_Clearstream))
        | "10" -> (Some (FIX_DistribPaymentMethod_BPAY))
        | "5" -> (Some (FIX_DistribPaymentMethod_Cheque))
        | "3" -> (Some (FIX_DistribPaymentMethod_Euroclear))
        | "7" -> (Some (FIX_DistribPaymentMethod_FedWire))
        | "6" -> (Some (FIX_DistribPaymentMethod_TelegraphicTransfer))
        | _ -> (None)
    )
;;

let parse_DlvyInstType (str)  =
    (match str with
        | "C" -> (Some (FIX_DlvyInstType_Cash))
        | "S" -> (Some (FIX_DlvyInstType_Securities))
        | _ -> (None)
    )
;;

let parse_DueToRelated (str)  =
    (match str with
        | "Y" -> (Some (FIX_DueToRelated_RelatedToSecurityHalt))
        | "N" -> (Some (FIX_DueToRelated_NotRelatedToSecurityHalt))
        | _ -> (None)
    )
;;

let parse_EmailType (str)  =
    (match str with
        | "1" -> (Some (FIX_EmailType_Reply))
        | "2" -> (Some (FIX_EmailType_AdminReply))
        | "0" -> (Some (FIX_EmailType_New))
        | _ -> (None)
    )
;;

let parse_EventType (str)  =
    (match str with
        | "99" -> (Some (FIX_EventType_Other))
        | "2" -> (Some (FIX_EventType_Call))
        | "3" -> (Some (FIX_EventType_Tender))
        | "1" -> (Some (FIX_EventType_Put))
        | "4" -> (Some (FIX_EventType_SinkingFundCall))
        | _ -> (None)
    )
;;

let parse_ExchangeForPhysical (str)  =
    (match str with
        | "Y" -> (Some (FIX_ExchangeForPhysical_True))
        | "N" -> (Some (FIX_ExchangeForPhysical_False))
        | _ -> (None)
    )
;;

let parse_inner_ExecInst (str)  =
    (match str with
        | "6" -> (Some (FIX_ExecInst_ParticipateDoNotInitiate))
        | "G" -> (Some (FIX_ExecInst_AllOrNone))
        | "C" -> (Some (FIX_ExecInst_CallFirst))
        | "D" -> (Some (FIX_ExecInst_PercentOfVolume))
        | "I" -> (Some (FIX_ExecInst_InstitutionsOnly))
        | "A" -> (Some (FIX_ExecInst_NoCross))
        | "4" -> (Some (FIX_ExecInst_OverTheDay))
        | "E" -> (Some (FIX_ExecInst_DoNotIncrease))
        | "O" -> (Some (FIX_ExecInst_OpeningPeg))
        | "Y" -> (Some (FIX_ExecInst_TryToStop))
        | "V" -> (Some (FIX_ExecInst_Netting))
        | "9" -> (Some (FIX_ExecInst_StayOnBidSide))
        | "5" -> (Some (FIX_ExecInst_Held))
        | "B" -> (Some (FIX_ExecInst_OKToCross))
        | "U" -> (Some (FIX_ExecInst_CustomerDisplayInstruction))
        | "3" -> (Some (FIX_ExecInst_GoAlong))
        | "F" -> (Some (FIX_ExecInst_DoNotReduce))
        | "0" -> (Some (FIX_ExecInst_StayOnOfferSide))
        | "d" -> (Some (FIX_ExecInst_PegToLimitPrice))
        | "8" -> (Some (FIX_ExecInst_TryToScale))
        | "H" -> (Some (FIX_ExecInst_ReinstateOnSystemFailure))
        | "Z" -> (Some (FIX_ExecInst_CancelIfNotBest))
        | "M" -> (Some (FIX_ExecInst_MidPricePeg))
        | "e" -> (Some (FIX_ExecInst_WorkToTargetStrategy))
        | "W" -> (Some (FIX_ExecInst_PegToVWAP))
        | "X" -> (Some (FIX_ExecInst_TradeAlong))
        | "b" -> (Some (FIX_ExecInst_StrictLimit))
        | "S" -> (Some (FIX_ExecInst_Suspend))
        | "L" -> (Some (FIX_ExecInst_LastPeg))
        | "N" -> (Some (FIX_ExecInst_NonNegotiable))
        | "1" -> (Some (FIX_ExecInst_NotHeld))
        | "K" -> (Some (FIX_ExecInst_CancelOnTradingHalt))
        | "Q" -> (Some (FIX_ExecInst_CancelOnSystemFailure))
        | "c" -> (Some (FIX_ExecInst_IgnorePriceValidityChecks))
        | "2" -> (Some (FIX_ExecInst_Work))
        | "J" -> (Some (FIX_ExecInst_ReinstateOnTradingHalt))
        | "R" -> (Some (FIX_ExecInst_PrimaryPeg))
        | "a" -> (Some (FIX_ExecInst_TrailingStopPeg))
        | "P" -> (Some (FIX_ExecInst_MarketPeg))
        | "7" -> (Some (FIX_ExecInst_StrictScale))
        | _ -> (None)
    )
;;

let rec parse_ExecInst_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_ExecInst h with
            | None -> (parse_ExecInst_filter t)
            | Some x -> (x :: (parse_ExecInst_filter t))
        )
        )
    )
;;

let parse_ExecInst (str)  =
    let x = split_to_list str ' ' in
    Some (parse_ExecInst_filter x)
;;

let parse_ExecPriceType (str)  =
    (match str with
        | "E" -> (Some (FIX_ExecPriceType_CreationPricePlusAdjustmentAmount))
        | "P" -> (Some (FIX_ExecPriceType_OfferPriceMinusAdjustmentPercent))
        | "B" -> (Some (FIX_ExecPriceType_BidPrice))
        | "O" -> (Some (FIX_ExecPriceType_OfferPrice))
        | "Q" -> (Some (FIX_ExecPriceType_OfferPriceMinusAdjustmentAmount))
        | "S" -> (Some (FIX_ExecPriceType_SinglePrice))
        | "C" -> (Some (FIX_ExecPriceType_CreationPrice))
        | "D" -> (Some (FIX_ExecPriceType_CreationPricePlusAdjustmentPercent))
        | _ -> (None)
    )
;;

let parse_ExecRestatementReason (str)  =
    (match str with
        | "99" -> (Some (FIX_ExecRestatementReason_Other))
        | "3" -> (Some (FIX_ExecRestatementReason_RepricingOfOrder))
        | "0" -> (Some (FIX_ExecRestatementReason_GTCorporateAction))
        | "2" -> (Some (FIX_ExecRestatementReason_VerbalChange))
        | "10" -> (Some (FIX_ExecRestatementReason_WarehouseRecap))
        | "6" -> (Some (FIX_ExecRestatementReason_CancelOnTradingHalt))
        | "7" -> (Some (FIX_ExecRestatementReason_CancelOnSystemFailure))
        | "1" -> (Some (FIX_ExecRestatementReason_GTRenewal))
        | "8" -> (Some (FIX_ExecRestatementReason_Market))
        | "9" -> (Some (FIX_ExecRestatementReason_Canceled))
        | "4" -> (Some (FIX_ExecRestatementReason_BrokerOption))
        | "5" -> (Some (FIX_ExecRestatementReason_PartialDeclineOfOrderQty))
        | _ -> (None)
    )
;;

let parse_ExecType (str)  =
    (match str with
        | "6" -> (Some (FIX_ExecType_PendingCancel))
        | "7" -> (Some (FIX_ExecType_Stopped))
        | "A" -> (Some (FIX_ExecType_PendingNew))
        | "D" -> (Some (FIX_ExecType_Restated))
        | "8" -> (Some (FIX_ExecType_Rejected))
        | "B" -> (Some (FIX_ExecType_Calculated))
        | "G" -> (Some (FIX_ExecType_TradeCorrect))
        | "H" -> (Some (FIX_ExecType_TradeCancel))
        | "C" -> (Some (FIX_ExecType_Expired))
        | "I" -> (Some (FIX_ExecType_OrderStatus))
        | "F" -> (Some (FIX_ExecType_Trade))
        | "4" -> (Some (FIX_ExecType_Canceled))
        | "5" -> (Some (FIX_ExecType_Replaced))
        | "E" -> (Some (FIX_ExecType_PendingReplace))
        | "3" -> (Some (FIX_ExecType_DoneForDay))
        | "9" -> (Some (FIX_ExecType_Suspended))
        | "0" -> (Some (FIX_ExecType_New))
        | _ -> (None)
    )
;;

let parse_ExerciseMethod (str)  =
    (match str with
        | "M" -> (Some (FIX_ExerciseMethod_Manual))
        | "A" -> (Some (FIX_ExerciseMethod_Automatic))
        | _ -> (None)
    )
;;

let parse_ExpirationCycle (str)  =
    (match str with
        | "0" -> (Some (FIX_ExpirationCycle_ExpireOnTradingSessionClose))
        | "1" -> (Some (FIX_ExpirationCycle_ExpireOnTradingSessionOpen))
        | _ -> (None)
    )
;;

let parse_inner_FinancialStatus (str)  =
    (match str with
        | "2" -> (Some (FIX_FinancialStatus_PendingDelisting))
        | "1" -> (Some (FIX_FinancialStatus_Bankrupt))
        | _ -> (None)
    )
;;

let rec parse_FinancialStatus_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_FinancialStatus h with
            | None -> (parse_FinancialStatus_filter t)
            | Some x -> (x :: (parse_FinancialStatus_filter t))
        )
        )
    )
;;

let parse_FinancialStatus (str)  =
    let x = split_to_list str ' ' in
    Some (parse_FinancialStatus_filter x)
;;

let parse_ForexReq (str)  =
    (match str with
        | "N" -> (Some (FIX_ForexReq_DoNotExecuteForexAfterSecurityTrade))
        | "Y" -> (Some (FIX_ForexReq_ExecuteForexAfterSecurityTrade))
        | _ -> (None)
    )
;;

let parse_FundRenewWaiv (str)  =
    (match str with
        | "N" -> (Some (FIX_FundRenewWaiv_No))
        | "Y" -> (Some (FIX_FundRenewWaiv_Yes))
        | _ -> (None)
    )
;;

let parse_GTBookingInst (str)  =
    (match str with
        | "2" -> (Some (FIX_GTBookingInst_AccumulateUntilVerballyNotifiedOtherwise))
        | "1" -> (Some (FIX_GTBookingInst_AccumulateUntilFilledOrExpired))
        | "0" -> (Some (FIX_GTBookingInst_BookOutAllTradesOnDayOfExecution))
        | _ -> (None)
    )
;;

let parse_HaltReason (str)  =
    (match str with
        | "I" -> (Some (FIX_HaltReason_OrderImbalance))
        | "M" -> (Some (FIX_HaltReason_AdditionalInformation))
        | "P" -> (Some (FIX_HaltReason_NewsPending))
        | "E" -> (Some (FIX_HaltReason_OrderInflux))
        | "X" -> (Some (FIX_HaltReason_EquipmentChangeover))
        | "D" -> (Some (FIX_HaltReason_NewsDissemination))
        | _ -> (None)
    )
;;

let parse_HandlInst (str)  =
    (match str with
        | "3" -> (Some (FIX_HandlInst_ManualOrder))
        | "2" -> (Some (FIX_HandlInst_AutomatedExecutionInterventionOK))
        | "1" -> (Some (FIX_HandlInst_AutomatedExecutionNoIntervention))
        | _ -> (None)
    )
;;

let parse_IOINaturalFlag (str)  =
    (match str with
        | "Y" -> (Some (FIX_IOINaturalFlag_Natural))
        | "N" -> (Some (FIX_IOINaturalFlag_NotNatural))
        | _ -> (None)
    )
;;

let parse_IOIQltyInd (str)  =
    (match str with
        | "L" -> (Some (FIX_IOIQltyInd_Low))
        | "H" -> (Some (FIX_IOIQltyInd_High))
        | "M" -> (Some (FIX_IOIQltyInd_Medium))
        | _ -> (None)
    )
;;

let parse_IOIQty (str)  =
    (match str with
        | "S" -> (Some (FIX_IOIQty_Small))
        | "L" -> (Some (FIX_IOIQty_Large))
        | "M" -> (Some (FIX_IOIQty_Medium))
        | _ -> (None)
    )
;;

let parse_IOIQualifier (str)  =
    (match str with
        | "A" -> (Some (FIX_IOIQualifier_AllOrNone))
        | "P" -> (Some (FIX_IOIQualifier_TakingAPosition))
        | "W" -> (Some (FIX_IOIQualifier_Indication))
        | "Z" -> (Some (FIX_IOIQualifier_PreOpen))
        | "D" -> (Some (FIX_IOIQualifier_VWAP))
        | "O" -> (Some (FIX_IOIQualifier_AtTheOpen))
        | "V" -> (Some (FIX_IOIQualifier_Versus))
        | "Y" -> (Some (FIX_IOIQualifier_AtTheMidpoint))
        | "R" -> (Some (FIX_IOIQualifier_ReadyToTrade))
        | "S" -> (Some (FIX_IOIQualifier_PortfolioShown))
        | "T" -> (Some (FIX_IOIQualifier_ThroughTheDay))
        | "M" -> (Some (FIX_IOIQualifier_MoreBehind))
        | "B" -> (Some (FIX_IOIQualifier_MarketOnClose))
        | "C" -> (Some (FIX_IOIQualifier_AtTheClose))
        | "I" -> (Some (FIX_IOIQualifier_InTouchWith))
        | "Q" -> (Some (FIX_IOIQualifier_AtTheMarket))
        | "L" -> (Some (FIX_IOIQualifier_Limit))
        | "X" -> (Some (FIX_IOIQualifier_CrossingOpportunity))
        | _ -> (None)
    )
;;

let parse_IOITransType (str)  =
    (match str with
        | "C" -> (Some (FIX_IOITransType_Cancel))
        | "R" -> (Some (FIX_IOITransType_Replace))
        | "N" -> (Some (FIX_IOITransType_New))
        | _ -> (None)
    )
;;

let parse_InViewOfCommon (str)  =
    (match str with
        | "Y" -> (Some (FIX_InViewOfCommon_HaltWasDueToCommonStockBeingHalted))
        | "N" -> (Some (FIX_InViewOfCommon_HaltWasNotRelatedToAHaltOfTheCommonStock))
        | _ -> (None)
    )
;;

let parse_IncTaxInd (str)  =
    (match str with
        | "1" -> (Some (FIX_IncTaxInd_Net))
        | "2" -> (Some (FIX_IncTaxInd_Gross))
        | _ -> (None)
    )
;;

let parse_InstrAttribType (str)  =
    (match str with
        | "11" -> (Some (FIX_InstrAttribType_Callable))
        | "19" -> (Some (FIX_InstrAttribType_SubjectToAlternativeMinimumTax))
        | "8" -> (Some (FIX_InstrAttribType_CouponPeriod))
        | "13" -> (Some (FIX_InstrAttribType_EscrowedToRedemptionDate))
        | "3" -> (Some (FIX_InstrAttribType_InterestBearing))
        | "10" -> (Some (FIX_InstrAttribType_OriginalIssueDiscount))
        | "5" -> (Some (FIX_InstrAttribType_VariableRate))
        | "15" -> (Some (FIX_InstrAttribType_InDefault))
        | "99" -> (Some (FIX_InstrAttribType_Text))
        | "14" -> (Some (FIX_InstrAttribType_PreRefunded))
        | "6" -> (Some (FIX_InstrAttribType_LessFeeForPut))
        | "9" -> (Some (FIX_InstrAttribType_When))
        | "4" -> (Some (FIX_InstrAttribType_NoPeriodicPayments))
        | "16" -> (Some (FIX_InstrAttribType_Unrated))
        | "21" -> (Some (FIX_InstrAttribType_CallableBelowMaturityValue))
        | "20" -> (Some (FIX_InstrAttribType_OriginalIssueDiscountPrice))
        | "1" -> (Some (FIX_InstrAttribType_Flat))
        | "22" -> (Some (FIX_InstrAttribType_CallableWithoutNotice))
        | "7" -> (Some (FIX_InstrAttribType_SteppedCoupon))
        | "18" -> (Some (FIX_InstrAttribType_Indexed))
        | "2" -> (Some (FIX_InstrAttribType_ZeroCoupon))
        | "12" -> (Some (FIX_InstrAttribType_EscrowedToMaturity))
        | "17" -> (Some (FIX_InstrAttribType_Taxable))
        | _ -> (None)
    )
;;

let parse_LastCapacity (str)  =
    (match str with
        | "1" -> (Some (FIX_LastCapacity_Agent))
        | "2" -> (Some (FIX_LastCapacity_CrossAsAgent))
        | "4" -> (Some (FIX_LastCapacity_Principal))
        | "3" -> (Some (FIX_LastCapacity_CrossAsPrincipal))
        | _ -> (None)
    )
;;

let parse_LastFragment (str)  =
    (match str with
        | "Y" -> (Some (FIX_LastFragment_LastMessage))
        | "N" -> (Some (FIX_LastFragment_NotLastMessage))
        | _ -> (None)
    )
;;

let parse_LastLiquidityInd (str)  =
    (match str with
        | "3" -> (Some (FIX_LastLiquidityInd_LiquidityRoutedOut))
        | "1" -> (Some (FIX_LastLiquidityInd_AddedLiquidity))
        | "2" -> (Some (FIX_LastLiquidityInd_RemovedLiquidity))
        | _ -> (None)
    )
;;

let parse_LegSwapType (str)  =
    (match str with
        | "2" -> (Some (FIX_LegSwapType_ModifiedDuration))
        | "5" -> (Some (FIX_LegSwapType_Proceeds))
        | "1" -> (Some (FIX_LegSwapType_ParForPar))
        | "4" -> (Some (FIX_LegSwapType_Risk))
        | _ -> (None)
    )
;;

let parse_LegalConfirm (str)  =
    (match str with
        | "N" -> (Some (FIX_LegalConfirm_DoesNotConsituteALegalConfirm))
        | "Y" -> (Some (FIX_LegalConfirm_LegalConfirm))
        | _ -> (None)
    )
;;

let parse_LiquidityIndType (str)  =
    (match str with
        | "4" -> (Some (FIX_LiquidityIndType_Other))
        | "3" -> (Some (FIX_LiquidityIndType_NormalMarketSize))
        | "2" -> (Some (FIX_LiquidityIndType_TwentyDayMovingAverage))
        | "1" -> (Some (FIX_LiquidityIndType_FiveDayMovingAverage))
        | _ -> (None)
    )
;;

let parse_ListExecInstType (str)  =
    (match str with
        | "3" -> (Some (FIX_ListExecInstType_SellDriven))
        | "1" -> (Some (FIX_ListExecInstType_Immediate))
        | "4" -> (Some (FIX_ListExecInstType_BuyDrivenCashTopUp))
        | "2" -> (Some (FIX_ListExecInstType_WaitForInstruction))
        | "5" -> (Some (FIX_ListExecInstType_BuyDrivenCashWithdraw))
        | _ -> (None)
    )
;;

let parse_ListOrderStatus (str)  =
    (match str with
        | "6" -> (Some (FIX_ListOrderStatus_AllDone))
        | "7" -> (Some (FIX_ListOrderStatus_Reject))
        | "4" -> (Some (FIX_ListOrderStatus_Cancelling))
        | "1" -> (Some (FIX_ListOrderStatus_InBiddingProcess))
        | "3" -> (Some (FIX_ListOrderStatus_Executing))
        | "5" -> (Some (FIX_ListOrderStatus_Alert))
        | "2" -> (Some (FIX_ListOrderStatus_ReceivedForExecution))
        | _ -> (None)
    )
;;

let parse_ListStatusType (str)  =
    (match str with
        | "5" -> (Some (FIX_ListStatusType_AllDone))
        | "2" -> (Some (FIX_ListStatusType_Response))
        | "4" -> (Some (FIX_ListStatusType_ExecStarted))
        | "3" -> (Some (FIX_ListStatusType_Timed))
        | "1" -> (Some (FIX_ListStatusType_Ack))
        | "6" -> (Some (FIX_ListStatusType_Alert))
        | _ -> (None)
    )
;;

let parse_LocateReqd (str)  =
    (match str with
        | "N" -> (Some (FIX_LocateReqd_No))
        | "Y" -> (Some (FIX_LocateReqd_Yes))
        | _ -> (None)
    )
;;

let parse_MDEntryType (str)  =
    (match str with
        | "C" -> (Some (FIX_MDEntryType_OpenInterest))
        | "5" -> (Some (FIX_MDEntryType_ClosingPrice))
        | "3" -> (Some (FIX_MDEntryType_IndexValue))
        | "1" -> (Some (FIX_MDEntryType_Offer))
        | "6" -> (Some (FIX_MDEntryType_SettlementPrice))
        | "9" -> (Some (FIX_MDEntryType_TradingSessionVWAPPrice))
        | "2" -> (Some (FIX_MDEntryType_Trade))
        | "7" -> (Some (FIX_MDEntryType_TradingSessionHighPrice))
        | "4" -> (Some (FIX_MDEntryType_OpeningPrice))
        | "B" -> (Some (FIX_MDEntryType_TradeVolume))
        | "A" -> (Some (FIX_MDEntryType_Imbalance))
        | "0" -> (Some (FIX_MDEntryType_Bid))
        | "8" -> (Some (FIX_MDEntryType_TradingSessionLowPrice))
        | _ -> (None)
    )
;;

let parse_MDImplicitDelete (str)  =
    (match str with
        | "N" -> (Some (FIX_MDImplicitDelete_No))
        | "Y" -> (Some (FIX_MDImplicitDelete_Yes))
        | _ -> (None)
    )
;;

let parse_MDReqRejReason (str)  =
    (match str with
        | "7" -> (Some (FIX_MDReqRejReason_UnsupportedAggregatedBook))
        | "6" -> (Some (FIX_MDReqRejReason_UnsupportedMDUpdateType))
        | "C" -> (Some (FIX_MDReqRejReason_UnsupportedMDImplicitDelete))
        | "3" -> (Some (FIX_MDReqRejReason_InsufficientPermissions))
        | "A" -> (Some (FIX_MDReqRejReason_UnsupportedScope))
        | "9" -> (Some (FIX_MDReqRejReason_UnsupportedTradingSessionID))
        | "4" -> (Some (FIX_MDReqRejReason_UnsupportedSubscriptionRequestType))
        | "8" -> (Some (FIX_MDReqRejReason_UnsupportedMDEntryType))
        | "2" -> (Some (FIX_MDReqRejReason_InsufficientBandwidth))
        | "1" -> (Some (FIX_MDReqRejReason_DuplicateMDReqID))
        | "5" -> (Some (FIX_MDReqRejReason_UnsupportedMarketDepth))
        | "B" -> (Some (FIX_MDReqRejReason_UnsupportedOpenCloseSettleFlag))
        | "0" -> (Some (FIX_MDReqRejReason_UnknownSymbol))
        | _ -> (None)
    )
;;

let parse_MDUpdateAction (str)  =
    (match str with
        | "2" -> (Some (FIX_MDUpdateAction_Delete))
        | "1" -> (Some (FIX_MDUpdateAction_Change))
        | "0" -> (Some (FIX_MDUpdateAction_New))
        | _ -> (None)
    )
;;

let parse_MDUpdateType (str)  =
    (match str with
        | "0" -> (Some (FIX_MDUpdateType_FullRefresh))
        | "1" -> (Some (FIX_MDUpdateType_IncrementalRefresh))
        | _ -> (None)
    )
;;

let parse_MassCancelRejectReason (str)  =
    (match str with
        | "99" -> (Some (FIX_MassCancelRejectReason_Other))
        | "0" -> (Some (FIX_MassCancelRejectReason_MassCancelNotSupported))
        | "4" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownCFICode))
        | "5" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownSecurityType))
        | "3" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownProduct))
        | "2" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnkownUnderlyingSecurity))
        | "6" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownTradingSession))
        | "1" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownSecurity))
        | _ -> (None)
    )
;;

let parse_MassCancelRequestType (str)  =
    (match str with
        | "5" -> (Some (FIX_MassCancelRequestType_CancelOrdersForASecurityType))
        | "3" -> (Some (FIX_MassCancelRequestType_CancelOrdersForAProduct))
        | "1" -> (Some (FIX_MassCancelRequestType_CancelOrdersForASecurity))
        | "2" -> (Some (FIX_MassCancelRequestType_CancelOrdersForAnUnderlyingSecurity))
        | "7" -> (Some (FIX_MassCancelRequestType_CancelAllOrders))
        | "4" -> (Some (FIX_MassCancelRequestType_CancelOrdersForACFICode))
        | "6" -> (Some (FIX_MassCancelRequestType_CancelOrdersForATradingSession))
        | _ -> (None)
    )
;;

let parse_MassCancelResponse (str)  =
    (match str with
        | "5" -> (Some (FIX_MassCancelResponse_CancelOrdersForASecurityType))
        | "3" -> (Some (FIX_MassCancelResponse_CancelOrdersForAProduct))
        | "1" -> (Some (FIX_MassCancelResponse_CancelOrdersForASecurity))
        | "2" -> (Some (FIX_MassCancelResponse_CancelOrdersForAnUnderlyingSecurity))
        | "0" -> (Some (FIX_MassCancelResponse_CancelRequestRejected))
        | "7" -> (Some (FIX_MassCancelResponse_CancelAllOrders))
        | "4" -> (Some (FIX_MassCancelResponse_CancelOrdersForACFICode))
        | "6" -> (Some (FIX_MassCancelResponse_CancelOrdersForATradingSession))
        | _ -> (None)
    )
;;

let parse_MassStatusReqType (str)  =
    (match str with
        | "1" -> (Some (FIX_MassStatusReqType_StatusForOrdersForASecurity))
        | "6" -> (Some (FIX_MassStatusReqType_StatusForOrdersForATradingSession))
        | "8" -> (Some (FIX_MassStatusReqType_StatusForOrdersForAPartyID))
        | "3" -> (Some (FIX_MassStatusReqType_StatusForOrdersForAProduct))
        | "2" -> (Some (FIX_MassStatusReqType_StatusForOrdersForAnUnderlyingSecurity))
        | "7" -> (Some (FIX_MassStatusReqType_StatusForAllOrders))
        | "5" -> (Some (FIX_MassStatusReqType_StatusForOrdersForASecurityType))
        | "4" -> (Some (FIX_MassStatusReqType_StatusForOrdersForACFICode))
        | _ -> (None)
    )
;;

let parse_MatchStatus (str)  =
    (match str with
        | "0" -> (Some (FIX_MatchStatus_Compared))
        | "1" -> (Some (FIX_MatchStatus_Uncompared))
        | "2" -> (Some (FIX_MatchStatus_AdvisoryOrAlert))
        | _ -> (None)
    )
;;

let parse_MatchType (str)  =
    (match str with
        | "A4" -> (Some (FIX_MatchType_ExactMatchPlus2Badges))
        | "A3" -> (Some (FIX_MatchType_ExactMatchPlus2BadgesExecTime))
        | "S4" -> (Some (FIX_MatchType_A4ExactMatchSummarizedQuantity))
        | "S2" -> (Some (FIX_MatchType_A2ExactMatchSummarizedQuantity))
        | "MT" -> (Some (FIX_MatchType_OCSLockedIn))
        | "M6" -> (Some (FIX_MatchType_ACTM6Match))
        | "A5" -> (Some (FIX_MatchType_ExactMatchPlusExecTime))
        | "M3" -> (Some (FIX_MatchType_ACTAcceptedTrade))
        | "M1" -> (Some (FIX_MatchType_ExactMatchMinusBadgesTimes))
        | "A2" -> (Some (FIX_MatchType_ExactMatchPlus4Badges))
        | "S1" -> (Some (FIX_MatchType_A1ExactMatchSummarizedQuantity))
        | "M2" -> (Some (FIX_MatchType_SummarizedMatchMinusBadgesTimes))
        | "M5" -> (Some (FIX_MatchType_ACTDefaultAfterM2))
        | "A1" -> (Some (FIX_MatchType_ExactMatchPlus4BadgesExecTime))
        | "S5" -> (Some (FIX_MatchType_A5ExactMatchSummarizedQuantity))
        | "S3" -> (Some (FIX_MatchType_A3ExactMatchSummarizedQuantity))
        | "M4" -> (Some (FIX_MatchType_ACTDefaultTrade))
        | "AQ" -> (Some (FIX_MatchType_StampedAdvisoriesOrSpecialistAccepts))
        | _ -> (None)
    )
;;

let parse_MessageEncoding (str)  =
    (match str with
        | "ISO-2022-JP" -> (Some (FIX_MessageEncoding_ISO2022JP))
        | "UTF-8" -> (Some (FIX_MessageEncoding_UTF8))
        | "Shift_JIS" -> (Some (FIX_MessageEncoding_ShiftJIS))
        | "EUC-JP" -> (Some (FIX_MessageEncoding_EUCJP))
        | _ -> (None)
    )
;;

let parse_MiscFeeBasis (str)  =
    (match str with
        | "2" -> (Some (FIX_MiscFeeBasis_Percentage))
        | "1" -> (Some (FIX_MiscFeeBasis_PerUnit))
        | "0" -> (Some (FIX_MiscFeeBasis_Absolute))
        | _ -> (None)
    )
;;

let parse_MiscFeeType (str)  =
    (match str with
        | "7" -> (Some (FIX_MiscFeeType_Other))
        | "12" -> (Some (FIX_MiscFeeType_Agent))
        | "3" -> (Some (FIX_MiscFeeType_LocalCommission))
        | "4" -> (Some (FIX_MiscFeeType_ExchangeFees))
        | "5" -> (Some (FIX_MiscFeeType_Stamp))
        | "8" -> (Some (FIX_MiscFeeType_Markup))
        | "10" -> (Some (FIX_MiscFeeType_PerTransaction))
        | "1" -> (Some (FIX_MiscFeeType_Regulatory))
        | "2" -> (Some (FIX_MiscFeeType_Tax))
        | "9" -> (Some (FIX_MiscFeeType_ConsumptionTax))
        | "11" -> (Some (FIX_MiscFeeType_Conversion))
        | "6" -> (Some (FIX_MiscFeeType_Levy))
        | _ -> (None)
    )
;;

let parse_MoneyLaunderingStatus (str)  =
    (match str with
        | "1" -> (Some (FIX_MoneyLaunderingStatus_ExemptBelowLimit))
        | "2" -> (Some (FIX_MoneyLaunderingStatus_ExemptMoneyType))
        | "3" -> (Some (FIX_MoneyLaunderingStatus_ExemptAuthorised))
        | "Y" -> (Some (FIX_MoneyLaunderingStatus_Passed))
        | "N" -> (Some (FIX_MoneyLaunderingStatus_NotChecked))
        | _ -> (None)
    )
;;

let parse_MsgDirection (str)  =
    (match str with
        | "S" -> (Some (FIX_MsgDirection_Send))
        | "R" -> (Some (FIX_MsgDirection_Receive))
        | _ -> (None)
    )
;;

let parse_MultiLegReportingType (str)  =
    (match str with
        | "1" -> (Some (FIX_MultiLegReportingType_SingleSecurity))
        | "2" -> (Some (FIX_MultiLegReportingType_IndividualLegOfAMultiLegSecurity))
        | "3" -> (Some (FIX_MultiLegReportingType_MultiLegSecurity))
        | _ -> (None)
    )
;;

let parse_MultiLegRptTypeReq (str)  =
    (match str with
        | "2" -> (Some (FIX_MultiLegRptTypeReq_ReportByInstrumentLegsOnly))
        | "0" -> (Some (FIX_MultiLegRptTypeReq_ReportByMulitlegSecurityOnly))
        | "1" -> (Some (FIX_MultiLegRptTypeReq_ReportByMultilegSecurityAndInstrumentLegs))
        | _ -> (None)
    )
;;

let parse_NetGrossInd (str)  =
    (match str with
        | "1" -> (Some (FIX_NetGrossInd_Net))
        | "2" -> (Some (FIX_NetGrossInd_Gross))
        | _ -> (None)
    )
;;

let parse_NetworkRequestType (str)  =
    (match str with
        | "1" -> (Some (FIX_NetworkRequestType_Snapshot))
        | "4" -> (Some (FIX_NetworkRequestType_StopSubscribing))
        | "2" -> (Some (FIX_NetworkRequestType_Subscribe))
        | "8" -> (Some (FIX_NetworkRequestType_LevelOfDetail))
        | _ -> (None)
    )
;;

let parse_NetworkStatusResponseType (str)  =
    (match str with
        | "2" -> (Some (FIX_NetworkStatusResponseType_IncrementalUpdate))
        | "1" -> (Some (FIX_NetworkStatusResponseType_Full))
        | _ -> (None)
    )
;;

let parse_NoSides (str)  =
    (match str with
        | "1" -> (Some (FIX_NoSides_OneSide))
        | "2" -> (Some (FIX_NoSides_BothSides))
        | _ -> (None)
    )
;;

let parse_NotifyBrokerOfCredit (str)  =
    (match str with
        | "Y" -> (Some (FIX_NotifyBrokerOfCredit_DetailsShouldBeCommunicated))
        | "N" -> (Some (FIX_NotifyBrokerOfCredit_DetailsShouldNotBeCommunicated))
        | _ -> (None)
    )
;;

let parse_OddLot (str)  =
    (match str with
        | "N" -> (Some (FIX_OddLot_TreatAsRoundLot))
        | "Y" -> (Some (FIX_OddLot_TreatAsOddLot))
        | _ -> (None)
    )
;;

let parse_inner_OpenCloseSettlFlag (str)  =
    (match str with
        | "2" -> (Some (FIX_OpenCloseSettlFlag_DeliverySettlementEntry))
        | "4" -> (Some (FIX_OpenCloseSettlFlag_EntryFromPreviousBusinessDay))
        | "0" -> (Some (FIX_OpenCloseSettlFlag_DailyOpen))
        | "5" -> (Some (FIX_OpenCloseSettlFlag_TheoreticalPriceValue))
        | "3" -> (Some (FIX_OpenCloseSettlFlag_ExpectedEntry))
        | "1" -> (Some (FIX_OpenCloseSettlFlag_SessionOpen))
        | _ -> (None)
    )
;;

let rec parse_OpenCloseSettlFlag_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_OpenCloseSettlFlag h with
            | None -> (parse_OpenCloseSettlFlag_filter t)
            | Some x -> (x :: (parse_OpenCloseSettlFlag_filter t))
        )
        )
    )
;;

let parse_OpenCloseSettlFlag (str)  =
    let x = split_to_list str ' ' in
    Some (parse_OpenCloseSettlFlag_filter x)
;;

let parse_OrdRejReason (str)  =
    (match str with
        | "6" -> (Some (FIX_OrdRejReason_DuplicateOrder))
        | "99" -> (Some (FIX_OrdRejReason_Other))
        | "5" -> (Some (FIX_OrdRejReason_UnknownOrder))
        | "4" -> (Some (FIX_OrdRejReason_TooLateToEnter))
        | "3" -> (Some (FIX_OrdRejReason_OrderExceedsLimit))
        | "15" -> (Some (FIX_OrdRejReason_UnknownAccount))
        | "0" -> (Some (FIX_OrdRejReason_BrokerCredit))
        | "11" -> (Some (FIX_OrdRejReason_UnsupportedOrderCharacteristic))
        | "7" -> (Some (FIX_OrdRejReason_DuplicateOfAVerballyCommunicatedOrder))
        | "13" -> (Some (FIX_OrdRejReason_IncorrectQuantity))
        | "9" -> (Some (FIX_OrdRejReason_TradeAlongRequired))
        | "8" -> (Some (FIX_OrdRejReason_StaleOrder))
        | "10" -> (Some (FIX_OrdRejReason_InvalidInvestorID))
        | "2" -> (Some (FIX_OrdRejReason_ExchangeClosed))
        | "14" -> (Some (FIX_OrdRejReason_IncorrectAllocatedQuantity))
        | "1" -> (Some (FIX_OrdRejReason_UnknownSymbol))
        | _ -> (None)
    )
;;

let parse_OrdStatus (str)  =
    (match str with
        | "6" -> (Some (FIX_OrdStatus_PendingCancel))
        | "7" -> (Some (FIX_OrdStatus_Stopped))
        | "A" -> (Some (FIX_OrdStatus_PendingNew))
        | "8" -> (Some (FIX_OrdStatus_Rejected))
        | "B" -> (Some (FIX_OrdStatus_Calculated))
        | "C" -> (Some (FIX_OrdStatus_Expired))
        | "2" -> (Some (FIX_OrdStatus_Filled))
        | "4" -> (Some (FIX_OrdStatus_Canceled))
        | "5" -> (Some (FIX_OrdStatus_Replaced))
        | "E" -> (Some (FIX_OrdStatus_PendingReplace))
        | "3" -> (Some (FIX_OrdStatus_DoneForDay))
        | "9" -> (Some (FIX_OrdStatus_Suspended))
        | "0" -> (Some (FIX_OrdStatus_New))
        | "1" -> (Some (FIX_OrdStatus_PartiallyFilled))
        | "D" -> (Some (FIX_OrdStatus_AcceptedForBidding))
        | _ -> (None)
    )
;;

let parse_OrdType (str)  =
    (match str with
        | "7" -> (Some (FIX_OrdType_LimitOrBetter))
        | "M" -> (Some (FIX_OrdType_NextFundValuationPoint))
        | "6" -> (Some (FIX_OrdType_WithOrWithout))
        | "E" -> (Some (FIX_OrdType_PreviouslyIndicated))
        | "3" -> (Some (FIX_OrdType_Stop))
        | "1" -> (Some (FIX_OrdType_Market))
        | "9" -> (Some (FIX_OrdType_OnBasis))
        | "I" -> (Some (FIX_OrdType_Funari))
        | "P" -> (Some (FIX_OrdType_Pegged))
        | "8" -> (Some (FIX_OrdType_LimitWithOrWithout))
        | "4" -> (Some (FIX_OrdType_StopLimit))
        | "G" -> (Some (FIX_OrdType_ForexSwap))
        | "J" -> (Some (FIX_OrdType_MarketIfTouched))
        | "K" -> (Some (FIX_OrdType_MarketWithLeftOverAsLimit))
        | "D" -> (Some (FIX_OrdType_PreviouslyQuoted))
        | "2" -> (Some (FIX_OrdType_Limit))
        | "L" -> (Some (FIX_OrdType_PreviousFundValuationPoint))
        | _ -> (None)
    )
;;

let parse_OrderCapacity (str)  =
    (match str with
        | "A" -> (Some (FIX_OrderCapacity_Agency))
        | "I" -> (Some (FIX_OrderCapacity_Individual))
        | "G" -> (Some (FIX_OrderCapacity_Proprietary))
        | "W" -> (Some (FIX_OrderCapacity_AgentForOtherMember))
        | "P" -> (Some (FIX_OrderCapacity_Principal))
        | "R" -> (Some (FIX_OrderCapacity_RisklessPrincipal))
        | _ -> (None)
    )
;;

let parse_inner_OrderRestrictions (str)  =
    (match str with
        | "7" -> (Some (FIX_OrderRestrictions_ForeignEntity))
        | "8" -> (Some (FIX_OrderRestrictions_ExternalMarketParticipant))
        | "2" -> (Some (FIX_OrderRestrictions_IndexArbitrage))
        | "4" -> (Some (FIX_OrderRestrictions_CompetingMarketMaker))
        | "A" -> (Some (FIX_OrderRestrictions_RisklessArbitrage))
        | "5" -> (Some (FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInSecurity))
        | "1" -> (Some (FIX_OrderRestrictions_ProgramTrade))
        | "6" -> (Some (FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInUnderlying))
        | "3" -> (Some (FIX_OrderRestrictions_NonIndexArbitrage))
        | "9" -> (Some (FIX_OrderRestrictions_ExternalInterConnectedMarketLinkage))
        | _ -> (None)
    )
;;

let rec parse_OrderRestrictions_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_OrderRestrictions h with
            | None -> (parse_OrderRestrictions_filter t)
            | Some x -> (x :: (parse_OrderRestrictions_filter t))
        )
        )
    )
;;

let parse_OrderRestrictions (str)  =
    let x = split_to_list str ' ' in
    Some (parse_OrderRestrictions_filter x)
;;

let parse_OwnerType (str)  =
    (match str with
        | "3" -> (Some (FIX_OwnerType_PrivateCompany))
        | "2" -> (Some (FIX_OwnerType_PublicCompany))
        | "4" -> (Some (FIX_OwnerType_IndividualTrustee))
        | "9" -> (Some (FIX_OwnerType_Fiduciaries))
        | "11" -> (Some (FIX_OwnerType_NonProfitOrganization))
        | "5" -> (Some (FIX_OwnerType_CompanyTrustee))
        | "10" -> (Some (FIX_OwnerType_NetworkingSubAccount))
        | "8" -> (Some (FIX_OwnerType_Trusts))
        | "13" -> (Some (FIX_OwnerType_Nominee))
        | "7" -> (Some (FIX_OwnerType_CustodianUnderGiftsToMinorsAct))
        | "1" -> (Some (FIX_OwnerType_IndividualInvestor))
        | "6" -> (Some (FIX_OwnerType_PensionPlan))
        | "12" -> (Some (FIX_OwnerType_CorporateBody))
        | _ -> (None)
    )
;;

let parse_OwnershipType (str)  =
    (match str with
        | "T" -> (Some (FIX_OwnershipType_TenantsInCommon))
        | "2" -> (Some (FIX_OwnershipType_JointTrustees))
        | "J" -> (Some (FIX_OwnershipType_JointInvestors))
        | _ -> (None)
    )
;;

let parse_PartyIDSource (str)  =
    (match str with
        | "H" -> (Some (FIX_PartyIDSource_CSDParticipant))
        | "1" -> (Some (FIX_PartyIDSource_KoreanInvestorID))
        | "8" -> (Some (FIX_PartyIDSource_USEmployerOrTaxIDNumber))
        | "2" -> (Some (FIX_PartyIDSource_TaiwaneseForeignInvestorID))
        | "3" -> (Some (FIX_PartyIDSource_TaiwaneseTradingAcct))
        | "6" -> (Some (FIX_PartyIDSource_UKNationalInsuranceOrPensionNumber))
        | "G" -> (Some (FIX_PartyIDSource_MIC))
        | "7" -> (Some (FIX_PartyIDSource_USSocialSecurityNumber))
        | "D" -> (Some (FIX_PartyIDSource_Proprietary))
        | "A" -> (Some (FIX_PartyIDSource_AustralianTaxFileNumber))
        | "4" -> (Some (FIX_PartyIDSource_MalaysianCentralDepository))
        | "I" -> (Some (FIX_PartyIDSource_ISITCAcronym))
        | "E" -> (Some (FIX_PartyIDSource_ISOCountryCode))
        | "5" -> (Some (FIX_PartyIDSource_ChineseInvestorID))
        | "9" -> (Some (FIX_PartyIDSource_AustralianBusinessNumber))
        | "B" -> (Some (FIX_PartyIDSource_BIC))
        | "C" -> (Some (FIX_PartyIDSource_GeneralIdentifier))
        | "F" -> (Some (FIX_PartyIDSource_SettlementEntityLocation))
        | _ -> (None)
    )
;;

let parse_PartyRole (str)  =
    (match str with
        | "15" -> (Some (FIX_PartyRole_CorrespondantClearingFirm))
        | "30" -> (Some (FIX_PartyRole_Agent))
        | "16" -> (Some (FIX_PartyRole_ExecutingSystem))
        | "19" -> (Some (FIX_PartyRole_SponsoringFirm))
        | "29" -> (Some (FIX_PartyRole_Intermediary))
        | "6" -> (Some (FIX_PartyRole_IntroducingFirm))
        | "7" -> (Some (FIX_PartyRole_EnteringFirm))
        | "35" -> (Some (FIX_PartyRole_LiquidityProvider))
        | "4" -> (Some (FIX_PartyRole_ClearingFirm))
        | "17" -> (Some (FIX_PartyRole_ContraFirm))
        | "37" -> (Some (FIX_PartyRole_ContraTrader))
        | "24" -> (Some (FIX_PartyRole_CustomerAccount))
        | "34" -> (Some (FIX_PartyRole_RegulatoryBody))
        | "10" -> (Some (FIX_PartyRole_SettlementLocation))
        | "22" -> (Some (FIX_PartyRole_Exchange))
        | "28" -> (Some (FIX_PartyRole_Custodian))
        | "25" -> (Some (FIX_PartyRole_CorrespondentClearingOrganization))
        | "12" -> (Some (FIX_PartyRole_ExecutingTrader))
        | "26" -> (Some (FIX_PartyRole_CorrespondentBroker))
        | "3" -> (Some (FIX_PartyRole_ClientID))
        | "11" -> (Some (FIX_PartyRole_OrderOriginationTrader))
        | "32" -> (Some (FIX_PartyRole_Beneficiary))
        | "33" -> (Some (FIX_PartyRole_InterestedParty))
        | "20" -> (Some (FIX_PartyRole_UnderlyingContraFirm))
        | "14" -> (Some (FIX_PartyRole_GiveupClearingFirm))
        | "21" -> (Some (FIX_PartyRole_ClearingOrganization))
        | "8" -> (Some (FIX_PartyRole_Locate))
        | "27" -> (Some (FIX_PartyRole_Buyer))
        | "38" -> (Some (FIX_PartyRole_PositionAccount))
        | "13" -> (Some (FIX_PartyRole_OrderOriginationFirm))
        | "2" -> (Some (FIX_PartyRole_BrokerOfCredit))
        | "31" -> (Some (FIX_PartyRole_SubCustodian))
        | "36" -> (Some (FIX_PartyRole_EnteringTrader))
        | "1" -> (Some (FIX_PartyRole_ExecutingFirm))
        | "9" -> (Some (FIX_PartyRole_FundManagerClientID))
        | "18" -> (Some (FIX_PartyRole_ContraClearingFirm))
        | "5" -> (Some (FIX_PartyRole_InvestorID))
        | _ -> (None)
    )
;;

let parse_PartySubIDType (str)  =
    (match str with
        | "8" -> (Some (FIX_PartySubIDType_EmailAddress))
        | "4" -> (Some (FIX_PartySubIDType_Application))
        | "19" -> (Some (FIX_PartySubIDType_FundAccountName))
        | "5" -> (Some (FIX_PartySubIDType_FullLegalNameOfFirm))
        | "17" -> (Some (FIX_PartySubIDType_CSDParticipantMemberCode))
        | "14" -> (Some (FIX_PartySubIDType_RegistrationName))
        | "6" -> (Some (FIX_PartySubIDType_PostalAddress))
        | "10" -> (Some (FIX_PartySubIDType_SecuritiesAccountNumber))
        | "18" -> (Some (FIX_PartySubIDType_RegisteredAddress))
        | "20" -> (Some (FIX_PartySubIDType_TelexNumber))
        | "13" -> (Some (FIX_PartySubIDType_RegulatoryStatus))
        | "7" -> (Some (FIX_PartySubIDType_PhoneNumber))
        | "1" -> (Some (FIX_PartySubIDType_Firm))
        | "2" -> (Some (FIX_PartySubIDType_Person))
        | "9" -> (Some (FIX_PartySubIDType_ContactName))
        | "15" -> (Some (FIX_PartySubIDType_CashAccountNumber))
        | "23" -> (Some (FIX_PartySubIDType_CashAccountName))
        | "25" -> (Some (FIX_PartySubIDType_LocationDesk))
        | "12" -> (Some (FIX_PartySubIDType_RegisteredAddressForConfirmation))
        | "26" -> (Some (FIX_PartySubIDType_PositionAccountType))
        | "3" -> (Some (FIX_PartySubIDType_System))
        | "24" -> (Some (FIX_PartySubIDType_Department))
        | "21" -> (Some (FIX_PartySubIDType_FaxNumber))
        | "11" -> (Some (FIX_PartySubIDType_RegistrationNumber))
        | "16" -> (Some (FIX_PartySubIDType_BIC))
        | "22" -> (Some (FIX_PartySubIDType_SecuritiesAccountName))
        | _ -> (None)
    )
;;

let parse_PaymentMethod (str)  =
    (match str with
        | "1" -> (Some (FIX_PaymentMethod_CREST))
        | "2" -> (Some (FIX_PaymentMethod_NSCC))
        | "10" -> (Some (FIX_PaymentMethod_DirectCredit))
        | "13" -> (Some (FIX_PaymentMethod_ACHCredit))
        | "4" -> (Some (FIX_PaymentMethod_Clearstream))
        | "15" -> (Some (FIX_PaymentMethod_HighValueClearingSystem))
        | "8" -> (Some (FIX_PaymentMethod_DebitCard))
        | "3" -> (Some (FIX_PaymentMethod_Euroclear))
        | "6" -> (Some (FIX_PaymentMethod_TelegraphicTransfer))
        | "11" -> (Some (FIX_PaymentMethod_CreditCard))
        | "9" -> (Some (FIX_PaymentMethod_DirectDebit))
        | "14" -> (Some (FIX_PaymentMethod_BPAY))
        | "5" -> (Some (FIX_PaymentMethod_Cheque))
        | "12" -> (Some (FIX_PaymentMethod_ACHDebit))
        | "7" -> (Some (FIX_PaymentMethod_FedWire))
        | _ -> (None)
    )
;;

let parse_PegLimitType (str)  =
    (match str with
        | "1" -> (Some (FIX_PegLimitType_Strict))
        | "0" -> (Some (FIX_PegLimitType_OrBetter))
        | "2" -> (Some (FIX_PegLimitType_OrWorse))
        | _ -> (None)
    )
;;

let parse_PegMoveType (str)  =
    (match str with
        | "1" -> (Some (FIX_PegMoveType_Fixed))
        | "0" -> (Some (FIX_PegMoveType_Floating))
        | _ -> (None)
    )
;;

let parse_PegOffsetType (str)  =
    (match str with
        | "1" -> (Some (FIX_PegOffsetType_BasisPoints))
        | "0" -> (Some (FIX_PegOffsetType_Price))
        | "2" -> (Some (FIX_PegOffsetType_Ticks))
        | "3" -> (Some (FIX_PegOffsetType_PriceTier))
        | _ -> (None)
    )
;;

let parse_PegRoundDirection (str)  =
    (match str with
        | "1" -> (Some (FIX_PegRoundDirection_MoreAggressive))
        | "2" -> (Some (FIX_PegRoundDirection_MorePassive))
        | _ -> (None)
    )
;;

let parse_PegScope (str)  =
    (match str with
        | "2" -> (Some (FIX_PegScope_National))
        | "1" -> (Some (FIX_PegScope_Local))
        | "4" -> (Some (FIX_PegScope_NationalExcludingLocal))
        | "3" -> (Some (FIX_PegScope_Global))
        | _ -> (None)
    )
;;

let parse_PosAmtType (str)  =
    (match str with
        | "PREM" -> (Some (FIX_PosAmtType_PremiumAmount))
        | "SMTM" -> (Some (FIX_PosAmtType_StartOfDayMarkToMarketAmount))
        | "FMTM" -> (Some (FIX_PosAmtType_FinalMarkToMarketAmount))
        | "VADJ" -> (Some (FIX_PosAmtType_ValueAdjustedAmount))
        | "TVAR" -> (Some (FIX_PosAmtType_TradeVariationAmount))
        | "CRES" -> (Some (FIX_PosAmtType_CashResidualAmount))
        | "IMTM" -> (Some (FIX_PosAmtType_IncrementalMarkToMarketAmount))
        | "CASH" -> (Some (FIX_PosAmtType_CashAmount))
        | _ -> (None)
    )
;;

let parse_PosMaintAction (str)  =
    (match str with
        | "2" -> (Some (FIX_PosMaintAction_Replace))
        | "3" -> (Some (FIX_PosMaintAction_Cancel))
        | "1" -> (Some (FIX_PosMaintAction_New))
        | _ -> (None)
    )
;;

let parse_PosMaintResult (str)  =
    (match str with
        | "99" -> (Some (FIX_PosMaintResult_Other))
        | "0" -> (Some (FIX_PosMaintResult_SuccessfulCompletion))
        | "1" -> (Some (FIX_PosMaintResult_Rejected))
        | _ -> (None)
    )
;;

let parse_PosMaintStatus (str)  =
    (match str with
        | "1" -> (Some (FIX_PosMaintStatus_AcceptedWithWarnings))
        | "2" -> (Some (FIX_PosMaintStatus_Rejected))
        | "4" -> (Some (FIX_PosMaintStatus_CompletedWithWarnings))
        | "3" -> (Some (FIX_PosMaintStatus_Completed))
        | "0" -> (Some (FIX_PosMaintStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_PosQtyStatus (str)  =
    (match str with
        | "0" -> (Some (FIX_PosQtyStatus_Submitted))
        | "2" -> (Some (FIX_PosQtyStatus_Rejected))
        | "1" -> (Some (FIX_PosQtyStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_PosReqResult (str)  =
    (match str with
        | "99" -> (Some (FIX_PosReqResult_Other))
        | "4" -> (Some (FIX_PosReqResult_RequestForPositionNotSupported))
        | "2" -> (Some (FIX_PosReqResult_NoPositionsFoundThatMatchCriteria))
        | "3" -> (Some (FIX_PosReqResult_NotAuthorizedToRequestPositions))
        | "1" -> (Some (FIX_PosReqResult_InvalidOrUnsupportedRequest))
        | "0" -> (Some (FIX_PosReqResult_ValidRequest))
        | _ -> (None)
    )
;;

let parse_PosReqStatus (str)  =
    (match str with
        | "1" -> (Some (FIX_PosReqStatus_CompletedWithWarnings))
        | "2" -> (Some (FIX_PosReqStatus_Rejected))
        | "0" -> (Some (FIX_PosReqStatus_Completed))
        | _ -> (None)
    )
;;

let parse_PosReqType (str)  =
    (match str with
        | "1" -> (Some (FIX_PosReqType_Trades))
        | "0" -> (Some (FIX_PosReqType_Positions))
        | "2" -> (Some (FIX_PosReqType_Exercises))
        | "3" -> (Some (FIX_PosReqType_Assignments))
        | _ -> (None)
    )
;;

let parse_PosTransType (str)  =
    (match str with
        | "3" -> (Some (FIX_PosTransType_PositionAdjustment))
        | "4" -> (Some (FIX_PosTransType_PositionChangeSubmission))
        | "2" -> (Some (FIX_PosTransType_DoNotExercise))
        | "1" -> (Some (FIX_PosTransType_Exercise))
        | "5" -> (Some (FIX_PosTransType_Pledge))
        | _ -> (None)
    )
;;

let parse_PosType (str)  =
    (match str with
        | "TOT" -> (Some (FIX_PosType_TotalTransactionQty))
        | "SPL" -> (Some (FIX_PosType_IntegralSplit))
        | "AS" -> (Some (FIX_PosType_OptionAssignment))
        | "ALC" -> (Some (FIX_PosType_AllocationTradeQty))
        | "IAS" -> (Some (FIX_PosType_IntraSpreadQty))
        | "DLV" -> (Some (FIX_PosType_DeliveryQty))
        | "TX" -> (Some (FIX_PosType_TransactionFromExercise))
        | "IES" -> (Some (FIX_PosType_InterSpreadQty))
        | "FIN" -> (Some (FIX_PosType_EndOfDayQty))
        | "TQ" -> (Some (FIX_PosType_TransactionQuantity))
        | "PIT" -> (Some (FIX_PosType_PitTradeQty))
        | "ETR" -> (Some (FIX_PosType_ElectronicTradeQty))
        | "XM" -> (Some (FIX_PosType_CrossMarginQty))
        | "SOD" -> (Some (FIX_PosType_StartOfDayQty))
        | "TRF" -> (Some (FIX_PosType_TransferTradeQty))
        | "TA" -> (Some (FIX_PosType_TransactionFromAssignment))
        | "EX" -> (Some (FIX_PosType_OptionExerciseQty))
        | "PA" -> (Some (FIX_PosType_AdjustmentQty))
        | "ASF" -> (Some (FIX_PosType_AsOfTradeQty))
        | _ -> (None)
    )
;;

let parse_PositionEffect (str)  =
    (match str with
        | "C" -> (Some (FIX_PositionEffect_Close))
        | "R" -> (Some (FIX_PositionEffect_Rolled))
        | "F" -> (Some (FIX_PositionEffect_FIFO))
        | "O" -> (Some (FIX_PositionEffect_Open))
        | _ -> (None)
    )
;;

let parse_PossDupFlag (str)  =
    (match str with
        | "Y" -> (Some (FIX_PossDupFlag_PossibleDuplicate))
        | "N" -> (Some (FIX_PossDupFlag_OriginalTransmission))
        | _ -> (None)
    )
;;

let parse_PossResend (str)  =
    (match str with
        | "N" -> (Some (FIX_PossResend_OriginalTransmission))
        | "Y" -> (Some (FIX_PossResend_PossibleResend))
        | _ -> (None)
    )
;;

let parse_PreallocMethod (str)  =
    (match str with
        | "0" -> (Some (FIX_PreallocMethod_ProRata))
        | "1" -> (Some (FIX_PreallocMethod_DoNotProRata))
        | _ -> (None)
    )
;;

let parse_PreviouslyReported (str)  =
    (match str with
        | "Y" -> (Some (FIX_PreviouslyReported_PerviouslyReportedToCounterparty))
        | "N" -> (Some (FIX_PreviouslyReported_NotReportedToCounterparty))
        | _ -> (None)
    )
;;

let parse_PriceType (str)  =
    (match str with
        | "4" -> (Some (FIX_PriceType_Discount))
        | "6" -> (Some (FIX_PriceType_Spread))
        | "7" -> (Some (FIX_PriceType_TEDPrice))
        | "10" -> (Some (FIX_PriceType_FixedCabinetTradePrice))
        | "1" -> (Some (FIX_PriceType_Percentage))
        | "11" -> (Some (FIX_PriceType_VariableCabinetTradePrice))
        | "8" -> (Some (FIX_PriceType_TEDYield))
        | "2" -> (Some (FIX_PriceType_PerUnit))
        | "3" -> (Some (FIX_PriceType_FixedAmount))
        | "5" -> (Some (FIX_PriceType_Premium))
        | "9" -> (Some (FIX_PriceType_Yield))
        | _ -> (None)
    )
;;

let parse_PriorityIndicator (str)  =
    (match str with
        | "0" -> (Some (FIX_PriorityIndicator_PriorityUnchanged))
        | "1" -> (Some (FIX_PriorityIndicator_LostPriorityAsResultOfOrderChange))
        | _ -> (None)
    )
;;

let parse_ProcessCode (str)  =
    (match str with
        | "0" -> (Some (FIX_ProcessCode_Regular))
        | "5" -> (Some (FIX_ProcessCode_SoftDollarStepOut))
        | "2" -> (Some (FIX_ProcessCode_StepIn))
        | "6" -> (Some (FIX_ProcessCode_PlanSponsor))
        | "4" -> (Some (FIX_ProcessCode_SoftDollarStepIn))
        | "1" -> (Some (FIX_ProcessCode_SoftDollar))
        | "3" -> (Some (FIX_ProcessCode_StepOut))
        | _ -> (None)
    )
;;

let parse_Product (str)  =
    (match str with
        | "4" -> (Some (FIX_Product_CURRENCY))
        | "2" -> (Some (FIX_Product_COMMODITY))
        | "3" -> (Some (FIX_Product_CORPORATE))
        | "8" -> (Some (FIX_Product_LOAN))
        | "10" -> (Some (FIX_Product_MORTGAGE))
        | "12" -> (Some (FIX_Product_OTHER))
        | "1" -> (Some (FIX_Product_AGENCY))
        | "13" -> (Some (FIX_Product_FINANCING))
        | "11" -> (Some (FIX_Product_MUNICIPAL))
        | "9" -> (Some (FIX_Product_MONEYMARKET))
        | "7" -> (Some (FIX_Product_INDEX))
        | "6" -> (Some (FIX_Product_GOVERNMENT))
        | "5" -> (Some (FIX_Product_EQUITY))
        | _ -> (None)
    )
;;

let parse_ProgRptReqs (str)  =
    (match str with
        | "1" -> (Some (FIX_ProgRptReqs_BuySideRequests))
        | "2" -> (Some (FIX_ProgRptReqs_SellSideSends))
        | "3" -> (Some (FIX_ProgRptReqs_RealTimeExecutionReports))
        | _ -> (None)
    )
;;

let parse_PublishTrdIndicator (str)  =
    (match str with
        | "Y" -> (Some (FIX_PublishTrdIndicator_ReportTrade))
        | "N" -> (Some (FIX_PublishTrdIndicator_DoNotReportTrade))
        | _ -> (None)
    )
;;

let parse_PutOrCall (str)  =
    (match str with
        | "1" -> (Some (FIX_PutOrCall_Call))
        | "0" -> (Some (FIX_PutOrCall_Put))
        | _ -> (None)
    )
;;

let parse_QtyType (str)  =
    (match str with
        | "0" -> (Some (FIX_QtyType_Units))
        | "1" -> (Some (FIX_QtyType_Contracts))
        | _ -> (None)
    )
;;

let parse_QuoteCancelType (str)  =
    (match str with
        | "4" -> (Some (FIX_QuoteCancelType_CancelAllQuotes))
        | "1" -> (Some (FIX_QuoteCancelType_CancelForOneOrMoreSecurities))
        | "3" -> (Some (FIX_QuoteCancelType_CancelForUnderlyingSecurity))
        | "2" -> (Some (FIX_QuoteCancelType_CancelForSecurityType))
        | _ -> (None)
    )
;;

let parse_inner_QuoteCondition (str)  =
    (match str with
        | "B" -> (Some (FIX_QuoteCondition_Closed))
        | "E" -> (Some (FIX_QuoteCondition_Locked))
        | "F" -> (Some (FIX_QuoteCondition_Crossed))
        | "I" -> (Some (FIX_QuoteCondition_NonFirm))
        | "H" -> (Some (FIX_QuoteCondition_FastTrading))
        | "D" -> (Some (FIX_QuoteCondition_ConsolidatedBest))
        | "A" -> (Some (FIX_QuoteCondition_Open))
        | "C" -> (Some (FIX_QuoteCondition_ExchangeBest))
        | "G" -> (Some (FIX_QuoteCondition_Depth))
        | _ -> (None)
    )
;;

let rec parse_QuoteCondition_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_QuoteCondition h with
            | None -> (parse_QuoteCondition_filter t)
            | Some x -> (x :: (parse_QuoteCondition_filter t))
        )
        )
    )
;;

let parse_QuoteCondition (str)  =
    let x = split_to_list str ' ' in
    Some (parse_QuoteCondition_filter x)
;;

let parse_QuotePriceType (str)  =
    (match str with
        | "4" -> (Some (FIX_QuotePriceType_Discount))
        | "6" -> (Some (FIX_QuotePriceType_Spread))
        | "7" -> (Some (FIX_QuotePriceType_TEDPrice))
        | "1" -> (Some (FIX_QuotePriceType_Percent))
        | "8" -> (Some (FIX_QuotePriceType_TEDYield))
        | "3" -> (Some (FIX_QuotePriceType_FixedAmount))
        | "5" -> (Some (FIX_QuotePriceType_Premium))
        | "10" -> (Some (FIX_QuotePriceType_Yield))
        | "9" -> (Some (FIX_QuotePriceType_YieldSpread))
        | "2" -> (Some (FIX_QuotePriceType_PerShare))
        | _ -> (None)
    )
;;

let parse_QuoteRejectReason (str)  =
    (match str with
        | "6" -> (Some (FIX_QuoteRejectReason_DuplicateQuote))
        | "99" -> (Some (FIX_QuoteRejectReason_Other))
        | "2" -> (Some (FIX_QuoteRejectReason_Exchange))
        | "8" -> (Some (FIX_QuoteRejectReason_InvalidPrice))
        | "7" -> (Some (FIX_QuoteRejectReason_InvalidBid))
        | "5" -> (Some (FIX_QuoteRejectReason_UnknownQuote))
        | "4" -> (Some (FIX_QuoteRejectReason_TooLateToEnter))
        | "3" -> (Some (FIX_QuoteRejectReason_QuoteRequestExceedsLimit))
        | "9" -> (Some (FIX_QuoteRejectReason_NotAuthorizedToQuoteSecurity))
        | "1" -> (Some (FIX_QuoteRejectReason_UnknownSymbol))
        | _ -> (None)
    )
;;

let parse_QuoteRequestRejectReason (str)  =
    (match str with
        | "99" -> (Some (FIX_QuoteRequestRejectReason_Other))
        | "2" -> (Some (FIX_QuoteRequestRejectReason_Exchange))
        | "5" -> (Some (FIX_QuoteRequestRejectReason_InvalidPrice))
        | "9" -> (Some (FIX_QuoteRequestRejectReason_NoInventory))
        | "7" -> (Some (FIX_QuoteRequestRejectReason_NoMatchForInquiry))
        | "10" -> (Some (FIX_QuoteRequestRejectReason_Pass))
        | "4" -> (Some (FIX_QuoteRequestRejectReason_TooLateToEnter))
        | "8" -> (Some (FIX_QuoteRequestRejectReason_NoMarketForInstrument))
        | "6" -> (Some (FIX_QuoteRequestRejectReason_NotAuthorizedToRequestQuote))
        | "3" -> (Some (FIX_QuoteRequestRejectReason_QuoteRequestExceedsLimit))
        | "1" -> (Some (FIX_QuoteRequestRejectReason_UnknownSymbol))
        | _ -> (None)
    )
;;

let parse_QuoteRequestType (str)  =
    (match str with
        | "1" -> (Some (FIX_QuoteRequestType_Manual))
        | "2" -> (Some (FIX_QuoteRequestType_Automatic))
        | _ -> (None)
    )
;;

let parse_QuoteRespType (str)  =
    (match str with
        | "4" -> (Some (FIX_QuoteRespType_Cover))
        | "1" -> (Some (FIX_QuoteRespType_Hit))
        | "2" -> (Some (FIX_QuoteRespType_Counter))
        | "6" -> (Some (FIX_QuoteRespType_Pass))
        | "5" -> (Some (FIX_QuoteRespType_DoneAway))
        | "3" -> (Some (FIX_QuoteRespType_Expired))
        | _ -> (None)
    )
;;

let parse_QuoteResponseLevel (str)  =
    (match str with
        | "0" -> (Some (FIX_QuoteResponseLevel_NoAcknowledgement))
        | "1" -> (Some (FIX_QuoteResponseLevel_AcknowledgeOnlyNegativeOrErroneousQuotes))
        | "2" -> (Some (FIX_QuoteResponseLevel_AcknowledgeEachQuoteMessage))
        | _ -> (None)
    )
;;

let parse_QuoteStatus (str)  =
    (match str with
        | "14" -> (Some (FIX_QuoteStatus_CanceledDueToLockMarket))
        | "6" -> (Some (FIX_QuoteStatus_RemovedFromMarket))
        | "15" -> (Some (FIX_QuoteStatus_CanceledDueToCrossMarket))
        | "5" -> (Some (FIX_QuoteStatus_Rejected))
        | "7" -> (Some (FIX_QuoteStatus_Expired))
        | "8" -> (Some (FIX_QuoteStatus_Query))
        | "9" -> (Some (FIX_QuoteStatus_QuoteNotFound))
        | "4" -> (Some (FIX_QuoteStatus_CanceledAll))
        | "12" -> (Some (FIX_QuoteStatus_LockedMarketWarning))
        | "0" -> (Some (FIX_QuoteStatus_Accepted))
        | "1" -> (Some (FIX_QuoteStatus_CancelForSymbol))
        | "13" -> (Some (FIX_QuoteStatus_CrossMarketWarning))
        | "11" -> (Some (FIX_QuoteStatus_Pass))
        | "2" -> (Some (FIX_QuoteStatus_CanceledForSecurityType))
        | "3" -> (Some (FIX_QuoteStatus_CanceledForUnderlying))
        | "10" -> (Some (FIX_QuoteStatus_Pending))
        | _ -> (None)
    )
;;

let parse_QuoteType (str)  =
    (match str with
        | "2" -> (Some (FIX_QuoteType_RestrictedTradeable))
        | "0" -> (Some (FIX_QuoteType_Indicative))
        | "3" -> (Some (FIX_QuoteType_Counter))
        | "1" -> (Some (FIX_QuoteType_Tradeable))
        | _ -> (None)
    )
;;

let parse_RegistRejReasonCode (str)  =
    (match str with
        | "5" -> (Some (FIX_RegistRejReasonCode_InvalidRegSeqNo))
        | "99" -> (Some (FIX_RegistRejReasonCode_Other))
        | "13" -> (Some (FIX_RegistRejReasonCode_InvalidDistribInstns))
        | "2" -> (Some (FIX_RegistRejReasonCode_InvalidTaxExemptType))
        | "11" -> (Some (FIX_RegistRejReasonCode_InvalidDateOfBirth))
        | "17" -> (Some (FIX_RegistRejReasonCode_InvalidAgentCode))
        | "15" -> (Some (FIX_RegistRejReasonCode_InvalidPaymentMethod))
        | "6" -> (Some (FIX_RegistRejReasonCode_InvalidRegDetails))
        | "16" -> (Some (FIX_RegistRejReasonCode_InvalidAccountName))
        | "8" -> (Some (FIX_RegistRejReasonCode_InvalidMailingInstructions))
        | "14" -> (Some (FIX_RegistRejReasonCode_InvalidPercentage))
        | "4" -> (Some (FIX_RegistRejReasonCode_NoRegDetails))
        | "9" -> (Some (FIX_RegistRejReasonCode_InvalidInvestorID))
        | "12" -> (Some (FIX_RegistRejReasonCode_InvalidCountry))
        | "3" -> (Some (FIX_RegistRejReasonCode_InvalidOwnershipType))
        | "1" -> (Some (FIX_RegistRejReasonCode_InvalidAccountType))
        | "10" -> (Some (FIX_RegistRejReasonCode_InvalidInvestorIDSource))
        | "18" -> (Some (FIX_RegistRejReasonCode_InvalidAccountNum))
        | "7" -> (Some (FIX_RegistRejReasonCode_InvalidMailingDetails))
        | _ -> (None)
    )
;;

let parse_RegistStatus (str)  =
    (match str with
        | "N" -> (Some (FIX_RegistStatus_Reminder))
        | "H" -> (Some (FIX_RegistStatus_Held))
        | "R" -> (Some (FIX_RegistStatus_Rejected))
        | "A" -> (Some (FIX_RegistStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_RegistTransType (str)  =
    (match str with
        | "1" -> (Some (FIX_RegistTransType_Replace))
        | "2" -> (Some (FIX_RegistTransType_Cancel))
        | "0" -> (Some (FIX_RegistTransType_New))
        | _ -> (None)
    )
;;

let parse_ReportToExch (str)  =
    (match str with
        | "Y" -> (Some (FIX_ReportToExch_ReceiverReports))
        | "N" -> (Some (FIX_ReportToExch_SenderReports))
        | _ -> (None)
    )
;;

let parse_ResetSeqNumFlag (str)  =
    (match str with
        | "N" -> (Some (FIX_ResetSeqNumFlag_No))
        | "Y" -> (Some (FIX_ResetSeqNumFlag_Yes))
        | _ -> (None)
    )
;;

let parse_ResponseTransportType (str)  =
    (match str with
        | "0" -> (Some (FIX_ResponseTransportType_Inband))
        | "1" -> (Some (FIX_ResponseTransportType_OutOfBand))
        | _ -> (None)
    )
;;

let parse_RoundingDirection (str)  =
    (match str with
        | "1" -> (Some (FIX_RoundingDirection_RoundDown))
        | "2" -> (Some (FIX_RoundingDirection_RoundUp))
        | "0" -> (Some (FIX_RoundingDirection_RoundToNearest))
        | _ -> (None)
    )
;;

let parse_RoutingType (str)  =
    (match str with
        | "2" -> (Some (FIX_RoutingType_TargetList))
        | "1" -> (Some (FIX_RoutingType_TargetFirm))
        | "4" -> (Some (FIX_RoutingType_BlockList))
        | "3" -> (Some (FIX_RoutingType_BlockFirm))
        | _ -> (None)
    )
;;

let parse_inner_Scope (str)  =
    (match str with
        | "2" -> (Some (FIX_Scope_National))
        | "1" -> (Some (FIX_Scope_LocalMarket))
        | "3" -> (Some (FIX_Scope_Global))
        | _ -> (None)
    )
;;

let rec parse_Scope_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_Scope h with
            | None -> (parse_Scope_filter t)
            | Some x -> (x :: (parse_Scope_filter t))
        )
        )
    )
;;

let parse_Scope (str)  =
    let x = split_to_list str ' ' in
    Some (parse_Scope_filter x)
;;

let parse_SecurityIDSource (str)  =
    (match str with
        | "F" -> (Some (FIX_SecurityIDSource_Belgian))
        | "3" -> (Some (FIX_SecurityIDSource_QUIK))
        | "E" -> (Some (FIX_SecurityIDSource_Sicovam))
        | "D" -> (Some (FIX_SecurityIDSource_Valoren))
        | "8" -> (Some (FIX_SecurityIDSource_ExchangeSymbol))
        | "4" -> (Some (FIX_SecurityIDSource_ISINNumber))
        | "A" -> (Some (FIX_SecurityIDSource_BloombergSymbol))
        | "G" -> (Some (FIX_SecurityIDSource_Common))
        | "9" -> (Some (FIX_SecurityIDSource_ConsolidatedTapeAssociation))
        | "J" -> (Some (FIX_SecurityIDSource_OptionPriceReportingAuthority))
        | "H" -> (Some (FIX_SecurityIDSource_ClearingHouse))
        | "C" -> (Some (FIX_SecurityIDSource_Dutch))
        | "I" -> (Some (FIX_SecurityIDSource_ISDAFpMLSpecification))
        | "6" -> (Some (FIX_SecurityIDSource_ISOCurrencyCode))
        | "7" -> (Some (FIX_SecurityIDSource_ISOCountryCode))
        | "5" -> (Some (FIX_SecurityIDSource_RICCode))
        | "2" -> (Some (FIX_SecurityIDSource_SEDOL))
        | "B" -> (Some (FIX_SecurityIDSource_Wertpapier))
        | "1" -> (Some (FIX_SecurityIDSource_CUSIP))
        | _ -> (None)
    )
;;

let parse_SecurityListRequestType (str)  =
    (match str with
        | "2" -> (Some (FIX_SecurityListRequestType_Product))
        | "0" -> (Some (FIX_SecurityListRequestType_Symbol))
        | "1" -> (Some (FIX_SecurityListRequestType_SecurityTypeAnd))
        | "3" -> (Some (FIX_SecurityListRequestType_TradingSessionID))
        | "4" -> (Some (FIX_SecurityListRequestType_AllSecurities))
        | _ -> (None)
    )
;;

let parse_SecurityRequestResult (str)  =
    (match str with
        | "4" -> (Some (FIX_SecurityRequestResult_InstrumentDataTemporarilyUnavailable))
        | "2" -> (Some (FIX_SecurityRequestResult_NoInstrumentsFound))
        | "1" -> (Some (FIX_SecurityRequestResult_InvalidOrUnsupportedRequest))
        | "5" -> (Some (FIX_SecurityRequestResult_RequestForInstrumentDataNotSupported))
        | "0" -> (Some (FIX_SecurityRequestResult_ValidRequest))
        | "3" -> (Some (FIX_SecurityRequestResult_NotAuthorizedToRetrieveInstrumentData))
        | _ -> (None)
    )
;;

let parse_SecurityRequestType (str)  =
    (match str with
        | "3" -> (Some (FIX_SecurityRequestType_RequestListSecurities))
        | "2" -> (Some (FIX_SecurityRequestType_RequestListSecurityTypes))
        | "0" -> (Some (FIX_SecurityRequestType_RequestSecurityIdentityAndSpecifications))
        | "1" -> (Some (FIX_SecurityRequestType_RequestSecurityIdentityForSpecifications))
        | _ -> (None)
    )
;;

let parse_SecurityResponseType (str)  =
    (match str with
        | "1" -> (Some (FIX_SecurityResponseType_AcceptAsIs))
        | "5" -> (Some (FIX_SecurityResponseType_RejectSecurityProposal))
        | "6" -> (Some (FIX_SecurityResponseType_CannotMatchSelectionCriteria))
        | "2" -> (Some (FIX_SecurityResponseType_AcceptWithRevisions))
        | _ -> (None)
    )
;;

let parse_SecurityTradingStatus (str)  =
    (match str with
        | "14" -> (Some (FIX_SecurityTradingStatus_ITSPreOpening))
        | "21" -> (Some (FIX_SecurityTradingStatus_PreOpen))
        | "7" -> (Some (FIX_SecurityTradingStatus_MarketImbalanceBuy))
        | "13" -> (Some (FIX_SecurityTradingStatus_NoMarketOnCloseImbalance))
        | "18" -> (Some (FIX_SecurityTradingStatus_NotAvailableForTrading))
        | "22" -> (Some (FIX_SecurityTradingStatus_OpeningRotation))
        | "12" -> (Some (FIX_SecurityTradingStatus_NoMarketImbalance))
        | "16" -> (Some (FIX_SecurityTradingStatus_TradeDisseminationTime))
        | "17" -> (Some (FIX_SecurityTradingStatus_ReadyToTrade))
        | "20" -> (Some (FIX_SecurityTradingStatus_UnknownOrInvalid))
        | "9" -> (Some (FIX_SecurityTradingStatus_MarketOnCloseImbalanceBuy))
        | "1" -> (Some (FIX_SecurityTradingStatus_OpeningDelay))
        | "4" -> (Some (FIX_SecurityTradingStatus_NoOpen))
        | "2" -> (Some (FIX_SecurityTradingStatus_TradingHalt))
        | "10" -> (Some (FIX_SecurityTradingStatus_MarketOnCloseImbalanceSell))
        | "8" -> (Some (FIX_SecurityTradingStatus_MarketImbalanceSell))
        | "19" -> (Some (FIX_SecurityTradingStatus_NotTradedOnThisMarket))
        | "6" -> (Some (FIX_SecurityTradingStatus_TradingRangeIndication))
        | "23" -> (Some (FIX_SecurityTradingStatus_FastMarket))
        | "15" -> (Some (FIX_SecurityTradingStatus_NewPriceIndication))
        | "5" -> (Some (FIX_SecurityTradingStatus_PriceIndication))
        | "3" -> (Some (FIX_SecurityTradingStatus_Resume))
        | _ -> (None)
    )
;;

let parse_SecurityType (str)  =
    (match str with
        | "MF" -> (Some (FIX_SecurityType_MutualFund))
        | "YANK" -> (Some (FIX_SecurityType_YankeeCorporateBond))
        | "TINT" -> (Some (FIX_SecurityType_InterestStripFromAnyBondOrNote))
        | "RVLVTRM" -> (Some (FIX_SecurityType_Revolver))
        | "CP" -> (Some (FIX_SecurityType_CommercialPaper))
        | "RAN" -> (Some (FIX_SecurityType_RevenueAnticipationNote))
        | "MATURED" -> (Some (FIX_SecurityType_Matured))
        | "RETIRED" -> (Some (FIX_SecurityType_Retired))
        | "STRUCT" -> (Some (FIX_SecurityType_StructuredNotes))
        | "MPP" -> (Some (FIX_SecurityType_MortgagePrivatePlacement))
        | "PFAND" -> (Some (FIX_SecurityType_Pfandbriefe))
        | "AN" -> (Some (FIX_SecurityType_OtherAnticipationNotes))
        | "SUPRA" -> (Some (FIX_SecurityType_USDSupranationalCoupons))
        | "MT" -> (Some (FIX_SecurityType_MandatoryTender))
        | "PS" -> (Some (FIX_SecurityType_PreferredStock))
        | "TBA" -> (Some (FIX_SecurityType_ToBeAnnounced))
        | "GO" -> (Some (FIX_SecurityType_GeneralObligationBonds))
        | "TD" -> (Some (FIX_SecurityType_TimeDeposit))
        | "XCN" -> (Some (FIX_SecurityType_ExtendedCommNote))
        | "MPT" -> (Some (FIX_SecurityType_MiscellaneousPassThrough))
        | "YCD" -> (Some (FIX_SecurityType_YankeeCertificateOfDeposit))
        | "FUT" -> (Some (FIX_SecurityType_Future))
        | "FORWARD" -> (Some (FIX_SecurityType_Forward))
        | "VRDN" -> (Some (FIX_SecurityType_VariableRateDemandNote))
        | "MTN" -> (Some (FIX_SecurityType_MediumTermNotes))
        | "OPT" -> (Some (FIX_SecurityType_Option))
        | "REPO" -> (Some (FIX_SecurityType_Repurchase))
        | "PZFJ" -> (Some (FIX_SecurityType_PlazosFijos))
        | "TBILL" -> (Some (FIX_SecurityType_USTreasuryBill))
        | "BN" -> (Some (FIX_SecurityType_BankNotes))
        | "MPO" -> (Some (FIX_SecurityType_MortgagePrincipalOnly))
        | "MIO" -> (Some (FIX_SecurityType_MortgageInterestOnly))
        | "ABS" -> (Some (FIX_SecurityType_AssetBackedSecurities))
        | "WAR" -> (Some (FIX_SecurityType_Warrant))
        | "SPCLT" -> (Some (FIX_SecurityType_SpecialTax))
        | "EUSUPRA" -> (Some (FIX_SecurityType_EuroSupranationalCoupons))
        | "FOR" -> (Some (FIX_SecurityType_ForeignExchangeContract))
        | "USTB" -> (Some (FIX_SecurityType_USTreasuryBillOld))
        | "CD" -> (Some (FIX_SecurityType_CertificateOfDeposit))
        | "TAN" -> (Some (FIX_SecurityType_TaxAnticipationNote))
        | "LOFC" -> (Some (FIX_SecurityType_LetterOfCredit))
        | "CMO" -> (Some (FIX_SecurityType_CollateralizedMortgageObligation))
        | "IET" -> (Some (FIX_SecurityType_IOETTEMortgage))
        | "MBS" -> (Some (FIX_SecurityType_MortgageBackedSecurities))
        | "BOX" -> (Some (FIX_SecurityType_BillOfExchanges))
        | "AMENDED" -> (Some (FIX_SecurityType_Amended))
        | "REV" -> (Some (FIX_SecurityType_RevenueBonds))
        | "EUCORP" -> (Some (FIX_SecurityType_EuroCorporateBond))
        | "PEF" -> (Some (FIX_SecurityType_PrivateExportFunding))
        | "RVLV" -> (Some (FIX_SecurityType_RevolverLoan))
        | "TPRN" -> (Some (FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote))
        | "WITHDRN" -> (Some (FIX_SecurityType_Withdrawn))
        | "DN" -> (Some (FIX_SecurityType_DepositNotes))
        | "SPCLA" -> (Some (FIX_SecurityType_SpecialAssessment))
        | "EUSOV" -> (Some (FIX_SecurityType_EuroSovereigns))
        | "TAXA" -> (Some (FIX_SecurityType_TaxAllocation))
        | "EUCD" -> (Some (FIX_SecurityType_EuroCertificateOfDeposit))
        | "PN" -> (Some (FIX_SecurityType_PromissoryNote))
        | "TCAL" -> (Some (FIX_SecurityType_PrincipalStripOfACallableBondOrNote))
        | "ONITE" -> (Some (FIX_SecurityType_Overnight))
        | "CB" -> (Some (FIX_SecurityType_ConvertibleBond))
        | "CMBS" -> (Some (FIX_SecurityType_Corp))
        | "SPCLO" -> (Some (FIX_SecurityType_SpecialObligation))
        | "SECLOAN" -> (Some (FIX_SecurityType_SecuritiesLoan))
        | "COFO" -> (Some (FIX_SecurityType_CertificateOfObligation))
        | "FADN" -> (Some (FIX_SecurityType_FederalAgencyDiscountNote))
        | "CL" -> (Some (FIX_SecurityType_CallLoans))
        | "DINP" -> (Some (FIX_SecurityType_DebtorInPossession))
        | "TBOND" -> (Some (FIX_SecurityType_USTreasuryBond))
        | "SECPLEDGE" -> (Some (FIX_SecurityType_SecuritiesPledge))
        | "REPLACD" -> (Some (FIX_SecurityType_Replaced))
        | "BRADY" -> (Some (FIX_SecurityType_BradyBond))
        | "CORP" -> (Some (FIX_SecurityType_CorporateBond))
        | "TERM" -> (Some (FIX_SecurityType_TermLoan))
        | "TRAN" -> (Some (FIX_SecurityType_TaxRevenueAnticipationNote))
        | "SWING" -> (Some (FIX_SecurityType_SwingLineFacility))
        | "TECP" -> (Some (FIX_SecurityType_TaxExemptCommercialPaper))
        | "NONE" -> (Some (FIX_SecurityType_NoSecurityType))
        | "DUAL" -> (Some (FIX_SecurityType_DualCurrency))
        | "FAC" -> (Some (FIX_SecurityType_FederalAgencyCoupon))
        | "BA" -> (Some (FIX_SecurityType_BankersAcceptance))
        | "MLEG" -> (Some (FIX_SecurityType_MultilegInstrument))
        | "EUCP" -> (Some (FIX_SecurityType_EuroCommercialPaper))
        | "CS" -> (Some (FIX_SecurityType_CommonStock))
        | "TNOTE" -> (Some (FIX_SecurityType_USTreasuryNote))
        | "TIPS" -> (Some (FIX_SecurityType_TreasuryInflationProtectedSecurities))
        | "XLINKD" -> (Some (FIX_SecurityType_IndexedLinked))
        | "BRIDGE" -> (Some (FIX_SecurityType_BridgeLoan))
        | "STN" -> (Some (FIX_SecurityType_ShortTermLoanNote))
        | "DEFLTED" -> (Some (FIX_SecurityType_Defaulted))
        | "UST" -> (Some (FIX_SecurityType_USTreasuryNoteOld))
        | "COFP" -> (Some (FIX_SecurityType_CertificateOfParticipation))
        | "CPP" -> (Some (FIX_SecurityType_CorporatePrivatePlacement))
        | "BUYSELL" -> (Some (FIX_SecurityType_BuySellback))
        | "LQN" -> (Some (FIX_SecurityType_LiquidityNote))
        | _ -> (None)
    )
;;

let parse_SettlCurrFxRateCalc (str)  =
    (match str with
        | "M" -> (Some (FIX_SettlCurrFxRateCalc_Multiply))
        | "D" -> (Some (FIX_SettlCurrFxRateCalc_Divide))
        | _ -> (None)
    )
;;

let parse_SettlDeliveryType (str)  =
    (match str with
        | "2" -> (Some (FIX_SettlDeliveryType_TriParty))
        | "0" -> (Some (FIX_SettlDeliveryType_Versus))
        | "3" -> (Some (FIX_SettlDeliveryType_HoldInCustody))
        | "1" -> (Some (FIX_SettlDeliveryType_Free))
        | _ -> (None)
    )
;;

let parse_SettlInstMode (str)  =
    (match str with
        | "5" -> (Some (FIX_SettlInstMode_RequestReject))
        | "1" -> (Some (FIX_SettlInstMode_StandingInstructionsProvided))
        | "4" -> (Some (FIX_SettlInstMode_SpecificOrderForASingleAccount))
        | _ -> (None)
    )
;;

let parse_SettlInstReqRejCode (str)  =
    (match str with
        | "99" -> (Some (FIX_SettlInstReqRejCode_Other))
        | "2" -> (Some (FIX_SettlInstReqRejCode_NoMatchingSettlementInstructionsFound))
        | "1" -> (Some (FIX_SettlInstReqRejCode_UnknownAccount))
        | "0" -> (Some (FIX_SettlInstReqRejCode_UnableToProcessRequest))
        | _ -> (None)
    )
;;

let parse_SettlInstSource (str)  =
    (match str with
        | "3" -> (Some (FIX_SettlInstSource_Investor))
        | "2" -> (Some (FIX_SettlInstSource_Institution))
        | "1" -> (Some (FIX_SettlInstSource_BrokerCredit))
        | _ -> (None)
    )
;;

let parse_SettlInstTransType (str)  =
    (match str with
        | "C" -> (Some (FIX_SettlInstTransType_Cancel))
        | "R" -> (Some (FIX_SettlInstTransType_Replace))
        | "N" -> (Some (FIX_SettlInstTransType_New))
        | "T" -> (Some (FIX_SettlInstTransType_Restate))
        | _ -> (None)
    )
;;

let parse_SettlPriceType (str)  =
    (match str with
        | "2" -> (Some (FIX_SettlPriceType_Theoretical))
        | "1" -> (Some (FIX_SettlPriceType_Final))
        | _ -> (None)
    )
;;

let parse_SettlSessID (str)  =
    (match str with
        | "ITD" -> (Some (FIX_SettlSessID_Intraday))
        | "RTH" -> (Some (FIX_SettlSessID_RegularTradingHours))
        | "ETH" -> (Some (FIX_SettlSessID_ElectronicTradingHours))
        | _ -> (None)
    )
;;

let parse_SettlType (str)  =
    (match str with
        | "0" -> (Some (FIX_SettlType_Regular))
        | "3" -> (Some (FIX_SettlType_TPlus2))
        | "8" -> (Some (FIX_SettlType_SellersOption))
        | "5" -> (Some (FIX_SettlType_TPlus4))
        | "4" -> (Some (FIX_SettlType_TPlus3))
        | "9" -> (Some (FIX_SettlType_TPlus5))
        | "2" -> (Some (FIX_SettlType_NextDay))
        | "6" -> (Some (FIX_SettlType_Future))
        | "1" -> (Some (FIX_SettlType_Cash))
        | "7" -> (Some (FIX_SettlType_WhenAndIfIssued))
        | _ -> (None)
    )
;;

let parse_ShortSaleReason (str)  =
    (match str with
        | "2" -> (Some (FIX_ShortSaleReason_SellingCustomerSoldShort))
        | "5" -> (Some (FIX_ShortSaleReason_QSROrAGUContraSideSoldShortExempt))
        | "0" -> (Some (FIX_ShortSaleReason_DealerSoldShort))
        | "4" -> (Some (FIX_ShortSaleReason_QualifiedServiceRepresentative))
        | "1" -> (Some (FIX_ShortSaleReason_DealerSoldShortExempt))
        | "3" -> (Some (FIX_ShortSaleReason_SellingCustomerSoldShortExempt))
        | _ -> (None)
    )
;;

let parse_Side (str)  =
    (match str with
        | "B" -> (Some (FIX_Side_AsDefined))
        | "C" -> (Some (FIX_Side_Opposite))
        | "1" -> (Some (FIX_Side_Buy))
        | "A" -> (Some (FIX_Side_CrossShortExempt))
        | "G" -> (Some (FIX_Side_Borrow))
        | "3" -> (Some (FIX_Side_BuyMinus))
        | "D" -> (Some (FIX_Side_Subscribe))
        | "F" -> (Some (FIX_Side_Lend))
        | "6" -> (Some (FIX_Side_SellShortExempt))
        | "E" -> (Some (FIX_Side_Redeem))
        | "4" -> (Some (FIX_Side_SellPlus))
        | "2" -> (Some (FIX_Side_Sell))
        | "7" -> (Some (FIX_Side_Undisclosed))
        | "8" -> (Some (FIX_Side_Cross))
        | "9" -> (Some (FIX_Side_CrossShort))
        | "5" -> (Some (FIX_Side_SellShort))
        | _ -> (None)
    )
;;

let parse_SideMultiLegReportingType (str)  =
    (match str with
        | "1" -> (Some (FIX_SideMultiLegReportingType_SingleSecurity))
        | "3" -> (Some (FIX_SideMultiLegReportingType_MultilegSecurity))
        | "2" -> (Some (FIX_SideMultiLegReportingType_IndividualLegOfAMultilegSecurity))
        | _ -> (None)
    )
;;

let parse_SideValueInd (str)  =
    (match str with
        | "1" -> (Some (FIX_SideValueInd_SideValue1))
        | "2" -> (Some (FIX_SideValueInd_SideValue2))
        | _ -> (None)
    )
;;

let parse_SolicitedFlag (str)  =
    (match str with
        | "Y" -> (Some (FIX_SolicitedFlag_WasSolicited))
        | "N" -> (Some (FIX_SolicitedFlag_WasNotSolicited))
        | _ -> (None)
    )
;;

let parse_StandInstDbType (str)  =
    (match str with
        | "0" -> (Some (FIX_StandInstDbType_Other))
        | "4" -> (Some (FIX_StandInstDbType_AccountNet))
        | "1" -> (Some (FIX_StandInstDbType_DTCSID))
        | "2" -> (Some (FIX_StandInstDbType_ThomsonALERT))
        | "3" -> (Some (FIX_StandInstDbType_AGlobalCustodian))
        | _ -> (None)
    )
;;

let parse_StatusValue (str)  =
    (match str with
        | "2" -> (Some (FIX_StatusValue_NotConnectedUnexpected))
        | "4" -> (Some (FIX_StatusValue_InProcess))
        | "1" -> (Some (FIX_StatusValue_Connected))
        | "3" -> (Some (FIX_StatusValue_NotConnectedExpected))
        | _ -> (None)
    )
;;

let parse_StipulationType (str)  =
    (match str with
        | "LOOKBACK" -> (Some (FIX_StipulationType_LookbackDays))
        | "COUPON" -> (Some (FIX_StipulationType_CouponRange))
        | "PPL" -> (Some (FIX_StipulationType_PoolsPerLot))
        | "YIELD" -> (Some (FIX_StipulationType_YieldRange))
        | "PURPOSE" -> (Some (FIX_StipulationType_Purpose))
        | "PAYFREQ" -> (Some (FIX_StipulationType_PaymentFrequency))
        | "INSURED" -> (Some (FIX_StipulationType_Insured))
        | "SUBSFREQ" -> (Some (FIX_StipulationType_SubstitutionsFrequency))
        | "WALA" -> (Some (FIX_StipulationType_WeightedAverageLoanAge))
        | "PRICEFREQ" -> (Some (FIX_StipulationType_PricingFrequency))
        | "PMAX" -> (Some (FIX_StipulationType_PoolsMaximum))
        | "PROTECT" -> (Some (FIX_StipulationType_CallProtection))
        | "REDEMPTION" -> (Some (FIX_StipulationType_TypeOfRedemption))
        | "MATURITY" -> (Some (FIX_StipulationType_MaturityRange))
        | "SECTYPE" -> (Some (FIX_StipulationType_SecurityTypeIncludedOrExcluded))
        | "SUBSLEFT" -> (Some (FIX_StipulationType_SubstitutionsLeft))
        | "ISSUESIZE" -> (Some (FIX_StipulationType_IssueSizeRange))
        | "WAC" -> (Some (FIX_StipulationType_WeightedAverageCoupon))
        | "TEXT" -> (Some (FIX_StipulationType_FreeformText))
        | "WAL" -> (Some (FIX_StipulationType_WeightedAverageLifeCoupon))
        | "BANKQUAL" -> (Some (FIX_StipulationType_BankQualified))
        | "LOT" -> (Some (FIX_StipulationType_ExplicitLotIdentifier))
        | "TRDVAR" -> (Some (FIX_StipulationType_TradeVariance))
        | "MAXSUBS" -> (Some (FIX_StipulationType_MaximumSubstitutions))
        | "RATING" -> (Some (FIX_StipulationType_RatingSourceAndRange))
        | "MININCR" -> (Some (FIX_StipulationType_MinimumIncrement))
        | "CUSTOMDATE" -> (Some (FIX_StipulationType_CustomStart))
        | "MINDNOM" -> (Some (FIX_StipulationType_MinimumDenomination))
        | "PPM" -> (Some (FIX_StipulationType_PoolsPerMillion))
        | "ISSUE" -> (Some (FIX_StipulationType_IssueDate))
        | "GEOG" -> (Some (FIX_StipulationType_Geographics))
        | "MINQTY" -> (Some (FIX_StipulationType_MinimumQuantity))
        | "PPT" -> (Some (FIX_StipulationType_PoolsPerTrade))
        | "CURRENCY" -> (Some (FIX_StipulationType_ISOCurrencyCode))
        | "MAT" -> (Some (FIX_StipulationType_MaturityYearAndMonth))
        | "WHOLE" -> (Some (FIX_StipulationType_WholePool))
        | "AMT" -> (Some (FIX_StipulationType_AlternativeMinimumTax))
        | "ISSUER" -> (Some (FIX_StipulationType_Issuer))
        | "RESTRICTED" -> (Some (FIX_StipulationType_Restricted))
        | "PRICE" -> (Some (FIX_StipulationType_PriceRange))
        | "SECTOR" -> (Some (FIX_StipulationType_MarketSector))
        | "AUTOREINV" -> (Some (FIX_StipulationType_AutoReinvestment))
        | "PIECES" -> (Some (FIX_StipulationType_NumberOfPieces))
        | "PROD" -> (Some (FIX_StipulationType_ProductionYear))
        | "HAIRCUT" -> (Some (FIX_StipulationType_ValuationDiscount))
        | "BGNCON" -> (Some (FIX_StipulationType_BargainConditions))
        | "PXSOURCE" -> (Some (FIX_StipulationType_BenchmarkPriceSource))
        | "WAM" -> (Some (FIX_StipulationType_WeightedAverageMaturity))
        | "STRUCT" -> (Some (FIX_StipulationType_Structure))
        | "LOTVAR" -> (Some (FIX_StipulationType_LotVariance))
        | _ -> (None)
    )
;;

let parse_SubscriptionRequestType (str)  =
    (match str with
        | "2" -> (Some (FIX_SubscriptionRequestType_DisablePreviousSnapshot))
        | "1" -> (Some (FIX_SubscriptionRequestType_SnapshotAndUpdates))
        | "0" -> (Some (FIX_SubscriptionRequestType_Snapshot))
        | _ -> (None)
    )
;;

let parse_TargetStrategy (str)  =
    (match str with
        | "3" -> (Some (FIX_TargetStrategy_MininizeMarketImpact))
        | "1" -> (Some (FIX_TargetStrategy_VWAP))
        | "2" -> (Some (FIX_TargetStrategy_Participate))
        | _ -> (None)
    )
;;

let parse_TaxAdvantageType (str)  =
    (match str with
        | "5" -> (Some (FIX_TaxAdvantageType_MiniInsuranceISA))
        | "23" -> (Some (FIX_TaxAdvantageType_US457))
        | "6" -> (Some (FIX_TaxAdvantageType_CurrentYearPayment))
        | "20" -> (Some (FIX_TaxAdvantageType_US401K))
        | "8" -> (Some (FIX_TaxAdvantageType_AssetTransfer))
        | "28" -> (Some (FIX_TaxAdvantageType_EducationIRAPrototype))
        | "17" -> (Some (FIX_TaxAdvantageType_IRARollover))
        | "25" -> (Some (FIX_TaxAdvantageType_RothIRANonPrototype))
        | "3" -> (Some (FIX_TaxAdvantageType_MiniCashISA))
        | "16" -> (Some (FIX_TaxAdvantageType_IRA))
        | "21" -> (Some (FIX_TaxAdvantageType_SelfDirectedIRA))
        | "24" -> (Some (FIX_TaxAdvantageType_RothIRAPrototype))
        | "1" -> (Some (FIX_TaxAdvantageType_MaxiISA))
        | "10" -> (Some (FIX_TaxAdvantageType_EmployeeCurrentYear))
        | "13" -> (Some (FIX_TaxAdvantageType_NonFundPrototypeIRA))
        | "4" -> (Some (FIX_TaxAdvantageType_MiniStocksAndSharesISA))
        | "7" -> (Some (FIX_TaxAdvantageType_PriorYearPayment))
        | "19" -> (Some (FIX_TaxAdvantageType_ProfitSharingPlan))
        | "0" -> (Some (FIX_TaxAdvantageType_FIXNone))
        | "2" -> (Some (FIX_TaxAdvantageType_TESSA))
        | "11" -> (Some (FIX_TaxAdvantageType_EmployerPriorYear))
        | "12" -> (Some (FIX_TaxAdvantageType_EmployerCurrentYear))
        | "18" -> (Some (FIX_TaxAdvantageType_KEOGH))
        | "14" -> (Some (FIX_TaxAdvantageType_NonFundQualifiedPlan))
        | "9" -> (Some (FIX_TaxAdvantageType_EmployeePriorYear))
        | "27" -> (Some (FIX_TaxAdvantageType_RothConversionIRANonPrototype))
        | "22" -> (Some (FIX_TaxAdvantageType_US403b))
        | "26" -> (Some (FIX_TaxAdvantageType_RothConversionIRAPrototype))
        | "15" -> (Some (FIX_TaxAdvantageType_DefinedContributionPlan))
        | "29" -> (Some (FIX_TaxAdvantageType_EducationIRANonPrototype))
        | _ -> (None)
    )
;;

let parse_TerminationType (str)  =
    (match str with
        | "3" -> (Some (FIX_TerminationType_Flexible))
        | "1" -> (Some (FIX_TerminationType_Overnight))
        | "2" -> (Some (FIX_TerminationType_Term))
        | "4" -> (Some (FIX_TerminationType_Open))
        | _ -> (None)
    )
;;

let parse_TestMessageIndicator (str)  =
    (match str with
        | "N" -> (Some (FIX_TestMessageIndicator_Fales))
        | "Y" -> (Some (FIX_TestMessageIndicator_True))
        | _ -> (None)
    )
;;

let parse_TickDirection (str)  =
    (match str with
        | "3" -> (Some (FIX_TickDirection_ZeroMinusTick))
        | "0" -> (Some (FIX_TickDirection_PlusTick))
        | "2" -> (Some (FIX_TickDirection_MinusTick))
        | "1" -> (Some (FIX_TickDirection_ZeroPlusTick))
        | _ -> (None)
    )
;;

let parse_TimeInForce (str)  =
    (match str with
        | "1" -> (Some (FIX_TimeInForce_GoodTillCancel))
        | "7" -> (Some (FIX_TimeInForce_AtTheClose))
        | "3" -> (Some (FIX_TimeInForce_ImmediateOrCancel))
        | "0" -> (Some (FIX_TimeInForce_Day))
        | "4" -> (Some (FIX_TimeInForce_FillOrKill))
        | "2" -> (Some (FIX_TimeInForce_AtTheOpening))
        | "5" -> (Some (FIX_TimeInForce_GoodTillCrossing))
        | "6" -> (Some (FIX_TimeInForce_GoodTillDate))
        | _ -> (None)
    )
;;

let parse_TradSesMethod (str)  =
    (match str with
        | "2" -> (Some (FIX_TradSesMethod_OpenOutcry))
        | "1" -> (Some (FIX_TradSesMethod_Electronic))
        | "3" -> (Some (FIX_TradSesMethod_TwoParty))
        | _ -> (None)
    )
;;

let parse_TradSesMode (str)  =
    (match str with
        | "1" -> (Some (FIX_TradSesMode_Testing))
        | "2" -> (Some (FIX_TradSesMode_Simulated))
        | "3" -> (Some (FIX_TradSesMode_Production))
        | _ -> (None)
    )
;;

let parse_TradSesStatus (str)  =
    (match str with
        | "3" -> (Some (FIX_TradSesStatus_Closed))
        | "4" -> (Some (FIX_TradSesStatus_PreOpen))
        | "6" -> (Some (FIX_TradSesStatus_RequestRejected))
        | "5" -> (Some (FIX_TradSesStatus_PreClose))
        | "0" -> (Some (FIX_TradSesStatus_Unknown))
        | "1" -> (Some (FIX_TradSesStatus_Halted))
        | "2" -> (Some (FIX_TradSesStatus_Open))
        | _ -> (None)
    )
;;

let parse_TradSesStatusRejReason (str)  =
    (match str with
        | "99" -> (Some (FIX_TradSesStatusRejReason_Other))
        | "1" -> (Some (FIX_TradSesStatusRejReason_UnknownOrInvalidTradingSessionID))
        | _ -> (None)
    )
;;

let parse_TradeAllocIndicator (str)  =
    (match str with
        | "2" -> (Some (FIX_TradeAllocIndicator_UseAllocationProvidedWithTheTrade))
        | "0" -> (Some (FIX_TradeAllocIndicator_AllocationNotRequired))
        | "1" -> (Some (FIX_TradeAllocIndicator_AllocationRequired))
        | _ -> (None)
    )
;;

let parse_inner_TradeCondition (str)  =
    (match str with
        | "K" -> (Some (FIX_TradeCondition_Opened))
        | "G" -> (Some (FIX_TradeCondition_Rule127Trade))
        | "C" -> (Some (FIX_TradeCondition_CashTrade))
        | "F" -> (Some (FIX_TradeCondition_IntradayTradeDetail))
        | "I" -> (Some (FIX_TradeCondition_SoldLast))
        | "A" -> (Some (FIX_TradeCondition_Cash))
        | "N" -> (Some (FIX_TradeCondition_StoppedStock))
        | "Q" -> (Some (FIX_TradeCondition_ImbalanceMoreSellers))
        | "M" -> (Some (FIX_TradeCondition_Sold))
        | "P" -> (Some (FIX_TradeCondition_ImbalanceMoreBuyers))
        | "D" -> (Some (FIX_TradeCondition_NextDay))
        | "E" -> (Some (FIX_TradeCondition_Opening))
        | "L" -> (Some (FIX_TradeCondition_Seller))
        | "R" -> (Some (FIX_TradeCondition_OpeningPrice))
        | "B" -> (Some (FIX_TradeCondition_AveragePriceTrade))
        | "H" -> (Some (FIX_TradeCondition_Rule155Trade))
        | "J" -> (Some (FIX_TradeCondition_NextDayTrade))
        | _ -> (None)
    )
;;

let rec parse_TradeCondition_filter (f)  =
    (match f with
        | [] -> []
        | h :: t -> ((match parse_inner_TradeCondition h with
            | None -> (parse_TradeCondition_filter t)
            | Some x -> (x :: (parse_TradeCondition_filter t))
        )
        )
    )
;;

let parse_TradeCondition (str)  =
    let x = split_to_list str ' ' in
    Some (parse_TradeCondition_filter x)
;;

let parse_TradeReportRejectReason (str)  =
    (match str with
        | "99" -> (Some (FIX_TradeReportRejectReason_Other))
        | "4" -> (Some (FIX_TradeReportRejectReason_InvalidTradeType))
        | "3" -> (Some (FIX_TradeReportRejectReason_UnauthorizedToReportTrades))
        | "1" -> (Some (FIX_TradeReportRejectReason_InvalidPartyOnformation))
        | "2" -> (Some (FIX_TradeReportRejectReason_UnknownInstrument))
        | "0" -> (Some (FIX_TradeReportRejectReason_Successful))
        | _ -> (None)
    )
;;

let parse_TradeReportType (str)  =
    (match str with
        | "1" -> (Some (FIX_TradeReportType_Alleged))
        | "5" -> (Some (FIX_TradeReportType_No))
        | "6" -> (Some (FIX_TradeReportType_TradeReportCancel))
        | "3" -> (Some (FIX_TradeReportType_Decline))
        | "4" -> (Some (FIX_TradeReportType_Addendum))
        | "0" -> (Some (FIX_TradeReportType_Submit))
        | "2" -> (Some (FIX_TradeReportType_Accept))
        | "7" -> (Some (FIX_TradeReportType_LockedIn))
        | _ -> (None)
    )
;;

let parse_TradeRequestResult (str)  =
    (match str with
        | "8" -> (Some (FIX_TradeRequestResult_TradeRequestTypeNotSupported))
        | "99" -> (Some (FIX_TradeRequestResult_Other))
        | "3" -> (Some (FIX_TradeRequestResult_InvalidParties))
        | "1" -> (Some (FIX_TradeRequestResult_InvalidOrUnknownInstrument))
        | "4" -> (Some (FIX_TradeRequestResult_InvalidTransportTypeRequested))
        | "2" -> (Some (FIX_TradeRequestResult_InvalidTypeOfTradeRequested))
        | "5" -> (Some (FIX_TradeRequestResult_InvalidDestinationRequested))
        | "0" -> (Some (FIX_TradeRequestResult_Successful))
        | "9" -> (Some (FIX_TradeRequestResult_NotAuthorized))
        | _ -> (None)
    )
;;

let parse_TradeRequestStatus (str)  =
    (match str with
        | "2" -> (Some (FIX_TradeRequestStatus_Rejected))
        | "1" -> (Some (FIX_TradeRequestStatus_Completed))
        | "0" -> (Some (FIX_TradeRequestStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_TradeRequestType (str)  =
    (match str with
        | "1" -> (Some (FIX_TradeRequestType_MatchedTradesMatchingCriteria))
        | "4" -> (Some (FIX_TradeRequestType_AdvisoriesThatMatchCriteria))
        | "0" -> (Some (FIX_TradeRequestType_AllTrades))
        | "3" -> (Some (FIX_TradeRequestType_UnreportedTradesThatMatchCriteria))
        | "2" -> (Some (FIX_TradeRequestType_UnmatchedTradesThatMatchCriteria))
        | _ -> (None)
    )
;;

let parse_TradedFlatSwitch (str)  =
    (match str with
        | "Y" -> (Some (FIX_TradedFlatSwitch_TradedFlat))
        | "N" -> (Some (FIX_TradedFlatSwitch_NotTradedFlat))
        | _ -> (None)
    )
;;

let parse_TrdRegTimestampType (str)  =
    (match str with
        | "1" -> (Some (FIX_TrdRegTimestampType_ExecutionTime))
        | "2" -> (Some (FIX_TrdRegTimestampType_TimeIn))
        | "4" -> (Some (FIX_TrdRegTimestampType_BrokerReceipt))
        | "5" -> (Some (FIX_TrdRegTimestampType_BrokerExecution))
        | "3" -> (Some (FIX_TrdRegTimestampType_TimeOut))
        | _ -> (None)
    )
;;

let parse_TrdRptStatus (str)  =
    (match str with
        | "1" -> (Some (FIX_TrdRptStatus_Rejected))
        | "0" -> (Some (FIX_TrdRptStatus_Accepted))
        | _ -> (None)
    )
;;

let parse_TrdType (str)  =
    (match str with
        | "1" -> (Some (FIX_TrdType_BlockTrade))
        | "5" -> (Some (FIX_TrdType_TTrade))
        | "7" -> (Some (FIX_TrdType_BunchedTrade))
        | "6" -> (Some (FIX_TrdType_WeightedAveragePriceTrade))
        | "9" -> (Some (FIX_TrdType_PriorReferencePriceTrade))
        | "10" -> (Some (FIX_TrdType_AfterHoursTrade))
        | "3" -> (Some (FIX_TrdType_Transfer))
        | "4" -> (Some (FIX_TrdType_LateTrade))
        | "8" -> (Some (FIX_TrdType_LateBunchedTrade))
        | "0" -> (Some (FIX_TrdType_RegularTrade))
        | "2" -> (Some (FIX_TrdType_EFP))
        | _ -> (None)
    )
;;

let parse_UnsolicitedIndicator (str)  =
    (match str with
        | "N" -> (Some (FIX_UnsolicitedIndicator_MessageIsBeingSentAsAResultOfAPriorRequest))
        | "Y" -> (Some (FIX_UnsolicitedIndicator_MessageIsBeingSentUnsolicited))
        | _ -> (None)
    )
;;

let parse_Urgency (str)  =
    (match str with
        | "1" -> (Some (FIX_Urgency_Flash))
        | "2" -> (Some (FIX_Urgency_Background))
        | "0" -> (Some (FIX_Urgency_Normal))
        | _ -> (None)
    )
;;

let parse_UserRequestType (str)  =
    (match str with
        | "4" -> (Some (FIX_UserRequestType_RequestIndividualUserStatus))
        | "2" -> (Some (FIX_UserRequestType_LogOffUser))
        | "1" -> (Some (FIX_UserRequestType_LogOnUser))
        | "3" -> (Some (FIX_UserRequestType_ChangePasswordForUser))
        | _ -> (None)
    )
;;

let parse_UserStatus (str)  =
    (match str with
        | "3" -> (Some (FIX_UserStatus_UserNotRecognised))
        | "6" -> (Some (FIX_UserStatus_Other))
        | "5" -> (Some (FIX_UserStatus_PasswordChanged))
        | "2" -> (Some (FIX_UserStatus_NotLoggedIn))
        | "1" -> (Some (FIX_UserStatus_LoggedIn))
        | "4" -> (Some (FIX_UserStatus_PasswordIncorrect))
        | _ -> (None)
    )
;;

let parse_WorkingIndicator (str)  =
    (match str with
        | "Y" -> (Some (FIX_WorkingIndicator_Working))
        | "N" -> (Some (FIX_WorkingIndicator_NotWorking))
        | _ -> (None)
    )
;;

let parse_YieldType (str)  =
    (match str with
        | "AFTERTAX" -> (Some (FIX_YieldType_AfterTaxYield))
        | "NEXTREFUND" -> (Some (FIX_YieldType_YieldToNextRefund))
        | "SEMIANNUAL" -> (Some (FIX_YieldType_SemiAnnualYield))
        | "SIMPLE" -> (Some (FIX_YieldType_SimpleYield))
        | "GOVTEQUIV" -> (Some (FIX_YieldType_GvntEquivalentYield))
        | "LONGAVGLIFE" -> (Some (FIX_YieldType_YieldToLongestAverageLife))
        | "LASTQUARTER" -> (Some (FIX_YieldType_ClosingYieldMostRecentQuarter))
        | "SHORTAVGLIFE" -> (Some (FIX_YieldType_YieldToShortestAverageLife))
        | "CALL" -> (Some (FIX_YieldType_YieldToNextCall))
        | "PUT" -> (Some (FIX_YieldType_YieldToNextPut))
        | "GROSS" -> (Some (FIX_YieldType_TrueGrossYield))
        | "INVERSEFLOATER" -> (Some (FIX_YieldType_InverseFloaterBondYield))
        | "MATURITY" -> (Some (FIX_YieldType_YieldToMaturity))
        | "INFLATION" -> (Some (FIX_YieldType_YieldWithInflationAssumption))
        | "TAXEQUIV" -> (Some (FIX_YieldType_TaxEquivalentYield))
        | "TENDER" -> (Some (FIX_YieldType_YieldToTenderDate))
        | "WORST" -> (Some (FIX_YieldType_YieldToWorst))
        | "CLOSE" -> (Some (FIX_YieldType_ClosingYield))
        | "ATISSUE" -> (Some (FIX_YieldType_YieldAtIssue))
        | "AVGMATURITY" -> (Some (FIX_YieldType_YieldToAverageMaturity))
        | "BOOK" -> (Some (FIX_YieldType_BookYield))
        | "CURRENT" -> (Some (FIX_YieldType_CurrentYield))
        | "LASTMONTH" -> (Some (FIX_YieldType_ClosingYieldMostRecentMonth))
        | "LASTYEAR" -> (Some (FIX_YieldType_ClosingYieldMostRecentYear))
        | "COMPOUND" -> (Some (FIX_YieldType_CompoundYield))
        | "CHANGE" -> (Some (FIX_YieldType_YieldChangeSinceClose))
        | "OPENAVG" -> (Some (FIX_YieldType_OpenAverageYield))
        | "MARK" -> (Some (FIX_YieldType_MarkToMarketYield))
        | "VALUE1/32" -> (Some (FIX_YieldType_YieldValueOf132))
        | "TRUE" -> (Some (FIX_YieldType_TrueYield))
        | "ANNUAL" -> (Some (FIX_YieldType_AnnualYield))
        | "PREVCLOSE" -> (Some (FIX_YieldType_PreviousCloseYield))
        | "LASTCLOSE" -> (Some (FIX_YieldType_MostRecentClosingYield))
        | "PROCEEDS" -> (Some (FIX_YieldType_ProceedsYield))
        | _ -> (None)
    )
;;

let parse_week (str)  =
    (match str with
        | "w1" -> (Some (FIX_week_w1))
        | "w2" -> (Some (FIX_week_w2))
        | "w3" -> (Some (FIX_week_w3))
        | "noweek" -> (Some (FIX_week_noweek))
        | "w4" -> (Some (FIX_week_w4))
        | "w5" -> (Some (FIX_week_w5))
        | _ -> (None)
    )
;;

let parse_Currency (str)  =
    (match str with
        | "EUR" -> (Some (FIX_Currency_EUR))
        | "CHF" -> (Some (FIX_Currency_CHF))
        | "USD" -> (Some (FIX_Currency_USD))
        | "GBP" -> (Some (FIX_Currency_GBP))
        | _ -> (None)
    )
;;

let parse_Country (str)  =
    (match str with
        | "DE" -> (Some (FIX_Country_DE))
        | "GB" -> (Some (FIX_Country_GB))
        | "US" -> (Some (FIX_Country_US))
        | _ -> (None)
    )
;;

let parse_Exchange (str)  =
    (match str with
        | "XSHG" -> (Some (FIX_Exchange_XSHG))
        | "SHSC" -> (Some (FIX_Exchange_SHSC))
        | "XNYS" -> (Some (FIX_Exchange_XNYS))
        | "XJAS" -> (Some (FIX_Exchange_XJAS))
        | "XLON" -> (Some (FIX_Exchange_XLON))
        | "XNAS" -> (Some (FIX_Exchange_XNAS))
        | _ -> (None)
    )
;;
