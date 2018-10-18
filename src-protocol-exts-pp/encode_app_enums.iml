(* Aesthetic Integration copyright 2018 *)
open Full_app_enums;;
open Parser_utils.Parser;;

let encode_AccountType (d)  =
    (match d with
        | FIX_AccountType_CarriedCustomerSide -> "1"
        | FIX_AccountType_HouseTrader -> "3"
        | FIX_AccountType_CarriedNonCustomerSide -> "2"
        | FIX_AccountType_CarriedNonCustomerSideCrossMargined -> "6"
        | FIX_AccountType_JointBackOfficeAccount -> "8"
        | FIX_AccountType_HouseTraderCrossMargined -> "7"
        | FIX_AccountType_FloorTrader -> "4"
    )
;;

let encode_AcctIDSource (d)  =
    (match d with
        | FIX_AcctIDSource_Other -> "99"
        | FIX_AcctIDSource_BIC -> "1"
        | FIX_AcctIDSource_TFM -> "3"
        | FIX_AcctIDSource_DTCCCode -> "5"
        | FIX_AcctIDSource_SIDCode -> "2"
        | FIX_AcctIDSource_OMGEO -> "4"
    )
;;

let encode_Adjustment (d)  =
    (match d with
        | FIX_Adjustment_Cancel -> "1"
        | FIX_Adjustment_Error -> "2"
        | FIX_Adjustment_Correction -> "3"
    )
;;

let encode_AdjustmentType (d)  =
    (match d with
        | FIX_AdjustmentType_ProcessRequestAsMarginDisposition -> "0"
        | FIX_AdjustmentType_DeltaPlus -> "1"
        | FIX_AdjustmentType_Final -> "3"
        | FIX_AdjustmentType_DeltaMinus -> "2"
    )
;;

let encode_AdvSide (d)  =
    (match d with
        | FIX_AdvSide_Buy -> "B"
        | FIX_AdvSide_Sell -> "S"
        | FIX_AdvSide_Trade -> "T"
        | FIX_AdvSide_Cross -> "X"
    )
;;

let encode_AdvTransType (d)  =
    (match d with
        | FIX_AdvTransType_Cancel -> "C"
        | FIX_AdvTransType_Replace -> "R"
        | FIX_AdvTransType_New -> "N"
    )
;;

let encode_AffirmStatus (d)  =
    (match d with
        | FIX_AffirmStatus_Affirmed -> "3"
        | FIX_AffirmStatus_Received -> "1"
        | FIX_AffirmStatus_ConfirmRejected -> "2"
    )
;;

let encode_AggregatedBook (d)  =
    (match d with
        | FIX_AggregatedBook_BookEntriesToBeAggregated -> "Y"
        | FIX_AggregatedBook_BookEntriesShouldNotBeAggregated -> "N"
    )
;;

let encode_AllocAccountType (d)  =
    (match d with
        | FIX_AllocAccountType_CarriedCustomerSide -> "1"
        | FIX_AllocAccountType_HouseTrader -> "3"
        | FIX_AllocAccountType_CarriedNonCustomerSide -> "2"
        | FIX_AllocAccountType_CarriedNonCustomerSideCrossMargined -> "6"
        | FIX_AllocAccountType_JointBackOfficeAccount -> "8"
        | FIX_AllocAccountType_HouseTraderCrossMargined -> "7"
        | FIX_AllocAccountType_FloorTrader -> "4"
    )
;;

let encode_AllocCancReplaceReason (d)  =
    (match d with
        | FIX_AllocCancReplaceReason_Other -> "99"
        | FIX_AllocCancReplaceReason_ChangeInUnderlyingOrderDetails -> "2"
        | FIX_AllocCancReplaceReason_OriginalDetailsIncomplete -> "1"
    )
;;

let encode_AllocHandlInst (d)  =
    (match d with
        | FIX_AllocHandlInst_ForwardAndMatch -> "3"
        | FIX_AllocHandlInst_Forward -> "2"
        | FIX_AllocHandlInst_Match -> "1"
    )
;;

let encode_AllocIntermedReqType (d)  =
    (match d with
        | FIX_AllocIntermedReqType_PendingAccept -> "1"
        | FIX_AllocIntermedReqType_BlockLevelReject -> "5"
        | FIX_AllocIntermedReqType_PendingRelease -> "2"
        | FIX_AllocIntermedReqType_PendingReversal -> "3"
        | FIX_AllocIntermedReqType_AccountLevelReject -> "6"
        | FIX_AllocIntermedReqType_Accept -> "4"
    )
;;

let encode_AllocLinkType (d)  =
    (match d with
        | FIX_AllocLinkType_FXSwap -> "1"
        | FIX_AllocLinkType_FXNetting -> "0"
    )
;;

let encode_AllocNoOrdersType (d)  =
    (match d with
        | FIX_AllocNoOrdersType_ExplicitListProvided -> "1"
        | FIX_AllocNoOrdersType_NotSpecified -> "0"
    )
;;

let encode_AllocRejCode (d)  =
    (match d with
        | FIX_AllocRejCode_UnknownOrStaleExecID -> "10"
        | FIX_AllocRejCode_UnknownAccount -> "0"
        | FIX_AllocRejCode_OtherSeeText -> "7"
        | FIX_AllocRejCode_UnknownListID -> "6"
        | FIX_AllocRejCode_CalculationDifference -> "9"
        | FIX_AllocRejCode_IncorrectQuantity -> "1"
        | FIX_AllocRejCode_UnknownClOrdID -> "12"
        | FIX_AllocRejCode_CommissionDifference -> "4"
        | FIX_AllocRejCode_WarehouseRequestRejected -> "13"
        | FIX_AllocRejCode_UnknownExecutingBrokerMnemonic -> "3"
        | FIX_AllocRejCode_MismatchedData -> "11"
        | FIX_AllocRejCode_UnknownOrderID -> "5"
        | FIX_AllocRejCode_IncorrectAveragegPrice -> "2"
        | FIX_AllocRejCode_IncorrectAllocatedQuantity -> "8"
    )
;;

let encode_AllocReportType (d)  =
    (match d with
        | FIX_AllocReportType_SellsideCalculatedWithoutPreliminary -> "4"
        | FIX_AllocReportType_WarehouseRecap -> "5"
        | FIX_AllocReportType_SellsideCalculatedUsingPreliminary -> "3"
        | FIX_AllocReportType_RequestToIntermediary -> "8"
    )
;;

let encode_AllocSettlInstType (d)  =
    (match d with
        | FIX_AllocSettlInstType_DeriveFromParametersProvided -> "1"
        | FIX_AllocSettlInstType_FullDetailsProvided -> "2"
        | FIX_AllocSettlInstType_PhoneForInstructions -> "4"
        | FIX_AllocSettlInstType_UseDefaultInstructions -> "0"
        | FIX_AllocSettlInstType_SSIDBIDsProvided -> "3"
    )
;;

let encode_AllocStatus (d)  =
    (match d with
        | FIX_AllocStatus_Incomplete -> "4"
        | FIX_AllocStatus_Received -> "3"
        | FIX_AllocStatus_BlockLevelReject -> "1"
        | FIX_AllocStatus_AccountLevelReject -> "2"
        | FIX_AllocStatus_RejectedByIntermediary -> "5"
        | FIX_AllocStatus_Accepted -> "0"
    )
;;

let encode_AllocTransType (d)  =
    (match d with
        | FIX_AllocTransType_Replace -> "1"
        | FIX_AllocTransType_Cancel -> "2"
        | FIX_AllocTransType_New -> "0"
    )
;;

let encode_AllocType (d)  =
    (match d with
        | FIX_AllocType_Preliminary -> "2"
        | FIX_AllocType_ReadyToBook -> "5"
        | FIX_AllocType_Calculated -> "1"
        | FIX_AllocType_WarehouseInstruction -> "7"
        | FIX_AllocType_RequestToIntermediary -> "8"
    )
;;

let encode_ApplQueueAction (d)  =
    (match d with
        | FIX_ApplQueueAction_NoActionTaken -> "0"
        | FIX_ApplQueueAction_OverlayLast -> "2"
        | FIX_ApplQueueAction_QueueFlushed -> "1"
        | FIX_ApplQueueAction_EndSession -> "3"
    )
;;

let encode_ApplQueueResolution (d)  =
    (match d with
        | FIX_ApplQueueResolution_NoActionTaken -> "0"
        | FIX_ApplQueueResolution_OverlayLast -> "2"
        | FIX_ApplQueueResolution_QueueFlushed -> "1"
        | FIX_ApplQueueResolution_EndSession -> "3"
    )
;;

let encode_AssignmentMethod (d)  =
    (match d with
        | FIX_AssignmentMethod_Random -> "R"
        | FIX_AssignmentMethod_ProRata -> "P"
    )
;;

let encode_AvgPxIndicator (d)  =
    (match d with
        | FIX_AvgPxIndicator_NoAveragePricing -> "0"
        | FIX_AvgPxIndicator_Trade -> "1"
        | FIX_AvgPxIndicator_LastTrade -> "2"
    )
;;

let encode_BasisPxType (d)  =
    (match d with
        | FIX_BasisPxType_Others -> "Z"
        | FIX_BasisPxType_VWAPThroughADay -> "6"
        | FIX_BasisPxType_VWAPThroughAnAfternoonSessionExcept -> "B"
        | FIX_BasisPxType_VWAPThroughAMorningSession -> "7"
        | FIX_BasisPxType_ClosingPrice -> "3"
        | FIX_BasisPxType_CurrentPrice -> "4"
        | FIX_BasisPxType_Strike -> "C"
        | FIX_BasisPxType_Open -> "D"
        | FIX_BasisPxType_ClosingPriceAtMorningSession -> "2"
        | FIX_BasisPxType_VWAPThroughADayExcept -> "9"
        | FIX_BasisPxType_VWAPThroughAMorningSessionExcept -> "A"
        | FIX_BasisPxType_VWAPThroughAnAfternoonSession -> "8"
        | FIX_BasisPxType_SQ -> "5"
    )
;;

let encode_BidDescriptorType (d)  =
    (match d with
        | FIX_BidDescriptorType_Sector -> "1"
        | FIX_BidDescriptorType_Index -> "3"
        | FIX_BidDescriptorType_Country -> "2"
    )
;;

let encode_BidRequestTransType (d)  =
    (match d with
        | FIX_BidRequestTransType_Cancel -> "C"
        | FIX_BidRequestTransType_New -> "N"
    )
;;

let encode_BidTradeType (d)  =
    (match d with
        | FIX_BidTradeType_Agency -> "A"
        | FIX_BidTradeType_RiskTrade -> "R"
        | FIX_BidTradeType_VWAPGuarantee -> "G"
        | FIX_BidTradeType_GuaranteedClose -> "J"
    )
;;

let encode_BidType (d)  =
    (match d with
        | FIX_BidType_Disclosed -> "2"
        | FIX_BidType_NoBiddingProcess -> "3"
        | FIX_BidType_NonDisclosed -> "1"
    )
;;

let encode_BookingType (d)  =
    (match d with
        | FIX_BookingType_CFD -> "1"
        | FIX_BookingType_RegularBooking -> "0"
        | FIX_BookingType_TotalReturnSwap -> "2"
    )
;;

let encode_BookingUnit (d)  =
    (match d with
        | FIX_BookingUnit_AggregatePartialExecutionsOnThisOrder -> "1"
        | FIX_BookingUnit_AggregateExecutionsForThisSymbol -> "2"
        | FIX_BookingUnit_EachPartialExecutionIsABookableUnit -> "0"
    )
;;

let encode_CPProgram (d)  =
    (match d with
        | FIX_CPProgram_Other -> "99"
        | FIX_CPProgram_Program3a3 -> "1"
        | FIX_CPProgram_Program42 -> "2"
    )
;;

let encode_CancellationRights (d)  =
    (match d with
        | FIX_CancellationRights_NoWaiverAgreement -> "M"
        | FIX_CancellationRights_NoExecutionOnly -> "N"
        | FIX_CancellationRights_Yes -> "Y"
        | FIX_CancellationRights_NoInstitutional -> "O"
    )
;;

let encode_CashMargin (d)  =
    (match d with
        | FIX_CashMargin_MarginOpen -> "2"
        | FIX_CashMargin_Cash -> "1"
        | FIX_CashMargin_MarginClose -> "3"
    )
;;

let encode_ClearingFeeIndicator (d)  =
    (match d with
        | FIX_ClearingFeeIndicator_CBOEMember -> "B"
        | FIX_ClearingFeeIndicator_ThirdYearDelegate -> "3"
        | FIX_ClearingFeeIndicator_SixthYearDelegate -> "9"
        | FIX_ClearingFeeIndicator_FourthYearDelegate -> "4"
        | FIX_ClearingFeeIndicator_FirstYearDelegate -> "1"
        | FIX_ClearingFeeIndicator_SecondYearDelegate -> "2"
        | FIX_ClearingFeeIndicator_GIM -> "I"
        | FIX_ClearingFeeIndicator_FullAndAssociateMember -> "F"
        | FIX_ClearingFeeIndicator_Firms106HAnd106J -> "H"
        | FIX_ClearingFeeIndicator_Lessee106FEmployees -> "L"
        | FIX_ClearingFeeIndicator_EquityMemberAndClearingMember -> "E"
        | FIX_ClearingFeeIndicator_NonMemberAndCustomer -> "C"
        | FIX_ClearingFeeIndicator_AllOtherOwnershipTypes -> "M"
        | FIX_ClearingFeeIndicator_FifthYearDelegate -> "5"
    )
;;

let encode_ClearingInstruction (d)  =
    (match d with
        | FIX_ClearingInstruction_QualifiedServiceRepresentativeQSR -> "11"
        | FIX_ClearingInstruction_SpecialTrade -> "4"
        | FIX_ClearingInstruction_SelfClearing -> "13"
        | FIX_ClearingInstruction_BilateralNettingOnly -> "2"
        | FIX_ClearingInstruction_AutomaticPostingMode -> "9"
        | FIX_ClearingInstruction_AutomaticGiveUpMode -> "10"
        | FIX_ClearingInstruction_ClearAgainstCentralCounterparty -> "6"
        | FIX_ClearingInstruction_ProcessNormally -> "0"
        | FIX_ClearingInstruction_ExClearing -> "3"
        | FIX_ClearingInstruction_ManualMode -> "8"
        | FIX_ClearingInstruction_ExcludeFromCentralCounterparty -> "7"
        | FIX_ClearingInstruction_CustomerTrade -> "12"
        | FIX_ClearingInstruction_ExcludeFromAllNetting -> "1"
        | FIX_ClearingInstruction_MultilateralNetting -> "5"
    )
;;

let encode_CollAction (d)  =
    (match d with
        | FIX_CollAction_Add -> "1"
        | FIX_CollAction_Retain -> "0"
        | FIX_CollAction_Remove -> "2"
    )
;;

let encode_CollAsgnReason (d)  =
    (match d with
        | FIX_CollAsgnReason_Scheduled -> "1"
        | FIX_CollAsgnReason_AdverseTaxEvent -> "7"
        | FIX_CollAsgnReason_MarginExcess -> "4"
        | FIX_CollAsgnReason_ForwardCollateralDemand -> "5"
        | FIX_CollAsgnReason_MarginDeficiency -> "3"
        | FIX_CollAsgnReason_Initial -> "0"
        | FIX_CollAsgnReason_TimeWarning -> "2"
        | FIX_CollAsgnReason_EventOfDefault -> "6"
    )
;;

let encode_CollAsgnRejectReason (d)  =
    (match d with
        | FIX_CollAsgnRejectReason_Other -> "99"
        | FIX_CollAsgnRejectReason_InvalidTypeOfCollateral -> "4"
        | FIX_CollAsgnRejectReason_UnauthorizedTransaction -> "2"
        | FIX_CollAsgnRejectReason_UnknownDeal -> "0"
        | FIX_CollAsgnRejectReason_UnknownOrInvalidInstrument -> "1"
        | FIX_CollAsgnRejectReason_ExcessiveSubstitution -> "5"
        | FIX_CollAsgnRejectReason_InsufficientCollateral -> "3"
    )
;;

let encode_CollAsgnRespType (d)  =
    (match d with
        | FIX_CollAsgnRespType_Declined -> "2"
        | FIX_CollAsgnRespType_Received -> "0"
        | FIX_CollAsgnRespType_Rejected -> "3"
        | FIX_CollAsgnRespType_Accepted -> "1"
    )
;;

let encode_CollAsgnTransType (d)  =
    (match d with
        | FIX_CollAsgnTransType_Replace -> "1"
        | FIX_CollAsgnTransType_Cancel -> "2"
        | FIX_CollAsgnTransType_Reverse -> "4"
        | FIX_CollAsgnTransType_New -> "0"
        | FIX_CollAsgnTransType_Release -> "3"
    )
;;

let encode_CollInquiryQualifier (d)  =
    (match d with
        | FIX_CollInquiryQualifier_PartiallyAssigned -> "5"
        | FIX_CollInquiryQualifier_FullyAssigned -> "6"
        | FIX_CollInquiryQualifier_NotAssigned -> "4"
        | FIX_CollInquiryQualifier_CollateralInstrument -> "2"
        | FIX_CollInquiryQualifier_TradeDate -> "0"
        | FIX_CollInquiryQualifier_GCInstrument -> "1"
        | FIX_CollInquiryQualifier_SubstitutionEligible -> "3"
        | FIX_CollInquiryQualifier_OutstandingTrades -> "7"
    )
;;

let encode_CollInquiryResult (d)  =
    (match d with
        | FIX_CollInquiryResult_Other -> "99"
        | FIX_CollInquiryResult_InvalidParties -> "3"
        | FIX_CollInquiryResult_InvalidOrUnknownInstrument -> "1"
        | FIX_CollInquiryResult_InvalidTransportTypeRequested -> "4"
        | FIX_CollInquiryResult_NoCollateralFoundForTheOrderSpecified -> "7"
        | FIX_CollInquiryResult_InvalidDestinationRequested -> "5"
        | FIX_CollInquiryResult_CollateralInquiryTypeNotSupported -> "8"
        | FIX_CollInquiryResult_InvalidOrUnknownCollateralType -> "2"
        | FIX_CollInquiryResult_NoCollateralFoundForTheTradeSpecified -> "6"
        | FIX_CollInquiryResult_UnauthorizedForCollateralInquiry -> "9"
        | FIX_CollInquiryResult_Successful -> "0"
    )
;;

let encode_CollInquiryStatus (d)  =
    (match d with
        | FIX_CollInquiryStatus_AcceptedWithWarnings -> "1"
        | FIX_CollInquiryStatus_CompletedWithWarnings -> "3"
        | FIX_CollInquiryStatus_Rejected -> "4"
        | FIX_CollInquiryStatus_Completed -> "2"
        | FIX_CollInquiryStatus_Accepted -> "0"
    )
;;

let encode_CollStatus (d)  =
    (match d with
        | FIX_CollStatus_AssignmentProposed -> "2"
        | FIX_CollStatus_PartiallyAssigned -> "1"
        | FIX_CollStatus_Assigned -> "3"
        | FIX_CollStatus_Challenged -> "4"
        | FIX_CollStatus_Unassigned -> "0"
    )
;;

let encode_CommType (d)  =
    (match d with
        | FIX_CommType_PercentageWaivedEnhancedUnits -> "5"
        | FIX_CommType_PointsPerBondOrContract -> "6"
        | FIX_CommType_Percent -> "2"
        | FIX_CommType_PerUnit -> "1"
        | FIX_CommType_Absolute -> "3"
        | FIX_CommType_PercentageWaivedCashDiscount -> "4"
    )
;;

let encode_ConfirmRejReason (d)  =
    (match d with
        | FIX_ConfirmRejReason_MissingSettlementInstructions -> "2"
        | FIX_ConfirmRejReason_Other -> "99"
        | FIX_ConfirmRejReason_MismatchedAccount -> "1"
    )
;;

let encode_ConfirmStatus (d)  =
    (match d with
        | FIX_ConfirmStatus_MissingSettlementInstructions -> "3"
        | FIX_ConfirmStatus_RequestRejected -> "5"
        | FIX_ConfirmStatus_Received -> "1"
        | FIX_ConfirmStatus_MismatchedAccount -> "2"
        | FIX_ConfirmStatus_Confirmed -> "4"
    )
;;

let encode_ConfirmTransType (d)  =
    (match d with
        | FIX_ConfirmTransType_Replace -> "1"
        | FIX_ConfirmTransType_Cancel -> "2"
        | FIX_ConfirmTransType_New -> "0"
    )
;;

let encode_ConfirmType (d)  =
    (match d with
        | FIX_ConfirmType_ConfirmationRequestRejected -> "3"
        | FIX_ConfirmType_Status -> "1"
        | FIX_ConfirmType_Confirmation -> "2"
    )
;;

let encode_ContAmtType (d)  =
    (match d with
        | FIX_ContAmtType_CommissionAmount -> "1"
        | FIX_ContAmtType_FundBasedRenewalCommissionOnOrder -> "13"
        | FIX_ContAmtType_FundBasedRenewalCommissionOnFund -> "14"
        | FIX_ContAmtType_InitialChargePercent -> "4"
        | FIX_ContAmtType_ExitChargeAmount -> "9"
        | FIX_ContAmtType_DilutionLevyPercent -> "8"
        | FIX_ContAmtType_ExitChargePercent -> "10"
        | FIX_ContAmtType_DiscountAmount -> "5"
        | FIX_ContAmtType_NetSettlementAmount -> "15"
        | FIX_ContAmtType_InitialChargeAmount -> "3"
        | FIX_ContAmtType_ProjectedFundValue -> "12"
        | FIX_ContAmtType_DiscountPercent -> "6"
        | FIX_ContAmtType_DilutionLevyAmount -> "7"
        | FIX_ContAmtType_CommissionPercent -> "2"
        | FIX_ContAmtType_FundBasedRenewalCommissionPercent -> "11"
    )
;;

let enncode_inner_CorporateAction (d)  =
    (match d with
        | FIX_CorporateAction_ExDistribution -> "B"
        | FIX_CorporateAction_ExDividend -> "A"
        | FIX_CorporateAction_ExInterest -> "E"
        | FIX_CorporateAction_ExRights -> "C"
        | FIX_CorporateAction_New -> "D"
    )
;;

let encode_CorporateAction (d)  =
    list_to_split (List.map enncode_inner_CorporateAction d) ' '
;;

let encode_CoveredOrUncovered (d)  =
    (match d with
        | FIX_CoveredOrUncovered_Uncovered -> "1"
        | FIX_CoveredOrUncovered_Covered -> "0"
    )
;;

let encode_CrossPrioritization (d)  =
    (match d with
        | FIX_CrossPrioritization_BuySideIsPrioritized -> "1"
        | FIX_CrossPrioritization_SellSideIsPrioritized -> "2"
        | FIX_CrossPrioritization_FIXNone -> "0"
    )
;;

let encode_CrossType (d)  =
    (match d with
        | FIX_CrossType_CrossIOC -> "2"
        | FIX_CrossType_CrossOneSide -> "3"
        | FIX_CrossType_CrossSamePrice -> "4"
        | FIX_CrossType_CrossAON -> "1"
    )
;;

let encode_CustOrderCapacity (d)  =
    (match d with
        | FIX_CustOrderCapacity_MemberTradingForTheirOwnAccount -> "1"
        | FIX_CustOrderCapacity_AllOther -> "4"
        | FIX_CustOrderCapacity_ClearingFirmTradingForItsProprietaryAccount -> "2"
        | FIX_CustOrderCapacity_MemberTradingForAnotherMember -> "3"
    )
;;

let encode_CxlRejReason (d)  =
    (match d with
        | FIX_CxlRejReason_Other -> "99"
        | FIX_CxlRejReason_OrderAlreadyInPendingStatus -> "3"
        | FIX_CxlRejReason_TooLateToCancel -> "0"
        | FIX_CxlRejReason_UnknownOrder -> "1"
        | FIX_CxlRejReason_UnableToProcessOrderMassCancelRequest -> "4"
        | FIX_CxlRejReason_OrigOrdModTime -> "5"
        | FIX_CxlRejReason_DuplicateClOrdID -> "6"
        | FIX_CxlRejReason_BrokerCredit -> "2"
    )
;;

let encode_CxlRejResponseTo (d)  =
    (match d with
        | FIX_CxlRejResponseTo_OrderCancelRequest -> "1"
        | FIX_CxlRejResponseTo_OrderCancel -> "2"
    )
;;

let encode_DKReason (d)  =
    (match d with
        | FIX_DKReason_WrongSide -> "B"
        | FIX_DKReason_QuantityExceedsOrder -> "C"
        | FIX_DKReason_Other -> "Z"
        | FIX_DKReason_CalculationDifference -> "F"
        | FIX_DKReason_NoMatchingOrder -> "D"
        | FIX_DKReason_PriceExceedsLimit -> "E"
        | FIX_DKReason_UnknownSymbol -> "A"
    )
;;

let encode_DayBookingInst (d)  =
    (match d with
        | FIX_DayBookingInst_Auto -> "0"
        | FIX_DayBookingInst_SpeakWithOrderInitiatorBeforeBooking -> "1"
        | FIX_DayBookingInst_Accumulate -> "2"
    )
;;

let encode_DeleteReason (d)  =
    (match d with
        | FIX_DeleteReason_Error -> "1"
        | FIX_DeleteReason_Cancellation -> "0"
    )
;;

let encode_DeliveryForm (d)  =
    (match d with
        | FIX_DeliveryForm_BookEntry -> "1"
        | FIX_DeliveryForm_Bearer -> "2"
    )
;;

let encode_DeliveryType (d)  =
    (match d with
        | FIX_DeliveryType_TriParty -> "2"
        | FIX_DeliveryType_VersusPayment -> "0"
        | FIX_DeliveryType_HoldInCustody -> "3"
        | FIX_DeliveryType_Free -> "1"
    )
;;

let encode_DiscretionInst (d)  =
    (match d with
        | FIX_DiscretionInst_RelatedToPrimaryPrice -> "2"
        | FIX_DiscretionInst_RelatedToMidpointPrice -> "4"
        | FIX_DiscretionInst_RelatedToLastTradePrice -> "5"
        | FIX_DiscretionInst_RelatedToDisplayedPrice -> "0"
        | FIX_DiscretionInst_RelatedToVWAP -> "6"
        | FIX_DiscretionInst_RelatedToMarketPrice -> "1"
        | FIX_DiscretionInst_RelatedToLocalPrimaryPrice -> "3"
    )
;;

let encode_DiscretionLimitType (d)  =
    (match d with
        | FIX_DiscretionLimitType_Strict -> "1"
        | FIX_DiscretionLimitType_OrBetter -> "0"
        | FIX_DiscretionLimitType_OrWorse -> "2"
    )
;;

let encode_DiscretionMoveType (d)  =
    (match d with
        | FIX_DiscretionMoveType_Fixed -> "1"
        | FIX_DiscretionMoveType_Floating -> "0"
    )
;;

let encode_DiscretionOffsetType (d)  =
    (match d with
        | FIX_DiscretionOffsetType_BasisPoints -> "1"
        | FIX_DiscretionOffsetType_Price -> "0"
        | FIX_DiscretionOffsetType_Ticks -> "2"
        | FIX_DiscretionOffsetType_PriceTier -> "3"
    )
;;

let encode_DiscretionRoundDirection (d)  =
    (match d with
        | FIX_DiscretionRoundDirection_MoreAggressive -> "1"
        | FIX_DiscretionRoundDirection_MorePassive -> "2"
    )
;;

let encode_DiscretionScope (d)  =
    (match d with
        | FIX_DiscretionScope_National -> "2"
        | FIX_DiscretionScope_Local -> "1"
        | FIX_DiscretionScope_NationalExcludingLocal -> "4"
        | FIX_DiscretionScope_Global -> "3"
    )
;;

let encode_DistribPaymentMethod (d)  =
    (match d with
        | FIX_DistribPaymentMethod_CREST -> "1"
        | FIX_DistribPaymentMethod_NSCC -> "2"
        | FIX_DistribPaymentMethod_HighValueClearingSystemHVACS -> "11"
        | FIX_DistribPaymentMethod_DirectCredit -> "8"
        | FIX_DistribPaymentMethod_ReinvestInFund -> "12"
        | FIX_DistribPaymentMethod_ACHCredit -> "9"
        | FIX_DistribPaymentMethod_Clearstream -> "4"
        | FIX_DistribPaymentMethod_BPAY -> "10"
        | FIX_DistribPaymentMethod_Cheque -> "5"
        | FIX_DistribPaymentMethod_Euroclear -> "3"
        | FIX_DistribPaymentMethod_FedWire -> "7"
        | FIX_DistribPaymentMethod_TelegraphicTransfer -> "6"
    )
;;

let encode_DlvyInstType (d)  =
    (match d with
        | FIX_DlvyInstType_Cash -> "C"
        | FIX_DlvyInstType_Securities -> "S"
    )
;;

let encode_DueToRelated (d)  =
    (match d with
        | FIX_DueToRelated_RelatedToSecurityHalt -> "Y"
        | FIX_DueToRelated_NotRelatedToSecurityHalt -> "N"
    )
;;

let encode_EmailType (d)  =
    (match d with
        | FIX_EmailType_Reply -> "1"
        | FIX_EmailType_AdminReply -> "2"
        | FIX_EmailType_New -> "0"
    )
;;

let encode_EventType (d)  =
    (match d with
        | FIX_EventType_Other -> "99"
        | FIX_EventType_Call -> "2"
        | FIX_EventType_Tender -> "3"
        | FIX_EventType_Put -> "1"
        | FIX_EventType_SinkingFundCall -> "4"
    )
;;

let encode_ExchangeForPhysical (d)  =
    (match d with
        | FIX_ExchangeForPhysical_True -> "Y"
        | FIX_ExchangeForPhysical_False -> "N"
    )
;;

let enncode_inner_ExecInst (d)  =
    (match d with
        | FIX_ExecInst_ParticipateDoNotInitiate -> "6"
        | FIX_ExecInst_AllOrNone -> "G"
        | FIX_ExecInst_CallFirst -> "C"
        | FIX_ExecInst_PercentOfVolume -> "D"
        | FIX_ExecInst_InstitutionsOnly -> "I"
        | FIX_ExecInst_NoCross -> "A"
        | FIX_ExecInst_OverTheDay -> "4"
        | FIX_ExecInst_DoNotIncrease -> "E"
        | FIX_ExecInst_OpeningPeg -> "O"
        | FIX_ExecInst_TryToStop -> "Y"
        | FIX_ExecInst_Netting -> "V"
        | FIX_ExecInst_StayOnBidSide -> "9"
        | FIX_ExecInst_Held -> "5"
        | FIX_ExecInst_OKToCross -> "B"
        | FIX_ExecInst_CustomerDisplayInstruction -> "U"
        | FIX_ExecInst_GoAlong -> "3"
        | FIX_ExecInst_DoNotReduce -> "F"
        | FIX_ExecInst_StayOnOfferSide -> "0"
        | FIX_ExecInst_PegToLimitPrice -> "d"
        | FIX_ExecInst_TryToScale -> "8"
        | FIX_ExecInst_ReinstateOnSystemFailure -> "H"
        | FIX_ExecInst_CancelIfNotBest -> "Z"
        | FIX_ExecInst_MidPricePeg -> "M"
        | FIX_ExecInst_WorkToTargetStrategy -> "e"
        | FIX_ExecInst_PegToVWAP -> "W"
        | FIX_ExecInst_TradeAlong -> "X"
        | FIX_ExecInst_StrictLimit -> "b"
        | FIX_ExecInst_Suspend -> "S"
        | FIX_ExecInst_LastPeg -> "L"
        | FIX_ExecInst_NonNegotiable -> "N"
        | FIX_ExecInst_NotHeld -> "1"
        | FIX_ExecInst_CancelOnTradingHalt -> "K"
        | FIX_ExecInst_CancelOnSystemFailure -> "Q"
        | FIX_ExecInst_IgnorePriceValidityChecks -> "c"
        | FIX_ExecInst_Work -> "2"
        | FIX_ExecInst_ReinstateOnTradingHalt -> "J"
        | FIX_ExecInst_PrimaryPeg -> "R"
        | FIX_ExecInst_TrailingStopPeg -> "a"
        | FIX_ExecInst_MarketPeg -> "P"
        | FIX_ExecInst_StrictScale -> "7"
    )
;;

let encode_ExecInst (d)  =
    list_to_split (List.map enncode_inner_ExecInst d) ' '
;;

let encode_ExecPriceType (d)  =
    (match d with
        | FIX_ExecPriceType_CreationPricePlusAdjustmentAmount -> "E"
        | FIX_ExecPriceType_OfferPriceMinusAdjustmentPercent -> "P"
        | FIX_ExecPriceType_BidPrice -> "B"
        | FIX_ExecPriceType_OfferPrice -> "O"
        | FIX_ExecPriceType_OfferPriceMinusAdjustmentAmount -> "Q"
        | FIX_ExecPriceType_SinglePrice -> "S"
        | FIX_ExecPriceType_CreationPrice -> "C"
        | FIX_ExecPriceType_CreationPricePlusAdjustmentPercent -> "D"
    )
;;

let encode_ExecRestatementReason (d)  =
    (match d with
        | FIX_ExecRestatementReason_Other -> "99"
        | FIX_ExecRestatementReason_RepricingOfOrder -> "3"
        | FIX_ExecRestatementReason_GTCorporateAction -> "0"
        | FIX_ExecRestatementReason_VerbalChange -> "2"
        | FIX_ExecRestatementReason_WarehouseRecap -> "10"
        | FIX_ExecRestatementReason_CancelOnTradingHalt -> "6"
        | FIX_ExecRestatementReason_CancelOnSystemFailure -> "7"
        | FIX_ExecRestatementReason_GTRenewal -> "1"
        | FIX_ExecRestatementReason_Market -> "8"
        | FIX_ExecRestatementReason_Canceled -> "9"
        | FIX_ExecRestatementReason_BrokerOption -> "4"
        | FIX_ExecRestatementReason_PartialDeclineOfOrderQty -> "5"
    )
;;

let encode_ExecType (d)  =
    (match d with
        | FIX_ExecType_PendingCancel -> "6"
        | FIX_ExecType_Stopped -> "7"
        | FIX_ExecType_PendingNew -> "A"
        | FIX_ExecType_Restated -> "D"
        | FIX_ExecType_Rejected -> "8"
        | FIX_ExecType_Calculated -> "B"
        | FIX_ExecType_TradeCorrect -> "G"
        | FIX_ExecType_TradeCancel -> "H"
        | FIX_ExecType_Expired -> "C"
        | FIX_ExecType_OrderStatus -> "I"
        | FIX_ExecType_Trade -> "F"
        | FIX_ExecType_Canceled -> "4"
        | FIX_ExecType_Replaced -> "5"
        | FIX_ExecType_PendingReplace -> "E"
        | FIX_ExecType_DoneForDay -> "3"
        | FIX_ExecType_Suspended -> "9"
        | FIX_ExecType_New -> "0"
    )
;;

let encode_ExerciseMethod (d)  =
    (match d with
        | FIX_ExerciseMethod_Manual -> "M"
        | FIX_ExerciseMethod_Automatic -> "A"
    )
;;

let encode_ExpirationCycle (d)  =
    (match d with
        | FIX_ExpirationCycle_ExpireOnTradingSessionClose -> "0"
        | FIX_ExpirationCycle_ExpireOnTradingSessionOpen -> "1"
    )
;;

let enncode_inner_FinancialStatus (d)  =
    (match d with
        | FIX_FinancialStatus_PendingDelisting -> "2"
        | FIX_FinancialStatus_Bankrupt -> "1"
    )
;;

let encode_FinancialStatus (d)  =
    list_to_split (List.map enncode_inner_FinancialStatus d) ' '
;;

let encode_ForexReq (d)  =
    (match d with
        | FIX_ForexReq_DoNotExecuteForexAfterSecurityTrade -> "N"
        | FIX_ForexReq_ExecuteForexAfterSecurityTrade -> "Y"
    )
;;

let encode_FundRenewWaiv (d)  =
    (match d with
        | FIX_FundRenewWaiv_No -> "N"
        | FIX_FundRenewWaiv_Yes -> "Y"
    )
;;

let encode_GTBookingInst (d)  =
    (match d with
        | FIX_GTBookingInst_AccumulateUntilVerballyNotifiedOtherwise -> "2"
        | FIX_GTBookingInst_AccumulateUntilFilledOrExpired -> "1"
        | FIX_GTBookingInst_BookOutAllTradesOnDayOfExecution -> "0"
    )
;;

let encode_HaltReason (d)  =
    (match d with
        | FIX_HaltReason_OrderImbalance -> "I"
        | FIX_HaltReason_AdditionalInformation -> "M"
        | FIX_HaltReason_NewsPending -> "P"
        | FIX_HaltReason_OrderInflux -> "E"
        | FIX_HaltReason_EquipmentChangeover -> "X"
        | FIX_HaltReason_NewsDissemination -> "D"
    )
;;

let encode_HandlInst (d)  =
    (match d with
        | FIX_HandlInst_ManualOrder -> "3"
        | FIX_HandlInst_AutomatedExecutionInterventionOK -> "2"
        | FIX_HandlInst_AutomatedExecutionNoIntervention -> "1"
    )
;;

let encode_IOINaturalFlag (d)  =
    (match d with
        | FIX_IOINaturalFlag_Natural -> "Y"
        | FIX_IOINaturalFlag_NotNatural -> "N"
    )
;;

let encode_IOIQltyInd (d)  =
    (match d with
        | FIX_IOIQltyInd_Low -> "L"
        | FIX_IOIQltyInd_High -> "H"
        | FIX_IOIQltyInd_Medium -> "M"
    )
;;

let encode_IOIQty (d)  =
    (match d with
        | FIX_IOIQty_Small -> "S"
        | FIX_IOIQty_Large -> "L"
        | FIX_IOIQty_Medium -> "M"
    )
;;

let encode_IOIQualifier (d)  =
    (match d with
        | FIX_IOIQualifier_AllOrNone -> "A"
        | FIX_IOIQualifier_TakingAPosition -> "P"
        | FIX_IOIQualifier_Indication -> "W"
        | FIX_IOIQualifier_PreOpen -> "Z"
        | FIX_IOIQualifier_VWAP -> "D"
        | FIX_IOIQualifier_AtTheOpen -> "O"
        | FIX_IOIQualifier_Versus -> "V"
        | FIX_IOIQualifier_AtTheMidpoint -> "Y"
        | FIX_IOIQualifier_ReadyToTrade -> "R"
        | FIX_IOIQualifier_PortfolioShown -> "S"
        | FIX_IOIQualifier_ThroughTheDay -> "T"
        | FIX_IOIQualifier_MoreBehind -> "M"
        | FIX_IOIQualifier_MarketOnClose -> "B"
        | FIX_IOIQualifier_AtTheClose -> "C"
        | FIX_IOIQualifier_InTouchWith -> "I"
        | FIX_IOIQualifier_AtTheMarket -> "Q"
        | FIX_IOIQualifier_Limit -> "L"
        | FIX_IOIQualifier_CrossingOpportunity -> "X"
    )
;;

let encode_IOITransType (d)  =
    (match d with
        | FIX_IOITransType_Cancel -> "C"
        | FIX_IOITransType_Replace -> "R"
        | FIX_IOITransType_New -> "N"
    )
;;

let encode_InViewOfCommon (d)  =
    (match d with
        | FIX_InViewOfCommon_HaltWasDueToCommonStockBeingHalted -> "Y"
        | FIX_InViewOfCommon_HaltWasNotRelatedToAHaltOfTheCommonStock -> "N"
    )
;;

let encode_IncTaxInd (d)  =
    (match d with
        | FIX_IncTaxInd_Net -> "1"
        | FIX_IncTaxInd_Gross -> "2"
    )
;;

let encode_InstrAttribType (d)  =
    (match d with
        | FIX_InstrAttribType_Callable -> "11"
        | FIX_InstrAttribType_SubjectToAlternativeMinimumTax -> "19"
        | FIX_InstrAttribType_CouponPeriod -> "8"
        | FIX_InstrAttribType_EscrowedToRedemptionDate -> "13"
        | FIX_InstrAttribType_InterestBearing -> "3"
        | FIX_InstrAttribType_OriginalIssueDiscount -> "10"
        | FIX_InstrAttribType_VariableRate -> "5"
        | FIX_InstrAttribType_InDefault -> "15"
        | FIX_InstrAttribType_Text -> "99"
        | FIX_InstrAttribType_PreRefunded -> "14"
        | FIX_InstrAttribType_LessFeeForPut -> "6"
        | FIX_InstrAttribType_When -> "9"
        | FIX_InstrAttribType_NoPeriodicPayments -> "4"
        | FIX_InstrAttribType_Unrated -> "16"
        | FIX_InstrAttribType_CallableBelowMaturityValue -> "21"
        | FIX_InstrAttribType_OriginalIssueDiscountPrice -> "20"
        | FIX_InstrAttribType_Flat -> "1"
        | FIX_InstrAttribType_CallableWithoutNotice -> "22"
        | FIX_InstrAttribType_SteppedCoupon -> "7"
        | FIX_InstrAttribType_Indexed -> "18"
        | FIX_InstrAttribType_ZeroCoupon -> "2"
        | FIX_InstrAttribType_EscrowedToMaturity -> "12"
        | FIX_InstrAttribType_Taxable -> "17"
    )
;;

let encode_LastCapacity (d)  =
    (match d with
        | FIX_LastCapacity_Agent -> "1"
        | FIX_LastCapacity_CrossAsAgent -> "2"
        | FIX_LastCapacity_Principal -> "4"
        | FIX_LastCapacity_CrossAsPrincipal -> "3"
    )
;;

let encode_LastFragment (d)  =
    (match d with
        | FIX_LastFragment_LastMessage -> "Y"
        | FIX_LastFragment_NotLastMessage -> "N"
    )
;;

let encode_LastLiquidityInd (d)  =
    (match d with
        | FIX_LastLiquidityInd_LiquidityRoutedOut -> "3"
        | FIX_LastLiquidityInd_AddedLiquidity -> "1"
        | FIX_LastLiquidityInd_RemovedLiquidity -> "2"
    )
;;

let encode_LegSwapType (d)  =
    (match d with
        | FIX_LegSwapType_ModifiedDuration -> "2"
        | FIX_LegSwapType_Proceeds -> "5"
        | FIX_LegSwapType_ParForPar -> "1"
        | FIX_LegSwapType_Risk -> "4"
    )
;;

let encode_LegalConfirm (d)  =
    (match d with
        | FIX_LegalConfirm_DoesNotConsituteALegalConfirm -> "N"
        | FIX_LegalConfirm_LegalConfirm -> "Y"
    )
;;

let encode_LiquidityIndType (d)  =
    (match d with
        | FIX_LiquidityIndType_Other -> "4"
        | FIX_LiquidityIndType_NormalMarketSize -> "3"
        | FIX_LiquidityIndType_TwentyDayMovingAverage -> "2"
        | FIX_LiquidityIndType_FiveDayMovingAverage -> "1"
    )
;;

let encode_ListExecInstType (d)  =
    (match d with
        | FIX_ListExecInstType_SellDriven -> "3"
        | FIX_ListExecInstType_Immediate -> "1"
        | FIX_ListExecInstType_BuyDrivenCashTopUp -> "4"
        | FIX_ListExecInstType_WaitForInstruction -> "2"
        | FIX_ListExecInstType_BuyDrivenCashWithdraw -> "5"
    )
;;

let encode_ListOrderStatus (d)  =
    (match d with
        | FIX_ListOrderStatus_AllDone -> "6"
        | FIX_ListOrderStatus_Reject -> "7"
        | FIX_ListOrderStatus_Cancelling -> "4"
        | FIX_ListOrderStatus_InBiddingProcess -> "1"
        | FIX_ListOrderStatus_Executing -> "3"
        | FIX_ListOrderStatus_Alert -> "5"
        | FIX_ListOrderStatus_ReceivedForExecution -> "2"
    )
;;

let encode_ListStatusType (d)  =
    (match d with
        | FIX_ListStatusType_AllDone -> "5"
        | FIX_ListStatusType_Response -> "2"
        | FIX_ListStatusType_ExecStarted -> "4"
        | FIX_ListStatusType_Timed -> "3"
        | FIX_ListStatusType_Ack -> "1"
        | FIX_ListStatusType_Alert -> "6"
    )
;;

let encode_LocateReqd (d)  =
    (match d with
        | FIX_LocateReqd_No -> "N"
        | FIX_LocateReqd_Yes -> "Y"
    )
;;

let encode_MDEntryType (d)  =
    (match d with
        | FIX_MDEntryType_OpenInterest -> "C"
        | FIX_MDEntryType_ClosingPrice -> "5"
        | FIX_MDEntryType_IndexValue -> "3"
        | FIX_MDEntryType_Offer -> "1"
        | FIX_MDEntryType_SettlementPrice -> "6"
        | FIX_MDEntryType_TradingSessionVWAPPrice -> "9"
        | FIX_MDEntryType_Trade -> "2"
        | FIX_MDEntryType_TradingSessionHighPrice -> "7"
        | FIX_MDEntryType_OpeningPrice -> "4"
        | FIX_MDEntryType_TradeVolume -> "B"
        | FIX_MDEntryType_Imbalance -> "A"
        | FIX_MDEntryType_Bid -> "0"
        | FIX_MDEntryType_TradingSessionLowPrice -> "8"
    )
;;

let encode_MDImplicitDelete (d)  =
    (match d with
        | FIX_MDImplicitDelete_No -> "N"
        | FIX_MDImplicitDelete_Yes -> "Y"
    )
;;

let encode_MDReqRejReason (d)  =
    (match d with
        | FIX_MDReqRejReason_UnsupportedAggregatedBook -> "7"
        | FIX_MDReqRejReason_UnsupportedMDUpdateType -> "6"
        | FIX_MDReqRejReason_UnsupportedMDImplicitDelete -> "C"
        | FIX_MDReqRejReason_InsufficientPermissions -> "3"
        | FIX_MDReqRejReason_UnsupportedScope -> "A"
        | FIX_MDReqRejReason_UnsupportedTradingSessionID -> "9"
        | FIX_MDReqRejReason_UnsupportedSubscriptionRequestType -> "4"
        | FIX_MDReqRejReason_UnsupportedMDEntryType -> "8"
        | FIX_MDReqRejReason_InsufficientBandwidth -> "2"
        | FIX_MDReqRejReason_DuplicateMDReqID -> "1"
        | FIX_MDReqRejReason_UnsupportedMarketDepth -> "5"
        | FIX_MDReqRejReason_UnsupportedOpenCloseSettleFlag -> "B"
        | FIX_MDReqRejReason_UnknownSymbol -> "0"
    )
;;

let encode_MDUpdateAction (d)  =
    (match d with
        | FIX_MDUpdateAction_Delete -> "2"
        | FIX_MDUpdateAction_Change -> "1"
        | FIX_MDUpdateAction_New -> "0"
    )
;;

let encode_MDUpdateType (d)  =
    (match d with
        | FIX_MDUpdateType_FullRefresh -> "0"
        | FIX_MDUpdateType_IncrementalRefresh -> "1"
    )
;;

let encode_MassCancelRejectReason (d)  =
    (match d with
        | FIX_MassCancelRejectReason_Other -> "99"
        | FIX_MassCancelRejectReason_MassCancelNotSupported -> "0"
        | FIX_MassCancelRejectReason_InvalidOrUnknownCFICode -> "4"
        | FIX_MassCancelRejectReason_InvalidOrUnknownSecurityType -> "5"
        | FIX_MassCancelRejectReason_InvalidOrUnknownProduct -> "3"
        | FIX_MassCancelRejectReason_InvalidOrUnkownUnderlyingSecurity -> "2"
        | FIX_MassCancelRejectReason_InvalidOrUnknownTradingSession -> "6"
        | FIX_MassCancelRejectReason_InvalidOrUnknownSecurity -> "1"
    )
;;

let encode_MassCancelRequestType (d)  =
    (match d with
        | FIX_MassCancelRequestType_CancelOrdersForASecurityType -> "5"
        | FIX_MassCancelRequestType_CancelOrdersForAProduct -> "3"
        | FIX_MassCancelRequestType_CancelOrdersForASecurity -> "1"
        | FIX_MassCancelRequestType_CancelOrdersForAnUnderlyingSecurity -> "2"
        | FIX_MassCancelRequestType_CancelAllOrders -> "7"
        | FIX_MassCancelRequestType_CancelOrdersForACFICode -> "4"
        | FIX_MassCancelRequestType_CancelOrdersForATradingSession -> "6"
    )
;;

let encode_MassCancelResponse (d)  =
    (match d with
        | FIX_MassCancelResponse_CancelOrdersForASecurityType -> "5"
        | FIX_MassCancelResponse_CancelOrdersForAProduct -> "3"
        | FIX_MassCancelResponse_CancelOrdersForASecurity -> "1"
        | FIX_MassCancelResponse_CancelOrdersForAnUnderlyingSecurity -> "2"
        | FIX_MassCancelResponse_CancelRequestRejected -> "0"
        | FIX_MassCancelResponse_CancelAllOrders -> "7"
        | FIX_MassCancelResponse_CancelOrdersForACFICode -> "4"
        | FIX_MassCancelResponse_CancelOrdersForATradingSession -> "6"
    )
;;

let encode_MassStatusReqType (d)  =
    (match d with
        | FIX_MassStatusReqType_StatusForOrdersForASecurity -> "1"
        | FIX_MassStatusReqType_StatusForOrdersForATradingSession -> "6"
        | FIX_MassStatusReqType_StatusForOrdersForAPartyID -> "8"
        | FIX_MassStatusReqType_StatusForOrdersForAProduct -> "3"
        | FIX_MassStatusReqType_StatusForOrdersForAnUnderlyingSecurity -> "2"
        | FIX_MassStatusReqType_StatusForAllOrders -> "7"
        | FIX_MassStatusReqType_StatusForOrdersForASecurityType -> "5"
        | FIX_MassStatusReqType_StatusForOrdersForACFICode -> "4"
    )
;;

let encode_MatchStatus (d)  =
    (match d with
        | FIX_MatchStatus_Compared -> "0"
        | FIX_MatchStatus_Uncompared -> "1"
        | FIX_MatchStatus_AdvisoryOrAlert -> "2"
    )
;;

let encode_MatchType (d)  =
    (match d with
        | FIX_MatchType_ExactMatchPlus2Badges -> "A4"
        | FIX_MatchType_ExactMatchPlus2BadgesExecTime -> "A3"
        | FIX_MatchType_A4ExactMatchSummarizedQuantity -> "S4"
        | FIX_MatchType_A2ExactMatchSummarizedQuantity -> "S2"
        | FIX_MatchType_OCSLockedIn -> "MT"
        | FIX_MatchType_ACTM6Match -> "M6"
        | FIX_MatchType_ExactMatchPlusExecTime -> "A5"
        | FIX_MatchType_ACTAcceptedTrade -> "M3"
        | FIX_MatchType_ExactMatchMinusBadgesTimes -> "M1"
        | FIX_MatchType_ExactMatchPlus4Badges -> "A2"
        | FIX_MatchType_A1ExactMatchSummarizedQuantity -> "S1"
        | FIX_MatchType_SummarizedMatchMinusBadgesTimes -> "M2"
        | FIX_MatchType_ACTDefaultAfterM2 -> "M5"
        | FIX_MatchType_ExactMatchPlus4BadgesExecTime -> "A1"
        | FIX_MatchType_A5ExactMatchSummarizedQuantity -> "S5"
        | FIX_MatchType_A3ExactMatchSummarizedQuantity -> "S3"
        | FIX_MatchType_ACTDefaultTrade -> "M4"
        | FIX_MatchType_StampedAdvisoriesOrSpecialistAccepts -> "AQ"
    )
;;

let encode_MessageEncoding (d)  =
    (match d with
        | FIX_MessageEncoding_ISO2022JP -> "ISO-2022-JP"
        | FIX_MessageEncoding_UTF8 -> "UTF-8"
        | FIX_MessageEncoding_ShiftJIS -> "Shift_JIS"
        | FIX_MessageEncoding_EUCJP -> "EUC-JP"
    )
;;

let encode_MiscFeeBasis (d)  =
    (match d with
        | FIX_MiscFeeBasis_Percentage -> "2"
        | FIX_MiscFeeBasis_PerUnit -> "1"
        | FIX_MiscFeeBasis_Absolute -> "0"
    )
;;

let encode_MiscFeeType (d)  =
    (match d with
        | FIX_MiscFeeType_Other -> "7"
        | FIX_MiscFeeType_Agent -> "12"
        | FIX_MiscFeeType_LocalCommission -> "3"
        | FIX_MiscFeeType_ExchangeFees -> "4"
        | FIX_MiscFeeType_Stamp -> "5"
        | FIX_MiscFeeType_Markup -> "8"
        | FIX_MiscFeeType_PerTransaction -> "10"
        | FIX_MiscFeeType_Regulatory -> "1"
        | FIX_MiscFeeType_Tax -> "2"
        | FIX_MiscFeeType_ConsumptionTax -> "9"
        | FIX_MiscFeeType_Conversion -> "11"
        | FIX_MiscFeeType_Levy -> "6"
    )
;;

let encode_MoneyLaunderingStatus (d)  =
    (match d with
        | FIX_MoneyLaunderingStatus_ExemptBelowLimit -> "1"
        | FIX_MoneyLaunderingStatus_ExemptMoneyType -> "2"
        | FIX_MoneyLaunderingStatus_ExemptAuthorised -> "3"
        | FIX_MoneyLaunderingStatus_Passed -> "Y"
        | FIX_MoneyLaunderingStatus_NotChecked -> "N"
    )
;;

let encode_MsgDirection (d)  =
    (match d with
        | FIX_MsgDirection_Send -> "S"
        | FIX_MsgDirection_Receive -> "R"
    )
;;

let encode_MultiLegReportingType (d)  =
    (match d with
        | FIX_MultiLegReportingType_SingleSecurity -> "1"
        | FIX_MultiLegReportingType_IndividualLegOfAMultiLegSecurity -> "2"
        | FIX_MultiLegReportingType_MultiLegSecurity -> "3"
    )
;;

let encode_MultiLegRptTypeReq (d)  =
    (match d with
        | FIX_MultiLegRptTypeReq_ReportByInstrumentLegsOnly -> "2"
        | FIX_MultiLegRptTypeReq_ReportByMulitlegSecurityOnly -> "0"
        | FIX_MultiLegRptTypeReq_ReportByMultilegSecurityAndInstrumentLegs -> "1"
    )
;;

let encode_NetGrossInd (d)  =
    (match d with
        | FIX_NetGrossInd_Net -> "1"
        | FIX_NetGrossInd_Gross -> "2"
    )
;;

let encode_NetworkRequestType (d)  =
    (match d with
        | FIX_NetworkRequestType_Snapshot -> "1"
        | FIX_NetworkRequestType_StopSubscribing -> "4"
        | FIX_NetworkRequestType_Subscribe -> "2"
        | FIX_NetworkRequestType_LevelOfDetail -> "8"
    )
;;

let encode_NetworkStatusResponseType (d)  =
    (match d with
        | FIX_NetworkStatusResponseType_IncrementalUpdate -> "2"
        | FIX_NetworkStatusResponseType_Full -> "1"
    )
;;

let encode_NoSides (d)  =
    (match d with
        | FIX_NoSides_OneSide -> "1"
        | FIX_NoSides_BothSides -> "2"
    )
;;

let encode_NotifyBrokerOfCredit (d)  =
    (match d with
        | FIX_NotifyBrokerOfCredit_DetailsShouldBeCommunicated -> "Y"
        | FIX_NotifyBrokerOfCredit_DetailsShouldNotBeCommunicated -> "N"
    )
;;

let encode_OddLot (d)  =
    (match d with
        | FIX_OddLot_TreatAsRoundLot -> "N"
        | FIX_OddLot_TreatAsOddLot -> "Y"
    )
;;

let enncode_inner_OpenCloseSettlFlag (d)  =
    (match d with
        | FIX_OpenCloseSettlFlag_DeliverySettlementEntry -> "2"
        | FIX_OpenCloseSettlFlag_EntryFromPreviousBusinessDay -> "4"
        | FIX_OpenCloseSettlFlag_DailyOpen -> "0"
        | FIX_OpenCloseSettlFlag_TheoreticalPriceValue -> "5"
        | FIX_OpenCloseSettlFlag_ExpectedEntry -> "3"
        | FIX_OpenCloseSettlFlag_SessionOpen -> "1"
    )
;;

let encode_OpenCloseSettlFlag (d)  =
    list_to_split (List.map enncode_inner_OpenCloseSettlFlag d) ' '
;;

let encode_OrdRejReason (d)  =
    (match d with
        | FIX_OrdRejReason_DuplicateOrder -> "6"
        | FIX_OrdRejReason_Other -> "99"
        | FIX_OrdRejReason_UnknownOrder -> "5"
        | FIX_OrdRejReason_TooLateToEnter -> "4"
        | FIX_OrdRejReason_OrderExceedsLimit -> "3"
        | FIX_OrdRejReason_UnknownAccount -> "15"
        | FIX_OrdRejReason_BrokerCredit -> "0"
        | FIX_OrdRejReason_UnsupportedOrderCharacteristic -> "11"
        | FIX_OrdRejReason_DuplicateOfAVerballyCommunicatedOrder -> "7"
        | FIX_OrdRejReason_IncorrectQuantity -> "13"
        | FIX_OrdRejReason_TradeAlongRequired -> "9"
        | FIX_OrdRejReason_StaleOrder -> "8"
        | FIX_OrdRejReason_InvalidInvestorID -> "10"
        | FIX_OrdRejReason_ExchangeClosed -> "2"
        | FIX_OrdRejReason_IncorrectAllocatedQuantity -> "14"
        | FIX_OrdRejReason_UnknownSymbol -> "1"
    )
;;

let encode_OrdStatus (d)  =
    (match d with
        | FIX_OrdStatus_PendingCancel -> "6"
        | FIX_OrdStatus_Stopped -> "7"
        | FIX_OrdStatus_PendingNew -> "A"
        | FIX_OrdStatus_Rejected -> "8"
        | FIX_OrdStatus_Calculated -> "B"
        | FIX_OrdStatus_Expired -> "C"
        | FIX_OrdStatus_Filled -> "2"
        | FIX_OrdStatus_Canceled -> "4"
        | FIX_OrdStatus_Replaced -> "5"
        | FIX_OrdStatus_PendingReplace -> "E"
        | FIX_OrdStatus_DoneForDay -> "3"
        | FIX_OrdStatus_Suspended -> "9"
        | FIX_OrdStatus_New -> "0"
        | FIX_OrdStatus_PartiallyFilled -> "1"
        | FIX_OrdStatus_AcceptedForBidding -> "D"
    )
;;

let encode_OrdType (d)  =
    (match d with
        | FIX_OrdType_LimitOrBetter -> "7"
        | FIX_OrdType_NextFundValuationPoint -> "M"
        | FIX_OrdType_WithOrWithout -> "6"
        | FIX_OrdType_PreviouslyIndicated -> "E"
        | FIX_OrdType_Stop -> "3"
        | FIX_OrdType_Market -> "1"
        | FIX_OrdType_OnBasis -> "9"
        | FIX_OrdType_Funari -> "I"
        | FIX_OrdType_Pegged -> "P"
        | FIX_OrdType_LimitWithOrWithout -> "8"
        | FIX_OrdType_StopLimit -> "4"
        | FIX_OrdType_ForexSwap -> "G"
        | FIX_OrdType_MarketIfTouched -> "J"
        | FIX_OrdType_MarketWithLeftOverAsLimit -> "K"
        | FIX_OrdType_PreviouslyQuoted -> "D"
        | FIX_OrdType_Limit -> "2"
        | FIX_OrdType_PreviousFundValuationPoint -> "L"
    )
;;

let encode_OrderCapacity (d)  =
    (match d with
        | FIX_OrderCapacity_Agency -> "A"
        | FIX_OrderCapacity_Individual -> "I"
        | FIX_OrderCapacity_Proprietary -> "G"
        | FIX_OrderCapacity_AgentForOtherMember -> "W"
        | FIX_OrderCapacity_Principal -> "P"
        | FIX_OrderCapacity_RisklessPrincipal -> "R"
    )
;;

let enncode_inner_OrderRestrictions (d)  =
    (match d with
        | FIX_OrderRestrictions_ForeignEntity -> "7"
        | FIX_OrderRestrictions_ExternalMarketParticipant -> "8"
        | FIX_OrderRestrictions_IndexArbitrage -> "2"
        | FIX_OrderRestrictions_CompetingMarketMaker -> "4"
        | FIX_OrderRestrictions_RisklessArbitrage -> "A"
        | FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInSecurity -> "5"
        | FIX_OrderRestrictions_ProgramTrade -> "1"
        | FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInUnderlying -> "6"
        | FIX_OrderRestrictions_NonIndexArbitrage -> "3"
        | FIX_OrderRestrictions_ExternalInterConnectedMarketLinkage -> "9"
    )
;;

let encode_OrderRestrictions (d)  =
    list_to_split (List.map enncode_inner_OrderRestrictions d) ' '
;;

let encode_OwnerType (d)  =
    (match d with
        | FIX_OwnerType_PrivateCompany -> "3"
        | FIX_OwnerType_PublicCompany -> "2"
        | FIX_OwnerType_IndividualTrustee -> "4"
        | FIX_OwnerType_Fiduciaries -> "9"
        | FIX_OwnerType_NonProfitOrganization -> "11"
        | FIX_OwnerType_CompanyTrustee -> "5"
        | FIX_OwnerType_NetworkingSubAccount -> "10"
        | FIX_OwnerType_Trusts -> "8"
        | FIX_OwnerType_Nominee -> "13"
        | FIX_OwnerType_CustodianUnderGiftsToMinorsAct -> "7"
        | FIX_OwnerType_IndividualInvestor -> "1"
        | FIX_OwnerType_PensionPlan -> "6"
        | FIX_OwnerType_CorporateBody -> "12"
    )
;;

let encode_OwnershipType (d)  =
    (match d with
        | FIX_OwnershipType_TenantsInCommon -> "T"
        | FIX_OwnershipType_JointTrustees -> "2"
        | FIX_OwnershipType_JointInvestors -> "J"
    )
;;

let encode_PartyIDSource (d)  =
    (match d with
        | FIX_PartyIDSource_CSDParticipant -> "H"
        | FIX_PartyIDSource_KoreanInvestorID -> "1"
        | FIX_PartyIDSource_USEmployerOrTaxIDNumber -> "8"
        | FIX_PartyIDSource_TaiwaneseForeignInvestorID -> "2"
        | FIX_PartyIDSource_TaiwaneseTradingAcct -> "3"
        | FIX_PartyIDSource_UKNationalInsuranceOrPensionNumber -> "6"
        | FIX_PartyIDSource_MIC -> "G"
        | FIX_PartyIDSource_USSocialSecurityNumber -> "7"
        | FIX_PartyIDSource_Proprietary -> "D"
        | FIX_PartyIDSource_AustralianTaxFileNumber -> "A"
        | FIX_PartyIDSource_MalaysianCentralDepository -> "4"
        | FIX_PartyIDSource_ISITCAcronym -> "I"
        | FIX_PartyIDSource_ISOCountryCode -> "E"
        | FIX_PartyIDSource_ChineseInvestorID -> "5"
        | FIX_PartyIDSource_AustralianBusinessNumber -> "9"
        | FIX_PartyIDSource_BIC -> "B"
        | FIX_PartyIDSource_GeneralIdentifier -> "C"
        | FIX_PartyIDSource_SettlementEntityLocation -> "F"
    )
;;

let encode_PartyRole (d)  =
    (match d with
        | FIX_PartyRole_CorrespondantClearingFirm -> "15"
        | FIX_PartyRole_Agent -> "30"
        | FIX_PartyRole_ExecutingSystem -> "16"
        | FIX_PartyRole_SponsoringFirm -> "19"
        | FIX_PartyRole_Intermediary -> "29"
        | FIX_PartyRole_IntroducingFirm -> "6"
        | FIX_PartyRole_EnteringFirm -> "7"
        | FIX_PartyRole_LiquidityProvider -> "35"
        | FIX_PartyRole_ClearingFirm -> "4"
        | FIX_PartyRole_ContraFirm -> "17"
        | FIX_PartyRole_ContraTrader -> "37"
        | FIX_PartyRole_CustomerAccount -> "24"
        | FIX_PartyRole_RegulatoryBody -> "34"
        | FIX_PartyRole_SettlementLocation -> "10"
        | FIX_PartyRole_Exchange -> "22"
        | FIX_PartyRole_Custodian -> "28"
        | FIX_PartyRole_CorrespondentClearingOrganization -> "25"
        | FIX_PartyRole_ExecutingTrader -> "12"
        | FIX_PartyRole_CorrespondentBroker -> "26"
        | FIX_PartyRole_ClientID -> "3"
        | FIX_PartyRole_OrderOriginationTrader -> "11"
        | FIX_PartyRole_Beneficiary -> "32"
        | FIX_PartyRole_InterestedParty -> "33"
        | FIX_PartyRole_UnderlyingContraFirm -> "20"
        | FIX_PartyRole_GiveupClearingFirm -> "14"
        | FIX_PartyRole_ClearingOrganization -> "21"
        | FIX_PartyRole_Locate -> "8"
        | FIX_PartyRole_Buyer -> "27"
        | FIX_PartyRole_PositionAccount -> "38"
        | FIX_PartyRole_OrderOriginationFirm -> "13"
        | FIX_PartyRole_BrokerOfCredit -> "2"
        | FIX_PartyRole_SubCustodian -> "31"
        | FIX_PartyRole_EnteringTrader -> "36"
        | FIX_PartyRole_ExecutingFirm -> "1"
        | FIX_PartyRole_FundManagerClientID -> "9"
        | FIX_PartyRole_ContraClearingFirm -> "18"
        | FIX_PartyRole_InvestorID -> "5"
    )
;;

let encode_PartySubIDType (d)  =
    (match d with
        | FIX_PartySubIDType_EmailAddress -> "8"
        | FIX_PartySubIDType_Application -> "4"
        | FIX_PartySubIDType_FundAccountName -> "19"
        | FIX_PartySubIDType_FullLegalNameOfFirm -> "5"
        | FIX_PartySubIDType_CSDParticipantMemberCode -> "17"
        | FIX_PartySubIDType_RegistrationName -> "14"
        | FIX_PartySubIDType_PostalAddress -> "6"
        | FIX_PartySubIDType_SecuritiesAccountNumber -> "10"
        | FIX_PartySubIDType_RegisteredAddress -> "18"
        | FIX_PartySubIDType_TelexNumber -> "20"
        | FIX_PartySubIDType_RegulatoryStatus -> "13"
        | FIX_PartySubIDType_PhoneNumber -> "7"
        | FIX_PartySubIDType_Firm -> "1"
        | FIX_PartySubIDType_Person -> "2"
        | FIX_PartySubIDType_ContactName -> "9"
        | FIX_PartySubIDType_CashAccountNumber -> "15"
        | FIX_PartySubIDType_CashAccountName -> "23"
        | FIX_PartySubIDType_LocationDesk -> "25"
        | FIX_PartySubIDType_RegisteredAddressForConfirmation -> "12"
        | FIX_PartySubIDType_PositionAccountType -> "26"
        | FIX_PartySubIDType_System -> "3"
        | FIX_PartySubIDType_Department -> "24"
        | FIX_PartySubIDType_FaxNumber -> "21"
        | FIX_PartySubIDType_RegistrationNumber -> "11"
        | FIX_PartySubIDType_BIC -> "16"
        | FIX_PartySubIDType_SecuritiesAccountName -> "22"
    )
;;

let encode_PaymentMethod (d)  =
    (match d with
        | FIX_PaymentMethod_CREST -> "1"
        | FIX_PaymentMethod_NSCC -> "2"
        | FIX_PaymentMethod_DirectCredit -> "10"
        | FIX_PaymentMethod_ACHCredit -> "13"
        | FIX_PaymentMethod_Clearstream -> "4"
        | FIX_PaymentMethod_HighValueClearingSystem -> "15"
        | FIX_PaymentMethod_DebitCard -> "8"
        | FIX_PaymentMethod_Euroclear -> "3"
        | FIX_PaymentMethod_TelegraphicTransfer -> "6"
        | FIX_PaymentMethod_CreditCard -> "11"
        | FIX_PaymentMethod_DirectDebit -> "9"
        | FIX_PaymentMethod_BPAY -> "14"
        | FIX_PaymentMethod_Cheque -> "5"
        | FIX_PaymentMethod_ACHDebit -> "12"
        | FIX_PaymentMethod_FedWire -> "7"
    )
;;

let encode_PegLimitType (d)  =
    (match d with
        | FIX_PegLimitType_Strict -> "1"
        | FIX_PegLimitType_OrBetter -> "0"
        | FIX_PegLimitType_OrWorse -> "2"
    )
;;

let encode_PegMoveType (d)  =
    (match d with
        | FIX_PegMoveType_Fixed -> "1"
        | FIX_PegMoveType_Floating -> "0"
    )
;;

let encode_PegOffsetType (d)  =
    (match d with
        | FIX_PegOffsetType_BasisPoints -> "1"
        | FIX_PegOffsetType_Price -> "0"
        | FIX_PegOffsetType_Ticks -> "2"
        | FIX_PegOffsetType_PriceTier -> "3"
    )
;;

let encode_PegRoundDirection (d)  =
    (match d with
        | FIX_PegRoundDirection_MoreAggressive -> "1"
        | FIX_PegRoundDirection_MorePassive -> "2"
    )
;;

let encode_PegScope (d)  =
    (match d with
        | FIX_PegScope_National -> "2"
        | FIX_PegScope_Local -> "1"
        | FIX_PegScope_NationalExcludingLocal -> "4"
        | FIX_PegScope_Global -> "3"
    )
;;

let encode_PosAmtType (d)  =
    (match d with
        | FIX_PosAmtType_PremiumAmount -> "PREM"
        | FIX_PosAmtType_StartOfDayMarkToMarketAmount -> "SMTM"
        | FIX_PosAmtType_FinalMarkToMarketAmount -> "FMTM"
        | FIX_PosAmtType_ValueAdjustedAmount -> "VADJ"
        | FIX_PosAmtType_TradeVariationAmount -> "TVAR"
        | FIX_PosAmtType_CashResidualAmount -> "CRES"
        | FIX_PosAmtType_IncrementalMarkToMarketAmount -> "IMTM"
        | FIX_PosAmtType_CashAmount -> "CASH"
    )
;;

let encode_PosMaintAction (d)  =
    (match d with
        | FIX_PosMaintAction_Replace -> "2"
        | FIX_PosMaintAction_Cancel -> "3"
        | FIX_PosMaintAction_New -> "1"
    )
;;

let encode_PosMaintResult (d)  =
    (match d with
        | FIX_PosMaintResult_Other -> "99"
        | FIX_PosMaintResult_SuccessfulCompletion -> "0"
        | FIX_PosMaintResult_Rejected -> "1"
    )
;;

let encode_PosMaintStatus (d)  =
    (match d with
        | FIX_PosMaintStatus_AcceptedWithWarnings -> "1"
        | FIX_PosMaintStatus_Rejected -> "2"
        | FIX_PosMaintStatus_CompletedWithWarnings -> "4"
        | FIX_PosMaintStatus_Completed -> "3"
        | FIX_PosMaintStatus_Accepted -> "0"
    )
;;

let encode_PosQtyStatus (d)  =
    (match d with
        | FIX_PosQtyStatus_Submitted -> "0"
        | FIX_PosQtyStatus_Rejected -> "2"
        | FIX_PosQtyStatus_Accepted -> "1"
    )
;;

let encode_PosReqResult (d)  =
    (match d with
        | FIX_PosReqResult_Other -> "99"
        | FIX_PosReqResult_RequestForPositionNotSupported -> "4"
        | FIX_PosReqResult_NoPositionsFoundThatMatchCriteria -> "2"
        | FIX_PosReqResult_NotAuthorizedToRequestPositions -> "3"
        | FIX_PosReqResult_InvalidOrUnsupportedRequest -> "1"
        | FIX_PosReqResult_ValidRequest -> "0"
    )
;;

let encode_PosReqStatus (d)  =
    (match d with
        | FIX_PosReqStatus_CompletedWithWarnings -> "1"
        | FIX_PosReqStatus_Rejected -> "2"
        | FIX_PosReqStatus_Completed -> "0"
    )
;;

let encode_PosReqType (d)  =
    (match d with
        | FIX_PosReqType_Trades -> "1"
        | FIX_PosReqType_Positions -> "0"
        | FIX_PosReqType_Exercises -> "2"
        | FIX_PosReqType_Assignments -> "3"
    )
;;

let encode_PosTransType (d)  =
    (match d with
        | FIX_PosTransType_PositionAdjustment -> "3"
        | FIX_PosTransType_PositionChangeSubmission -> "4"
        | FIX_PosTransType_DoNotExercise -> "2"
        | FIX_PosTransType_Exercise -> "1"
        | FIX_PosTransType_Pledge -> "5"
    )
;;

let encode_PosType (d)  =
    (match d with
        | FIX_PosType_TotalTransactionQty -> "TOT"
        | FIX_PosType_IntegralSplit -> "SPL"
        | FIX_PosType_OptionAssignment -> "AS"
        | FIX_PosType_AllocationTradeQty -> "ALC"
        | FIX_PosType_IntraSpreadQty -> "IAS"
        | FIX_PosType_DeliveryQty -> "DLV"
        | FIX_PosType_TransactionFromExercise -> "TX"
        | FIX_PosType_InterSpreadQty -> "IES"
        | FIX_PosType_EndOfDayQty -> "FIN"
        | FIX_PosType_TransactionQuantity -> "TQ"
        | FIX_PosType_PitTradeQty -> "PIT"
        | FIX_PosType_ElectronicTradeQty -> "ETR"
        | FIX_PosType_CrossMarginQty -> "XM"
        | FIX_PosType_StartOfDayQty -> "SOD"
        | FIX_PosType_TransferTradeQty -> "TRF"
        | FIX_PosType_TransactionFromAssignment -> "TA"
        | FIX_PosType_OptionExerciseQty -> "EX"
        | FIX_PosType_AdjustmentQty -> "PA"
        | FIX_PosType_AsOfTradeQty -> "ASF"
    )
;;

let encode_PositionEffect (d)  =
    (match d with
        | FIX_PositionEffect_Close -> "C"
        | FIX_PositionEffect_Rolled -> "R"
        | FIX_PositionEffect_FIFO -> "F"
        | FIX_PositionEffect_Open -> "O"
    )
;;

let encode_PossDupFlag (d)  =
    (match d with
        | FIX_PossDupFlag_PossibleDuplicate -> "Y"
        | FIX_PossDupFlag_OriginalTransmission -> "N"
    )
;;

let encode_PossResend (d)  =
    (match d with
        | FIX_PossResend_OriginalTransmission -> "N"
        | FIX_PossResend_PossibleResend -> "Y"
    )
;;

let encode_PreallocMethod (d)  =
    (match d with
        | FIX_PreallocMethod_ProRata -> "0"
        | FIX_PreallocMethod_DoNotProRata -> "1"
    )
;;

let encode_PreviouslyReported (d)  =
    (match d with
        | FIX_PreviouslyReported_PerviouslyReportedToCounterparty -> "Y"
        | FIX_PreviouslyReported_NotReportedToCounterparty -> "N"
    )
;;

let encode_PriceType (d)  =
    (match d with
        | FIX_PriceType_Discount -> "4"
        | FIX_PriceType_Spread -> "6"
        | FIX_PriceType_TEDPrice -> "7"
        | FIX_PriceType_FixedCabinetTradePrice -> "10"
        | FIX_PriceType_Percentage -> "1"
        | FIX_PriceType_VariableCabinetTradePrice -> "11"
        | FIX_PriceType_TEDYield -> "8"
        | FIX_PriceType_PerUnit -> "2"
        | FIX_PriceType_FixedAmount -> "3"
        | FIX_PriceType_Premium -> "5"
        | FIX_PriceType_Yield -> "9"
    )
;;

let encode_PriorityIndicator (d)  =
    (match d with
        | FIX_PriorityIndicator_PriorityUnchanged -> "0"
        | FIX_PriorityIndicator_LostPriorityAsResultOfOrderChange -> "1"
    )
;;

let encode_ProcessCode (d)  =
    (match d with
        | FIX_ProcessCode_Regular -> "0"
        | FIX_ProcessCode_SoftDollarStepOut -> "5"
        | FIX_ProcessCode_StepIn -> "2"
        | FIX_ProcessCode_PlanSponsor -> "6"
        | FIX_ProcessCode_SoftDollarStepIn -> "4"
        | FIX_ProcessCode_SoftDollar -> "1"
        | FIX_ProcessCode_StepOut -> "3"
    )
;;

let encode_Product (d)  =
    (match d with
        | FIX_Product_CURRENCY -> "4"
        | FIX_Product_COMMODITY -> "2"
        | FIX_Product_CORPORATE -> "3"
        | FIX_Product_LOAN -> "8"
        | FIX_Product_MORTGAGE -> "10"
        | FIX_Product_OTHER -> "12"
        | FIX_Product_AGENCY -> "1"
        | FIX_Product_FINANCING -> "13"
        | FIX_Product_MUNICIPAL -> "11"
        | FIX_Product_MONEYMARKET -> "9"
        | FIX_Product_INDEX -> "7"
        | FIX_Product_GOVERNMENT -> "6"
        | FIX_Product_EQUITY -> "5"
    )
;;

let encode_ProgRptReqs (d)  =
    (match d with
        | FIX_ProgRptReqs_BuySideRequests -> "1"
        | FIX_ProgRptReqs_SellSideSends -> "2"
        | FIX_ProgRptReqs_RealTimeExecutionReports -> "3"
    )
;;

let encode_PublishTrdIndicator (d)  =
    (match d with
        | FIX_PublishTrdIndicator_ReportTrade -> "Y"
        | FIX_PublishTrdIndicator_DoNotReportTrade -> "N"
    )
;;

let encode_PutOrCall (d)  =
    (match d with
        | FIX_PutOrCall_Call -> "1"
        | FIX_PutOrCall_Put -> "0"
    )
;;

let encode_QtyType (d)  =
    (match d with
        | FIX_QtyType_Units -> "0"
        | FIX_QtyType_Contracts -> "1"
    )
;;

let encode_QuoteCancelType (d)  =
    (match d with
        | FIX_QuoteCancelType_CancelAllQuotes -> "4"
        | FIX_QuoteCancelType_CancelForOneOrMoreSecurities -> "1"
        | FIX_QuoteCancelType_CancelForUnderlyingSecurity -> "3"
        | FIX_QuoteCancelType_CancelForSecurityType -> "2"
    )
;;

let enncode_inner_QuoteCondition (d)  =
    (match d with
        | FIX_QuoteCondition_Closed -> "B"
        | FIX_QuoteCondition_Locked -> "E"
        | FIX_QuoteCondition_Crossed -> "F"
        | FIX_QuoteCondition_NonFirm -> "I"
        | FIX_QuoteCondition_FastTrading -> "H"
        | FIX_QuoteCondition_ConsolidatedBest -> "D"
        | FIX_QuoteCondition_Open -> "A"
        | FIX_QuoteCondition_ExchangeBest -> "C"
        | FIX_QuoteCondition_Depth -> "G"
    )
;;

let encode_QuoteCondition (d)  =
    list_to_split (List.map enncode_inner_QuoteCondition d) ' '
;;

let encode_QuotePriceType (d)  =
    (match d with
        | FIX_QuotePriceType_Discount -> "4"
        | FIX_QuotePriceType_Spread -> "6"
        | FIX_QuotePriceType_TEDPrice -> "7"
        | FIX_QuotePriceType_Percent -> "1"
        | FIX_QuotePriceType_TEDYield -> "8"
        | FIX_QuotePriceType_FixedAmount -> "3"
        | FIX_QuotePriceType_Premium -> "5"
        | FIX_QuotePriceType_Yield -> "10"
        | FIX_QuotePriceType_YieldSpread -> "9"
        | FIX_QuotePriceType_PerShare -> "2"
    )
;;

let encode_QuoteRejectReason (d)  =
    (match d with
        | FIX_QuoteRejectReason_DuplicateQuote -> "6"
        | FIX_QuoteRejectReason_Other -> "99"
        | FIX_QuoteRejectReason_Exchange -> "2"
        | FIX_QuoteRejectReason_InvalidPrice -> "8"
        | FIX_QuoteRejectReason_InvalidBid -> "7"
        | FIX_QuoteRejectReason_UnknownQuote -> "5"
        | FIX_QuoteRejectReason_TooLateToEnter -> "4"
        | FIX_QuoteRejectReason_QuoteRequestExceedsLimit -> "3"
        | FIX_QuoteRejectReason_NotAuthorizedToQuoteSecurity -> "9"
        | FIX_QuoteRejectReason_UnknownSymbol -> "1"
    )
;;

let encode_QuoteRequestRejectReason (d)  =
    (match d with
        | FIX_QuoteRequestRejectReason_Other -> "99"
        | FIX_QuoteRequestRejectReason_Exchange -> "2"
        | FIX_QuoteRequestRejectReason_InvalidPrice -> "5"
        | FIX_QuoteRequestRejectReason_NoInventory -> "9"
        | FIX_QuoteRequestRejectReason_NoMatchForInquiry -> "7"
        | FIX_QuoteRequestRejectReason_Pass -> "10"
        | FIX_QuoteRequestRejectReason_TooLateToEnter -> "4"
        | FIX_QuoteRequestRejectReason_NoMarketForInstrument -> "8"
        | FIX_QuoteRequestRejectReason_NotAuthorizedToRequestQuote -> "6"
        | FIX_QuoteRequestRejectReason_QuoteRequestExceedsLimit -> "3"
        | FIX_QuoteRequestRejectReason_UnknownSymbol -> "1"
    )
;;

let encode_QuoteRequestType (d)  =
    (match d with
        | FIX_QuoteRequestType_Manual -> "1"
        | FIX_QuoteRequestType_Automatic -> "2"
    )
;;

let encode_QuoteRespType (d)  =
    (match d with
        | FIX_QuoteRespType_Cover -> "4"
        | FIX_QuoteRespType_Hit -> "1"
        | FIX_QuoteRespType_Counter -> "2"
        | FIX_QuoteRespType_Pass -> "6"
        | FIX_QuoteRespType_DoneAway -> "5"
        | FIX_QuoteRespType_Expired -> "3"
    )
;;

let encode_QuoteResponseLevel (d)  =
    (match d with
        | FIX_QuoteResponseLevel_NoAcknowledgement -> "0"
        | FIX_QuoteResponseLevel_AcknowledgeOnlyNegativeOrErroneousQuotes -> "1"
        | FIX_QuoteResponseLevel_AcknowledgeEachQuoteMessage -> "2"
    )
;;

let encode_QuoteStatus (d)  =
    (match d with
        | FIX_QuoteStatus_CanceledDueToLockMarket -> "14"
        | FIX_QuoteStatus_RemovedFromMarket -> "6"
        | FIX_QuoteStatus_CanceledDueToCrossMarket -> "15"
        | FIX_QuoteStatus_Rejected -> "5"
        | FIX_QuoteStatus_Expired -> "7"
        | FIX_QuoteStatus_Query -> "8"
        | FIX_QuoteStatus_QuoteNotFound -> "9"
        | FIX_QuoteStatus_CanceledAll -> "4"
        | FIX_QuoteStatus_LockedMarketWarning -> "12"
        | FIX_QuoteStatus_Accepted -> "0"
        | FIX_QuoteStatus_CancelForSymbol -> "1"
        | FIX_QuoteStatus_CrossMarketWarning -> "13"
        | FIX_QuoteStatus_Pass -> "11"
        | FIX_QuoteStatus_CanceledForSecurityType -> "2"
        | FIX_QuoteStatus_CanceledForUnderlying -> "3"
        | FIX_QuoteStatus_Pending -> "10"
    )
;;

let encode_QuoteType (d)  =
    (match d with
        | FIX_QuoteType_RestrictedTradeable -> "2"
        | FIX_QuoteType_Indicative -> "0"
        | FIX_QuoteType_Counter -> "3"
        | FIX_QuoteType_Tradeable -> "1"
    )
;;

let encode_RegistRejReasonCode (d)  =
    (match d with
        | FIX_RegistRejReasonCode_InvalidRegSeqNo -> "5"
        | FIX_RegistRejReasonCode_Other -> "99"
        | FIX_RegistRejReasonCode_InvalidDistribInstns -> "13"
        | FIX_RegistRejReasonCode_InvalidTaxExemptType -> "2"
        | FIX_RegistRejReasonCode_InvalidDateOfBirth -> "11"
        | FIX_RegistRejReasonCode_InvalidAgentCode -> "17"
        | FIX_RegistRejReasonCode_InvalidPaymentMethod -> "15"
        | FIX_RegistRejReasonCode_InvalidRegDetails -> "6"
        | FIX_RegistRejReasonCode_InvalidAccountName -> "16"
        | FIX_RegistRejReasonCode_InvalidMailingInstructions -> "8"
        | FIX_RegistRejReasonCode_InvalidPercentage -> "14"
        | FIX_RegistRejReasonCode_NoRegDetails -> "4"
        | FIX_RegistRejReasonCode_InvalidInvestorID -> "9"
        | FIX_RegistRejReasonCode_InvalidCountry -> "12"
        | FIX_RegistRejReasonCode_InvalidOwnershipType -> "3"
        | FIX_RegistRejReasonCode_InvalidAccountType -> "1"
        | FIX_RegistRejReasonCode_InvalidInvestorIDSource -> "10"
        | FIX_RegistRejReasonCode_InvalidAccountNum -> "18"
        | FIX_RegistRejReasonCode_InvalidMailingDetails -> "7"
    )
;;

let encode_RegistStatus (d)  =
    (match d with
        | FIX_RegistStatus_Reminder -> "N"
        | FIX_RegistStatus_Held -> "H"
        | FIX_RegistStatus_Rejected -> "R"
        | FIX_RegistStatus_Accepted -> "A"
    )
;;

let encode_RegistTransType (d)  =
    (match d with
        | FIX_RegistTransType_Replace -> "1"
        | FIX_RegistTransType_Cancel -> "2"
        | FIX_RegistTransType_New -> "0"
    )
;;

let encode_ReportToExch (d)  =
    (match d with
        | FIX_ReportToExch_ReceiverReports -> "Y"
        | FIX_ReportToExch_SenderReports -> "N"
    )
;;

let encode_ResetSeqNumFlag (d)  =
    (match d with
        | FIX_ResetSeqNumFlag_No -> "N"
        | FIX_ResetSeqNumFlag_Yes -> "Y"
    )
;;

let encode_ResponseTransportType (d)  =
    (match d with
        | FIX_ResponseTransportType_Inband -> "0"
        | FIX_ResponseTransportType_OutOfBand -> "1"
    )
;;

let encode_RoundingDirection (d)  =
    (match d with
        | FIX_RoundingDirection_RoundDown -> "1"
        | FIX_RoundingDirection_RoundUp -> "2"
        | FIX_RoundingDirection_RoundToNearest -> "0"
    )
;;

let encode_RoutingType (d)  =
    (match d with
        | FIX_RoutingType_TargetList -> "2"
        | FIX_RoutingType_TargetFirm -> "1"
        | FIX_RoutingType_BlockList -> "4"
        | FIX_RoutingType_BlockFirm -> "3"
    )
;;

let enncode_inner_Scope (d)  =
    (match d with
        | FIX_Scope_National -> "2"
        | FIX_Scope_LocalMarket -> "1"
        | FIX_Scope_Global -> "3"
    )
;;

let encode_Scope (d)  =
    list_to_split (List.map enncode_inner_Scope d) ' '
;;

let encode_SecurityIDSource (d)  =
    (match d with
        | FIX_SecurityIDSource_Belgian -> "F"
        | FIX_SecurityIDSource_QUIK -> "3"
        | FIX_SecurityIDSource_Sicovam -> "E"
        | FIX_SecurityIDSource_Valoren -> "D"
        | FIX_SecurityIDSource_ExchangeSymbol -> "8"
        | FIX_SecurityIDSource_ISINNumber -> "4"
        | FIX_SecurityIDSource_BloombergSymbol -> "A"
        | FIX_SecurityIDSource_Common -> "G"
        | FIX_SecurityIDSource_ConsolidatedTapeAssociation -> "9"
        | FIX_SecurityIDSource_OptionPriceReportingAuthority -> "J"
        | FIX_SecurityIDSource_ClearingHouse -> "H"
        | FIX_SecurityIDSource_Dutch -> "C"
        | FIX_SecurityIDSource_ISDAFpMLSpecification -> "I"
        | FIX_SecurityIDSource_ISOCurrencyCode -> "6"
        | FIX_SecurityIDSource_ISOCountryCode -> "7"
        | FIX_SecurityIDSource_RICCode -> "5"
        | FIX_SecurityIDSource_SEDOL -> "2"
        | FIX_SecurityIDSource_Wertpapier -> "B"
        | FIX_SecurityIDSource_CUSIP -> "1"
    )
;;

let encode_SecurityListRequestType (d)  =
    (match d with
        | FIX_SecurityListRequestType_Product -> "2"
        | FIX_SecurityListRequestType_Symbol -> "0"
        | FIX_SecurityListRequestType_SecurityTypeAnd -> "1"
        | FIX_SecurityListRequestType_TradingSessionID -> "3"
        | FIX_SecurityListRequestType_AllSecurities -> "4"
    )
;;

let encode_SecurityRequestResult (d)  =
    (match d with
        | FIX_SecurityRequestResult_InstrumentDataTemporarilyUnavailable -> "4"
        | FIX_SecurityRequestResult_NoInstrumentsFound -> "2"
        | FIX_SecurityRequestResult_InvalidOrUnsupportedRequest -> "1"
        | FIX_SecurityRequestResult_RequestForInstrumentDataNotSupported -> "5"
        | FIX_SecurityRequestResult_ValidRequest -> "0"
        | FIX_SecurityRequestResult_NotAuthorizedToRetrieveInstrumentData -> "3"
    )
;;

let encode_SecurityRequestType (d)  =
    (match d with
        | FIX_SecurityRequestType_RequestListSecurities -> "3"
        | FIX_SecurityRequestType_RequestListSecurityTypes -> "2"
        | FIX_SecurityRequestType_RequestSecurityIdentityAndSpecifications -> "0"
        | FIX_SecurityRequestType_RequestSecurityIdentityForSpecifications -> "1"
    )
;;

let encode_SecurityResponseType (d)  =
    (match d with
        | FIX_SecurityResponseType_AcceptAsIs -> "1"
        | FIX_SecurityResponseType_RejectSecurityProposal -> "5"
        | FIX_SecurityResponseType_CannotMatchSelectionCriteria -> "6"
        | FIX_SecurityResponseType_AcceptWithRevisions -> "2"
    )
;;

let encode_SecurityTradingStatus (d)  =
    (match d with
        | FIX_SecurityTradingStatus_ITSPreOpening -> "14"
        | FIX_SecurityTradingStatus_PreOpen -> "21"
        | FIX_SecurityTradingStatus_MarketImbalanceBuy -> "7"
        | FIX_SecurityTradingStatus_NoMarketOnCloseImbalance -> "13"
        | FIX_SecurityTradingStatus_NotAvailableForTrading -> "18"
        | FIX_SecurityTradingStatus_OpeningRotation -> "22"
        | FIX_SecurityTradingStatus_NoMarketImbalance -> "12"
        | FIX_SecurityTradingStatus_TradeDisseminationTime -> "16"
        | FIX_SecurityTradingStatus_ReadyToTrade -> "17"
        | FIX_SecurityTradingStatus_UnknownOrInvalid -> "20"
        | FIX_SecurityTradingStatus_MarketOnCloseImbalanceBuy -> "9"
        | FIX_SecurityTradingStatus_OpeningDelay -> "1"
        | FIX_SecurityTradingStatus_NoOpen -> "4"
        | FIX_SecurityTradingStatus_TradingHalt -> "2"
        | FIX_SecurityTradingStatus_MarketOnCloseImbalanceSell -> "10"
        | FIX_SecurityTradingStatus_MarketImbalanceSell -> "8"
        | FIX_SecurityTradingStatus_NotTradedOnThisMarket -> "19"
        | FIX_SecurityTradingStatus_TradingRangeIndication -> "6"
        | FIX_SecurityTradingStatus_FastMarket -> "23"
        | FIX_SecurityTradingStatus_NewPriceIndication -> "15"
        | FIX_SecurityTradingStatus_PriceIndication -> "5"
        | FIX_SecurityTradingStatus_Resume -> "3"
    )
;;

let encode_SecurityType (d)  =
    (match d with
        | FIX_SecurityType_MutualFund -> "MF"
        | FIX_SecurityType_YankeeCorporateBond -> "YANK"
        | FIX_SecurityType_InterestStripFromAnyBondOrNote -> "TINT"
        | FIX_SecurityType_Revolver -> "RVLVTRM"
        | FIX_SecurityType_CommercialPaper -> "CP"
        | FIX_SecurityType_RevenueAnticipationNote -> "RAN"
        | FIX_SecurityType_Matured -> "MATURED"
        | FIX_SecurityType_Retired -> "RETIRED"
        | FIX_SecurityType_StructuredNotes -> "STRUCT"
        | FIX_SecurityType_MortgagePrivatePlacement -> "MPP"
        | FIX_SecurityType_Pfandbriefe -> "PFAND"
        | FIX_SecurityType_OtherAnticipationNotes -> "AN"
        | FIX_SecurityType_USDSupranationalCoupons -> "SUPRA"
        | FIX_SecurityType_MandatoryTender -> "MT"
        | FIX_SecurityType_PreferredStock -> "PS"
        | FIX_SecurityType_ToBeAnnounced -> "TBA"
        | FIX_SecurityType_GeneralObligationBonds -> "GO"
        | FIX_SecurityType_TimeDeposit -> "TD"
        | FIX_SecurityType_ExtendedCommNote -> "XCN"
        | FIX_SecurityType_MiscellaneousPassThrough -> "MPT"
        | FIX_SecurityType_YankeeCertificateOfDeposit -> "YCD"
        | FIX_SecurityType_Future -> "FUT"
        | FIX_SecurityType_Forward -> "FORWARD"
        | FIX_SecurityType_VariableRateDemandNote -> "VRDN"
        | FIX_SecurityType_MediumTermNotes -> "MTN"
        | FIX_SecurityType_Option -> "OPT"
        | FIX_SecurityType_Repurchase -> "REPO"
        | FIX_SecurityType_PlazosFijos -> "PZFJ"
        | FIX_SecurityType_USTreasuryBill -> "TBILL"
        | FIX_SecurityType_BankNotes -> "BN"
        | FIX_SecurityType_MortgagePrincipalOnly -> "MPO"
        | FIX_SecurityType_MortgageInterestOnly -> "MIO"
        | FIX_SecurityType_AssetBackedSecurities -> "ABS"
        | FIX_SecurityType_Warrant -> "WAR"
        | FIX_SecurityType_SpecialTax -> "SPCLT"
        | FIX_SecurityType_EuroSupranationalCoupons -> "EUSUPRA"
        | FIX_SecurityType_ForeignExchangeContract -> "FOR"
        | FIX_SecurityType_USTreasuryBillOld -> "USTB"
        | FIX_SecurityType_CertificateOfDeposit -> "CD"
        | FIX_SecurityType_TaxAnticipationNote -> "TAN"
        | FIX_SecurityType_LetterOfCredit -> "LOFC"
        | FIX_SecurityType_CollateralizedMortgageObligation -> "CMO"
        | FIX_SecurityType_IOETTEMortgage -> "IET"
        | FIX_SecurityType_MortgageBackedSecurities -> "MBS"
        | FIX_SecurityType_BillOfExchanges -> "BOX"
        | FIX_SecurityType_Amended -> "AMENDED"
        | FIX_SecurityType_RevenueBonds -> "REV"
        | FIX_SecurityType_EuroCorporateBond -> "EUCORP"
        | FIX_SecurityType_PrivateExportFunding -> "PEF"
        | FIX_SecurityType_RevolverLoan -> "RVLV"
        | FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote -> "TPRN"
        | FIX_SecurityType_Withdrawn -> "WITHDRN"
        | FIX_SecurityType_DepositNotes -> "DN"
        | FIX_SecurityType_SpecialAssessment -> "SPCLA"
        | FIX_SecurityType_EuroSovereigns -> "EUSOV"
        | FIX_SecurityType_TaxAllocation -> "TAXA"
        | FIX_SecurityType_EuroCertificateOfDeposit -> "EUCD"
        | FIX_SecurityType_PromissoryNote -> "PN"
        | FIX_SecurityType_PrincipalStripOfACallableBondOrNote -> "TCAL"
        | FIX_SecurityType_Overnight -> "ONITE"
        | FIX_SecurityType_ConvertibleBond -> "CB"
        | FIX_SecurityType_Corp -> "CMBS"
        | FIX_SecurityType_SpecialObligation -> "SPCLO"
        | FIX_SecurityType_SecuritiesLoan -> "SECLOAN"
        | FIX_SecurityType_CertificateOfObligation -> "COFO"
        | FIX_SecurityType_FederalAgencyDiscountNote -> "FADN"
        | FIX_SecurityType_CallLoans -> "CL"
        | FIX_SecurityType_DebtorInPossession -> "DINP"
        | FIX_SecurityType_USTreasuryBond -> "TBOND"
        | FIX_SecurityType_SecuritiesPledge -> "SECPLEDGE"
        | FIX_SecurityType_Replaced -> "REPLACD"
        | FIX_SecurityType_BradyBond -> "BRADY"
        | FIX_SecurityType_CorporateBond -> "CORP"
        | FIX_SecurityType_TermLoan -> "TERM"
        | FIX_SecurityType_TaxRevenueAnticipationNote -> "TRAN"
        | FIX_SecurityType_SwingLineFacility -> "SWING"
        | FIX_SecurityType_TaxExemptCommercialPaper -> "TECP"
        | FIX_SecurityType_NoSecurityType -> "NONE"
        | FIX_SecurityType_DualCurrency -> "DUAL"
        | FIX_SecurityType_FederalAgencyCoupon -> "FAC"
        | FIX_SecurityType_BankersAcceptance -> "BA"
        | FIX_SecurityType_MultilegInstrument -> "MLEG"
        | FIX_SecurityType_EuroCommercialPaper -> "EUCP"
        | FIX_SecurityType_CommonStock -> "CS"
        | FIX_SecurityType_USTreasuryNote -> "TNOTE"
        | FIX_SecurityType_TreasuryInflationProtectedSecurities -> "TIPS"
        | FIX_SecurityType_IndexedLinked -> "XLINKD"
        | FIX_SecurityType_BridgeLoan -> "BRIDGE"
        | FIX_SecurityType_ShortTermLoanNote -> "STN"
        | FIX_SecurityType_Defaulted -> "DEFLTED"
        | FIX_SecurityType_USTreasuryNoteOld -> "UST"
        | FIX_SecurityType_CertificateOfParticipation -> "COFP"
        | FIX_SecurityType_CorporatePrivatePlacement -> "CPP"
        | FIX_SecurityType_BuySellback -> "BUYSELL"
        | FIX_SecurityType_LiquidityNote -> "LQN"
    )
;;

let encode_SettlCurrFxRateCalc (d)  =
    (match d with
        | FIX_SettlCurrFxRateCalc_Multiply -> "M"
        | FIX_SettlCurrFxRateCalc_Divide -> "D"
    )
;;

let encode_SettlDeliveryType (d)  =
    (match d with
        | FIX_SettlDeliveryType_TriParty -> "2"
        | FIX_SettlDeliveryType_Versus -> "0"
        | FIX_SettlDeliveryType_HoldInCustody -> "3"
        | FIX_SettlDeliveryType_Free -> "1"
    )
;;

let encode_SettlInstMode (d)  =
    (match d with
        | FIX_SettlInstMode_RequestReject -> "5"
        | FIX_SettlInstMode_StandingInstructionsProvided -> "1"
        | FIX_SettlInstMode_SpecificOrderForASingleAccount -> "4"
    )
;;

let encode_SettlInstReqRejCode (d)  =
    (match d with
        | FIX_SettlInstReqRejCode_Other -> "99"
        | FIX_SettlInstReqRejCode_NoMatchingSettlementInstructionsFound -> "2"
        | FIX_SettlInstReqRejCode_UnknownAccount -> "1"
        | FIX_SettlInstReqRejCode_UnableToProcessRequest -> "0"
    )
;;

let encode_SettlInstSource (d)  =
    (match d with
        | FIX_SettlInstSource_Investor -> "3"
        | FIX_SettlInstSource_Institution -> "2"
        | FIX_SettlInstSource_BrokerCredit -> "1"
    )
;;

let encode_SettlInstTransType (d)  =
    (match d with
        | FIX_SettlInstTransType_Cancel -> "C"
        | FIX_SettlInstTransType_Replace -> "R"
        | FIX_SettlInstTransType_New -> "N"
        | FIX_SettlInstTransType_Restate -> "T"
    )
;;

let encode_SettlPriceType (d)  =
    (match d with
        | FIX_SettlPriceType_Theoretical -> "2"
        | FIX_SettlPriceType_Final -> "1"
    )
;;

let encode_SettlSessID (d)  =
    (match d with
        | FIX_SettlSessID_Intraday -> "ITD"
        | FIX_SettlSessID_RegularTradingHours -> "RTH"
        | FIX_SettlSessID_ElectronicTradingHours -> "ETH"
    )
;;

let encode_SettlType (d)  =
    (match d with
        | FIX_SettlType_Regular -> "0"
        | FIX_SettlType_TPlus2 -> "3"
        | FIX_SettlType_SellersOption -> "8"
        | FIX_SettlType_TPlus4 -> "5"
        | FIX_SettlType_TPlus3 -> "4"
        | FIX_SettlType_TPlus5 -> "9"
        | FIX_SettlType_NextDay -> "2"
        | FIX_SettlType_Future -> "6"
        | FIX_SettlType_Cash -> "1"
        | FIX_SettlType_WhenAndIfIssued -> "7"
    )
;;

let encode_ShortSaleReason (d)  =
    (match d with
        | FIX_ShortSaleReason_SellingCustomerSoldShort -> "2"
        | FIX_ShortSaleReason_QSROrAGUContraSideSoldShortExempt -> "5"
        | FIX_ShortSaleReason_DealerSoldShort -> "0"
        | FIX_ShortSaleReason_QualifiedServiceRepresentative -> "4"
        | FIX_ShortSaleReason_DealerSoldShortExempt -> "1"
        | FIX_ShortSaleReason_SellingCustomerSoldShortExempt -> "3"
    )
;;

let encode_Side (d)  =
    (match d with
        | FIX_Side_AsDefined -> "B"
        | FIX_Side_Opposite -> "C"
        | FIX_Side_Buy -> "1"
        | FIX_Side_CrossShortExempt -> "A"
        | FIX_Side_Borrow -> "G"
        | FIX_Side_BuyMinus -> "3"
        | FIX_Side_Subscribe -> "D"
        | FIX_Side_Lend -> "F"
        | FIX_Side_SellShortExempt -> "6"
        | FIX_Side_Redeem -> "E"
        | FIX_Side_SellPlus -> "4"
        | FIX_Side_Sell -> "2"
        | FIX_Side_Undisclosed -> "7"
        | FIX_Side_Cross -> "8"
        | FIX_Side_CrossShort -> "9"
        | FIX_Side_SellShort -> "5"
    )
;;

let encode_SideMultiLegReportingType (d)  =
    (match d with
        | FIX_SideMultiLegReportingType_SingleSecurity -> "1"
        | FIX_SideMultiLegReportingType_MultilegSecurity -> "3"
        | FIX_SideMultiLegReportingType_IndividualLegOfAMultilegSecurity -> "2"
    )
;;

let encode_SideValueInd (d)  =
    (match d with
        | FIX_SideValueInd_SideValue1 -> "1"
        | FIX_SideValueInd_SideValue2 -> "2"
    )
;;

let encode_SolicitedFlag (d)  =
    (match d with
        | FIX_SolicitedFlag_WasSolicited -> "Y"
        | FIX_SolicitedFlag_WasNotSolicited -> "N"
    )
;;

let encode_StandInstDbType (d)  =
    (match d with
        | FIX_StandInstDbType_Other -> "0"
        | FIX_StandInstDbType_AccountNet -> "4"
        | FIX_StandInstDbType_DTCSID -> "1"
        | FIX_StandInstDbType_ThomsonALERT -> "2"
        | FIX_StandInstDbType_AGlobalCustodian -> "3"
    )
;;

let encode_StatusValue (d)  =
    (match d with
        | FIX_StatusValue_NotConnectedUnexpected -> "2"
        | FIX_StatusValue_InProcess -> "4"
        | FIX_StatusValue_Connected -> "1"
        | FIX_StatusValue_NotConnectedExpected -> "3"
    )
;;

let encode_StipulationType (d)  =
    (match d with
        | FIX_StipulationType_LookbackDays -> "LOOKBACK"
        | FIX_StipulationType_CouponRange -> "COUPON"
        | FIX_StipulationType_PoolsPerLot -> "PPL"
        | FIX_StipulationType_YieldRange -> "YIELD"
        | FIX_StipulationType_Purpose -> "PURPOSE"
        | FIX_StipulationType_PaymentFrequency -> "PAYFREQ"
        | FIX_StipulationType_Insured -> "INSURED"
        | FIX_StipulationType_SubstitutionsFrequency -> "SUBSFREQ"
        | FIX_StipulationType_WeightedAverageLoanAge -> "WALA"
        | FIX_StipulationType_PricingFrequency -> "PRICEFREQ"
        | FIX_StipulationType_PoolsMaximum -> "PMAX"
        | FIX_StipulationType_CallProtection -> "PROTECT"
        | FIX_StipulationType_TypeOfRedemption -> "REDEMPTION"
        | FIX_StipulationType_MaturityRange -> "MATURITY"
        | FIX_StipulationType_SecurityTypeIncludedOrExcluded -> "SECTYPE"
        | FIX_StipulationType_SubstitutionsLeft -> "SUBSLEFT"
        | FIX_StipulationType_IssueSizeRange -> "ISSUESIZE"
        | FIX_StipulationType_WeightedAverageCoupon -> "WAC"
        | FIX_StipulationType_FreeformText -> "TEXT"
        | FIX_StipulationType_WeightedAverageLifeCoupon -> "WAL"
        | FIX_StipulationType_BankQualified -> "BANKQUAL"
        | FIX_StipulationType_ExplicitLotIdentifier -> "LOT"
        | FIX_StipulationType_TradeVariance -> "TRDVAR"
        | FIX_StipulationType_MaximumSubstitutions -> "MAXSUBS"
        | FIX_StipulationType_RatingSourceAndRange -> "RATING"
        | FIX_StipulationType_MinimumIncrement -> "MININCR"
        | FIX_StipulationType_CustomStart -> "CUSTOMDATE"
        | FIX_StipulationType_MinimumDenomination -> "MINDNOM"
        | FIX_StipulationType_PoolsPerMillion -> "PPM"
        | FIX_StipulationType_IssueDate -> "ISSUE"
        | FIX_StipulationType_Geographics -> "GEOG"
        | FIX_StipulationType_MinimumQuantity -> "MINQTY"
        | FIX_StipulationType_PoolsPerTrade -> "PPT"
        | FIX_StipulationType_ISOCurrencyCode -> "CURRENCY"
        | FIX_StipulationType_MaturityYearAndMonth -> "MAT"
        | FIX_StipulationType_WholePool -> "WHOLE"
        | FIX_StipulationType_AlternativeMinimumTax -> "AMT"
        | FIX_StipulationType_Issuer -> "ISSUER"
        | FIX_StipulationType_Restricted -> "RESTRICTED"
        | FIX_StipulationType_PriceRange -> "PRICE"
        | FIX_StipulationType_MarketSector -> "SECTOR"
        | FIX_StipulationType_AutoReinvestment -> "AUTOREINV"
        | FIX_StipulationType_NumberOfPieces -> "PIECES"
        | FIX_StipulationType_ProductionYear -> "PROD"
        | FIX_StipulationType_ValuationDiscount -> "HAIRCUT"
        | FIX_StipulationType_BargainConditions -> "BGNCON"
        | FIX_StipulationType_BenchmarkPriceSource -> "PXSOURCE"
        | FIX_StipulationType_WeightedAverageMaturity -> "WAM"
        | FIX_StipulationType_Structure -> "STRUCT"
        | FIX_StipulationType_LotVariance -> "LOTVAR"
    )
;;

let encode_SubscriptionRequestType (d)  =
    (match d with
        | FIX_SubscriptionRequestType_DisablePreviousSnapshot -> "2"
        | FIX_SubscriptionRequestType_SnapshotAndUpdates -> "1"
        | FIX_SubscriptionRequestType_Snapshot -> "0"
    )
;;

let encode_TargetStrategy (d)  =
    (match d with
        | FIX_TargetStrategy_MininizeMarketImpact -> "3"
        | FIX_TargetStrategy_VWAP -> "1"
        | FIX_TargetStrategy_Participate -> "2"
    )
;;

let encode_TaxAdvantageType (d)  =
    (match d with
        | FIX_TaxAdvantageType_MiniInsuranceISA -> "5"
        | FIX_TaxAdvantageType_US457 -> "23"
        | FIX_TaxAdvantageType_CurrentYearPayment -> "6"
        | FIX_TaxAdvantageType_US401K -> "20"
        | FIX_TaxAdvantageType_AssetTransfer -> "8"
        | FIX_TaxAdvantageType_EducationIRAPrototype -> "28"
        | FIX_TaxAdvantageType_IRARollover -> "17"
        | FIX_TaxAdvantageType_RothIRANonPrototype -> "25"
        | FIX_TaxAdvantageType_MiniCashISA -> "3"
        | FIX_TaxAdvantageType_IRA -> "16"
        | FIX_TaxAdvantageType_SelfDirectedIRA -> "21"
        | FIX_TaxAdvantageType_RothIRAPrototype -> "24"
        | FIX_TaxAdvantageType_MaxiISA -> "1"
        | FIX_TaxAdvantageType_EmployeeCurrentYear -> "10"
        | FIX_TaxAdvantageType_NonFundPrototypeIRA -> "13"
        | FIX_TaxAdvantageType_MiniStocksAndSharesISA -> "4"
        | FIX_TaxAdvantageType_PriorYearPayment -> "7"
        | FIX_TaxAdvantageType_ProfitSharingPlan -> "19"
        | FIX_TaxAdvantageType_FIXNone -> "0"
        | FIX_TaxAdvantageType_TESSA -> "2"
        | FIX_TaxAdvantageType_EmployerPriorYear -> "11"
        | FIX_TaxAdvantageType_EmployerCurrentYear -> "12"
        | FIX_TaxAdvantageType_KEOGH -> "18"
        | FIX_TaxAdvantageType_NonFundQualifiedPlan -> "14"
        | FIX_TaxAdvantageType_EmployeePriorYear -> "9"
        | FIX_TaxAdvantageType_RothConversionIRANonPrototype -> "27"
        | FIX_TaxAdvantageType_US403b -> "22"
        | FIX_TaxAdvantageType_RothConversionIRAPrototype -> "26"
        | FIX_TaxAdvantageType_DefinedContributionPlan -> "15"
        | FIX_TaxAdvantageType_EducationIRANonPrototype -> "29"
    )
;;

let encode_TerminationType (d)  =
    (match d with
        | FIX_TerminationType_Flexible -> "3"
        | FIX_TerminationType_Overnight -> "1"
        | FIX_TerminationType_Term -> "2"
        | FIX_TerminationType_Open -> "4"
    )
;;

let encode_TestMessageIndicator (d)  =
    (match d with
        | FIX_TestMessageIndicator_Fales -> "N"
        | FIX_TestMessageIndicator_True -> "Y"
    )
;;

let encode_TickDirection (d)  =
    (match d with
        | FIX_TickDirection_ZeroMinusTick -> "3"
        | FIX_TickDirection_PlusTick -> "0"
        | FIX_TickDirection_MinusTick -> "2"
        | FIX_TickDirection_ZeroPlusTick -> "1"
    )
;;

let encode_TimeInForce (d)  =
    (match d with
        | FIX_TimeInForce_GoodTillCancel -> "1"
        | FIX_TimeInForce_AtTheClose -> "7"
        | FIX_TimeInForce_ImmediateOrCancel -> "3"
        | FIX_TimeInForce_Day -> "0"
        | FIX_TimeInForce_FillOrKill -> "4"
        | FIX_TimeInForce_AtTheOpening -> "2"
        | FIX_TimeInForce_GoodTillCrossing -> "5"
        | FIX_TimeInForce_GoodTillDate -> "6"
    )
;;

let encode_TradSesMethod (d)  =
    (match d with
        | FIX_TradSesMethod_OpenOutcry -> "2"
        | FIX_TradSesMethod_Electronic -> "1"
        | FIX_TradSesMethod_TwoParty -> "3"
    )
;;

let encode_TradSesMode (d)  =
    (match d with
        | FIX_TradSesMode_Testing -> "1"
        | FIX_TradSesMode_Simulated -> "2"
        | FIX_TradSesMode_Production -> "3"
    )
;;

let encode_TradSesStatus (d)  =
    (match d with
        | FIX_TradSesStatus_Closed -> "3"
        | FIX_TradSesStatus_PreOpen -> "4"
        | FIX_TradSesStatus_RequestRejected -> "6"
        | FIX_TradSesStatus_PreClose -> "5"
        | FIX_TradSesStatus_Unknown -> "0"
        | FIX_TradSesStatus_Halted -> "1"
        | FIX_TradSesStatus_Open -> "2"
    )
;;

let encode_TradSesStatusRejReason (d)  =
    (match d with
        | FIX_TradSesStatusRejReason_Other -> "99"
        | FIX_TradSesStatusRejReason_UnknownOrInvalidTradingSessionID -> "1"
    )
;;

let encode_TradeAllocIndicator (d)  =
    (match d with
        | FIX_TradeAllocIndicator_UseAllocationProvidedWithTheTrade -> "2"
        | FIX_TradeAllocIndicator_AllocationNotRequired -> "0"
        | FIX_TradeAllocIndicator_AllocationRequired -> "1"
    )
;;

let enncode_inner_TradeCondition (d)  =
    (match d with
        | FIX_TradeCondition_Opened -> "K"
        | FIX_TradeCondition_Rule127Trade -> "G"
        | FIX_TradeCondition_CashTrade -> "C"
        | FIX_TradeCondition_IntradayTradeDetail -> "F"
        | FIX_TradeCondition_SoldLast -> "I"
        | FIX_TradeCondition_Cash -> "A"
        | FIX_TradeCondition_StoppedStock -> "N"
        | FIX_TradeCondition_ImbalanceMoreSellers -> "Q"
        | FIX_TradeCondition_Sold -> "M"
        | FIX_TradeCondition_ImbalanceMoreBuyers -> "P"
        | FIX_TradeCondition_NextDay -> "D"
        | FIX_TradeCondition_Opening -> "E"
        | FIX_TradeCondition_Seller -> "L"
        | FIX_TradeCondition_OpeningPrice -> "R"
        | FIX_TradeCondition_AveragePriceTrade -> "B"
        | FIX_TradeCondition_Rule155Trade -> "H"
        | FIX_TradeCondition_NextDayTrade -> "J"
    )
;;

let encode_TradeCondition (d)  =
    list_to_split (List.map enncode_inner_TradeCondition d) ' '
;;

let encode_TradeReportRejectReason (d)  =
    (match d with
        | FIX_TradeReportRejectReason_Other -> "99"
        | FIX_TradeReportRejectReason_InvalidTradeType -> "4"
        | FIX_TradeReportRejectReason_UnauthorizedToReportTrades -> "3"
        | FIX_TradeReportRejectReason_InvalidPartyOnformation -> "1"
        | FIX_TradeReportRejectReason_UnknownInstrument -> "2"
        | FIX_TradeReportRejectReason_Successful -> "0"
    )
;;

let encode_TradeReportType (d)  =
    (match d with
        | FIX_TradeReportType_Alleged -> "1"
        | FIX_TradeReportType_No -> "5"
        | FIX_TradeReportType_TradeReportCancel -> "6"
        | FIX_TradeReportType_Decline -> "3"
        | FIX_TradeReportType_Addendum -> "4"
        | FIX_TradeReportType_Submit -> "0"
        | FIX_TradeReportType_Accept -> "2"
        | FIX_TradeReportType_LockedIn -> "7"
    )
;;

let encode_TradeRequestResult (d)  =
    (match d with
        | FIX_TradeRequestResult_TradeRequestTypeNotSupported -> "8"
        | FIX_TradeRequestResult_Other -> "99"
        | FIX_TradeRequestResult_InvalidParties -> "3"
        | FIX_TradeRequestResult_InvalidOrUnknownInstrument -> "1"
        | FIX_TradeRequestResult_InvalidTransportTypeRequested -> "4"
        | FIX_TradeRequestResult_InvalidTypeOfTradeRequested -> "2"
        | FIX_TradeRequestResult_InvalidDestinationRequested -> "5"
        | FIX_TradeRequestResult_Successful -> "0"
        | FIX_TradeRequestResult_NotAuthorized -> "9"
    )
;;

let encode_TradeRequestStatus (d)  =
    (match d with
        | FIX_TradeRequestStatus_Rejected -> "2"
        | FIX_TradeRequestStatus_Completed -> "1"
        | FIX_TradeRequestStatus_Accepted -> "0"
    )
;;

let encode_TradeRequestType (d)  =
    (match d with
        | FIX_TradeRequestType_MatchedTradesMatchingCriteria -> "1"
        | FIX_TradeRequestType_AdvisoriesThatMatchCriteria -> "4"
        | FIX_TradeRequestType_AllTrades -> "0"
        | FIX_TradeRequestType_UnreportedTradesThatMatchCriteria -> "3"
        | FIX_TradeRequestType_UnmatchedTradesThatMatchCriteria -> "2"
    )
;;

let encode_TradedFlatSwitch (d)  =
    (match d with
        | FIX_TradedFlatSwitch_TradedFlat -> "Y"
        | FIX_TradedFlatSwitch_NotTradedFlat -> "N"
    )
;;

let encode_TrdRegTimestampType (d)  =
    (match d with
        | FIX_TrdRegTimestampType_ExecutionTime -> "1"
        | FIX_TrdRegTimestampType_TimeIn -> "2"
        | FIX_TrdRegTimestampType_BrokerReceipt -> "4"
        | FIX_TrdRegTimestampType_BrokerExecution -> "5"
        | FIX_TrdRegTimestampType_TimeOut -> "3"
    )
;;

let encode_TrdRptStatus (d)  =
    (match d with
        | FIX_TrdRptStatus_Rejected -> "1"
        | FIX_TrdRptStatus_Accepted -> "0"
    )
;;

let encode_TrdType (d)  =
    (match d with
        | FIX_TrdType_BlockTrade -> "1"
        | FIX_TrdType_TTrade -> "5"
        | FIX_TrdType_BunchedTrade -> "7"
        | FIX_TrdType_WeightedAveragePriceTrade -> "6"
        | FIX_TrdType_PriorReferencePriceTrade -> "9"
        | FIX_TrdType_AfterHoursTrade -> "10"
        | FIX_TrdType_Transfer -> "3"
        | FIX_TrdType_LateTrade -> "4"
        | FIX_TrdType_LateBunchedTrade -> "8"
        | FIX_TrdType_RegularTrade -> "0"
        | FIX_TrdType_EFP -> "2"
    )
;;

let encode_UnsolicitedIndicator (d)  =
    (match d with
        | FIX_UnsolicitedIndicator_MessageIsBeingSentAsAResultOfAPriorRequest -> "N"
        | FIX_UnsolicitedIndicator_MessageIsBeingSentUnsolicited -> "Y"
    )
;;

let encode_Urgency (d)  =
    (match d with
        | FIX_Urgency_Flash -> "1"
        | FIX_Urgency_Background -> "2"
        | FIX_Urgency_Normal -> "0"
    )
;;

let encode_UserRequestType (d)  =
    (match d with
        | FIX_UserRequestType_RequestIndividualUserStatus -> "4"
        | FIX_UserRequestType_LogOffUser -> "2"
        | FIX_UserRequestType_LogOnUser -> "1"
        | FIX_UserRequestType_ChangePasswordForUser -> "3"
    )
;;

let encode_UserStatus (d)  =
    (match d with
        | FIX_UserStatus_UserNotRecognised -> "3"
        | FIX_UserStatus_Other -> "6"
        | FIX_UserStatus_PasswordChanged -> "5"
        | FIX_UserStatus_NotLoggedIn -> "2"
        | FIX_UserStatus_LoggedIn -> "1"
        | FIX_UserStatus_PasswordIncorrect -> "4"
    )
;;

let encode_WorkingIndicator (d)  =
    (match d with
        | FIX_WorkingIndicator_Working -> "Y"
        | FIX_WorkingIndicator_NotWorking -> "N"
    )
;;

let encode_YieldType (d)  =
    (match d with
        | FIX_YieldType_AfterTaxYield -> "AFTERTAX"
        | FIX_YieldType_YieldToNextRefund -> "NEXTREFUND"
        | FIX_YieldType_SemiAnnualYield -> "SEMIANNUAL"
        | FIX_YieldType_SimpleYield -> "SIMPLE"
        | FIX_YieldType_GvntEquivalentYield -> "GOVTEQUIV"
        | FIX_YieldType_YieldToLongestAverageLife -> "LONGAVGLIFE"
        | FIX_YieldType_ClosingYieldMostRecentQuarter -> "LASTQUARTER"
        | FIX_YieldType_YieldToShortestAverageLife -> "SHORTAVGLIFE"
        | FIX_YieldType_YieldToNextCall -> "CALL"
        | FIX_YieldType_YieldToNextPut -> "PUT"
        | FIX_YieldType_TrueGrossYield -> "GROSS"
        | FIX_YieldType_InverseFloaterBondYield -> "INVERSEFLOATER"
        | FIX_YieldType_YieldToMaturity -> "MATURITY"
        | FIX_YieldType_YieldWithInflationAssumption -> "INFLATION"
        | FIX_YieldType_TaxEquivalentYield -> "TAXEQUIV"
        | FIX_YieldType_YieldToTenderDate -> "TENDER"
        | FIX_YieldType_YieldToWorst -> "WORST"
        | FIX_YieldType_ClosingYield -> "CLOSE"
        | FIX_YieldType_YieldAtIssue -> "ATISSUE"
        | FIX_YieldType_YieldToAverageMaturity -> "AVGMATURITY"
        | FIX_YieldType_BookYield -> "BOOK"
        | FIX_YieldType_CurrentYield -> "CURRENT"
        | FIX_YieldType_ClosingYieldMostRecentMonth -> "LASTMONTH"
        | FIX_YieldType_ClosingYieldMostRecentYear -> "LASTYEAR"
        | FIX_YieldType_CompoundYield -> "COMPOUND"
        | FIX_YieldType_YieldChangeSinceClose -> "CHANGE"
        | FIX_YieldType_OpenAverageYield -> "OPENAVG"
        | FIX_YieldType_MarkToMarketYield -> "MARK"
        | FIX_YieldType_YieldValueOf132 -> "VALUE1/32"
        | FIX_YieldType_TrueYield -> "TRUE"
        | FIX_YieldType_AnnualYield -> "ANNUAL"
        | FIX_YieldType_PreviousCloseYield -> "PREVCLOSE"
        | FIX_YieldType_MostRecentClosingYield -> "LASTCLOSE"
        | FIX_YieldType_ProceedsYield -> "PROCEEDS"
    )
;;

let encode_week (d)  =
    (match d with
        | FIX_week_w1 -> "w1"
        | FIX_week_w2 -> "w2"
        | FIX_week_w3 -> "w3"
        | FIX_week_noweek -> "noweek"
        | FIX_week_w4 -> "w4"
        | FIX_week_w5 -> "w5"
    )
;;

let encode_Currency (d)  =
    (match d with
        | FIX_Currency_EUR -> "EUR"
        | FIX_Currency_CHF -> "CHF"
        | FIX_Currency_USD -> "USD"
        | FIX_Currency_GBP -> "GBP"
    )
;;

let encode_Country (d)  =
    (match d with
        | FIX_Country_DE -> "DE"
        | FIX_Country_GB -> "GB"
        | FIX_Country_US -> "US"
    )
;;

let encode_Exchange (d)  =
    (match d with
        | FIX_Exchange_XSHG -> "XSHG"
        | FIX_Exchange_SHSC -> "SHSC"
        | FIX_Exchange_XNYS -> "XNYS"
        | FIX_Exchange_XJAS -> "XJAS"
        | FIX_Exchange_XLON -> "XLON"
        | FIX_Exchange_XNAS -> "XNAS"
    )
;;
