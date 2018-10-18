(* Aesthetic Integration copyright 2018 *)

(** Type of account associated with an order*)
type fix_accounttype =
    | FIX_AccountType_CarriedCustomerSide 
    | FIX_AccountType_HouseTrader 
    | FIX_AccountType_CarriedNonCustomerSide 
    | FIX_AccountType_CarriedNonCustomerSideCrossMargined 
    | FIX_AccountType_JointBackOfficeAccount 
    | FIX_AccountType_HouseTraderCrossMargined 
    | FIX_AccountType_FloorTrader 
;;

(** Used to identify the source of the Account (1) code. This is especially useful if the account is a new account that the Respondent may not have setup yet in their system.*)
type fix_acctidsource =
    | FIX_AcctIDSource_Other 
    | FIX_AcctIDSource_BIC 
    | FIX_AcctIDSource_TFM 
    | FIX_AcctIDSource_DTCCCode 
    | FIX_AcctIDSource_SIDCode 
    | FIX_AcctIDSource_OMGEO 
;;

(** Identifies the type of adjustment*)
type fix_adjustment =
    | FIX_Adjustment_Cancel 
    | FIX_Adjustment_Error 
    | FIX_Adjustment_Correction 
;;

(** Type of adjustment to be applied, used for PCS & PAJ*)
type fix_adjustmenttype =
    | FIX_AdjustmentType_ProcessRequestAsMarginDisposition 
    | FIX_AdjustmentType_DeltaPlus 
    | FIX_AdjustmentType_Final 
    | FIX_AdjustmentType_DeltaMinus 
;;

(** Broker's side of advertised trade*)
type fix_advside =
    | FIX_AdvSide_Buy 
    | FIX_AdvSide_Sell 
    | FIX_AdvSide_Trade 
    | FIX_AdvSide_Cross 
;;

(** Identifies advertisement message transaction type*)
type fix_advtranstype =
    | FIX_AdvTransType_Cancel 
    | FIX_AdvTransType_Replace 
    | FIX_AdvTransType_New 
;;

(** Identifies the status of the ConfirmationAck*)
type fix_affirmstatus =
    | FIX_AffirmStatus_Affirmed 
    | FIX_AffirmStatus_Received 
    | FIX_AffirmStatus_ConfirmRejected 
;;

(** Specifies whether or not book entries should be aggregated.*)
type fix_aggregatedbook =
    | FIX_AggregatedBook_BookEntriesToBeAggregated 
    | FIX_AggregatedBook_BookEntriesShouldNotBeAggregated 
;;

(** Type of account associated with a confirmation or other trade-level message*)
type fix_allocaccounttype =
    | FIX_AllocAccountType_CarriedCustomerSide 
    | FIX_AllocAccountType_HouseTrader 
    | FIX_AllocAccountType_CarriedNonCustomerSide 
    | FIX_AllocAccountType_CarriedNonCustomerSideCrossMargined 
    | FIX_AllocAccountType_JointBackOfficeAccount 
    | FIX_AllocAccountType_HouseTraderCrossMargined 
    | FIX_AllocAccountType_FloorTrader 
;;

(** Reason for cancelling or replacing an Allocation Instruction or Allocation Report message*)
type fix_alloccancreplacereason =
    | FIX_AllocCancReplaceReason_Other 
    | FIX_AllocCancReplaceReason_ChangeInUnderlyingOrderDetails 
    | FIX_AllocCancReplaceReason_OriginalDetailsIncomplete 
;;

(** Indicates how the receiver (i.e. third party) of Allocation message should handle/process the account details*)
type fix_allochandlinst =
    | FIX_AllocHandlInst_ForwardAndMatch 
    | FIX_AllocHandlInst_Forward 
    | FIX_AllocHandlInst_Match 
;;

(** Response to allocation to be communicated to a counterparty through an intermediary, i.e. clearing house. Used in conjunction with AllocType = "Request to Intermediary" and AllocReportType = "Request to Intermediary"*)
type fix_allocintermedreqtype =
    | FIX_AllocIntermedReqType_PendingAccept 
    | FIX_AllocIntermedReqType_BlockLevelReject 
    | FIX_AllocIntermedReqType_PendingRelease 
    | FIX_AllocIntermedReqType_PendingReversal 
    | FIX_AllocIntermedReqType_AccountLevelReject 
    | FIX_AllocIntermedReqType_Accept 
;;

(** Identifies the type of Allocation linkage when AllocLinkID (96) is used.*)
type fix_alloclinktype =
    | FIX_AllocLinkType_FXSwap 
    | FIX_AllocLinkType_FXNetting 
;;

(** Indicates how the orders being booked and allocated by an Allocation Instruction or Allocation Report message are identified, i.e. by explicit definition in the NoOrders group or not.*)
type fix_allocnoorderstype =
    | FIX_AllocNoOrdersType_ExplicitListProvided 
    | FIX_AllocNoOrdersType_NotSpecified 
;;

(** Identifies reason for rejection*)
type fix_allocrejcode =
    | FIX_AllocRejCode_UnknownOrStaleExecID 
    | FIX_AllocRejCode_UnknownAccount 
    | FIX_AllocRejCode_OtherSeeText 
    | FIX_AllocRejCode_UnknownListID 
    | FIX_AllocRejCode_CalculationDifference 
    | FIX_AllocRejCode_IncorrectQuantity 
    | FIX_AllocRejCode_UnknownClOrdID 
    | FIX_AllocRejCode_CommissionDifference 
    | FIX_AllocRejCode_WarehouseRequestRejected 
    | FIX_AllocRejCode_UnknownExecutingBrokerMnemonic 
    | FIX_AllocRejCode_MismatchedData 
    | FIX_AllocRejCode_UnknownOrderID 
    | FIX_AllocRejCode_IncorrectAveragegPrice 
    | FIX_AllocRejCode_IncorrectAllocatedQuantity 
;;

(** Describes the specific type or purpose of an Allocation Report message*)
type fix_allocreporttype =
    | FIX_AllocReportType_SellsideCalculatedWithoutPreliminary 
    | FIX_AllocReportType_WarehouseRecap 
    | FIX_AllocReportType_SellsideCalculatedUsingPreliminary 
    | FIX_AllocReportType_RequestToIntermediary 
;;

(** Used to indicate whether settlement instructions are provided on an allocation instruction message, and if not, how they are to be derived*)
type fix_allocsettlinsttype =
    | FIX_AllocSettlInstType_DeriveFromParametersProvided 
    | FIX_AllocSettlInstType_FullDetailsProvided 
    | FIX_AllocSettlInstType_PhoneForInstructions 
    | FIX_AllocSettlInstType_UseDefaultInstructions 
    | FIX_AllocSettlInstType_SSIDBIDsProvided 
;;

(** Identifies status of allocation*)
type fix_allocstatus =
    | FIX_AllocStatus_Incomplete 
    | FIX_AllocStatus_Received 
    | FIX_AllocStatus_BlockLevelReject 
    | FIX_AllocStatus_AccountLevelReject 
    | FIX_AllocStatus_RejectedByIntermediary 
    | FIX_AllocStatus_Accepted 
;;

(** Identifies allocation transaction type
 *** SOME VALUES HAVE BEEN REPLACED - See "Replaced Features and Supported Approach" ****)
type fix_alloctranstype =
    | FIX_AllocTransType_Replace 
    | FIX_AllocTransType_Cancel 
    | FIX_AllocTransType_New 
;;

(** Describes the specific type or purpose of an Allocation message (i.e. "Buyside Calculated")*)
type fix_alloctype =
    | FIX_AllocType_Preliminary 
    | FIX_AllocType_ReadyToBook 
    | FIX_AllocType_Calculated 
    | FIX_AllocType_WarehouseInstruction 
    | FIX_AllocType_RequestToIntermediary 
;;

(** Action to take to resolve an application message queue (backlog).*)
type fix_applqueueaction =
    | FIX_ApplQueueAction_NoActionTaken 
    | FIX_ApplQueueAction_OverlayLast 
    | FIX_ApplQueueAction_QueueFlushed 
    | FIX_ApplQueueAction_EndSession 
;;

(** Resolution taken when ApplQueueDepth (813) exceeds ApplQueueMax (812) or system specified maximum queue size.*)
type fix_applqueueresolution =
    | FIX_ApplQueueResolution_NoActionTaken 
    | FIX_ApplQueueResolution_OverlayLast 
    | FIX_ApplQueueResolution_QueueFlushed 
    | FIX_ApplQueueResolution_EndSession 
;;

(** Method under which assignment was conducted*)
type fix_assignmentmethod =
    | FIX_AssignmentMethod_Random 
    | FIX_AssignmentMethod_ProRata 
;;

(** Average Pricing Indicator*)
type fix_avgpxindicator =
    | FIX_AvgPxIndicator_NoAveragePricing 
    | FIX_AvgPxIndicator_Trade 
    | FIX_AvgPxIndicator_LastTrade 
;;

(** Code to represent the basis price type*)
type fix_basispxtype =
    | FIX_BasisPxType_Others 
    | FIX_BasisPxType_VWAPThroughADay 
    | FIX_BasisPxType_VWAPThroughAnAfternoonSessionExcept 
    | FIX_BasisPxType_VWAPThroughAMorningSession 
    | FIX_BasisPxType_ClosingPrice 
    | FIX_BasisPxType_CurrentPrice 
    | FIX_BasisPxType_Strike 
    | FIX_BasisPxType_Open 
    | FIX_BasisPxType_ClosingPriceAtMorningSession 
    | FIX_BasisPxType_VWAPThroughADayExcept 
    | FIX_BasisPxType_VWAPThroughAMorningSessionExcept 
    | FIX_BasisPxType_VWAPThroughAnAfternoonSession 
    | FIX_BasisPxType_SQ 
;;

(** Code to identify the type of BidDescriptor (400)*)
type fix_biddescriptortype =
    | FIX_BidDescriptorType_Sector 
    | FIX_BidDescriptorType_Index 
    | FIX_BidDescriptorType_Country 
;;

(** Identifies the Bid Request message type*)
type fix_bidrequesttranstype =
    | FIX_BidRequestTransType_Cancel 
    | FIX_BidRequestTransType_New 
;;

(** Code to represent the type of trade*)
type fix_bidtradetype =
    | FIX_BidTradeType_Agency 
    | FIX_BidTradeType_RiskTrade 
    | FIX_BidTradeType_VWAPGuarantee 
    | FIX_BidTradeType_GuaranteedClose 
;;

(** Code to identify the type of Bid Request*)
type fix_bidtype =
    | FIX_BidType_Disclosed 
    | FIX_BidType_NoBiddingProcess 
    | FIX_BidType_NonDisclosed 
;;

(** Method for booking out this order. Used when notifying a broker that an order to be settled by that broker is to be booked out as an OTC derivative (e.g. CFD or similar).*)
type fix_bookingtype =
    | FIX_BookingType_CFD 
    | FIX_BookingType_RegularBooking 
    | FIX_BookingType_TotalReturnSwap 
;;

(** Indicates what constitutes a bookable unit.*)
type fix_bookingunit =
    | FIX_BookingUnit_AggregatePartialExecutionsOnThisOrder 
    | FIX_BookingUnit_AggregateExecutionsForThisSymbol 
    | FIX_BookingUnit_EachPartialExecutionIsABookableUnit 
;;

(** The program under which a commercial paper is issued*)
type fix_cpprogram =
    | FIX_CPProgram_Other 
    | FIX_CPProgram_Program3a3 
    | FIX_CPProgram_Program42 
;;

(** For CIV – A one character code identifying whether Cancellation rights/Cooling off period applies*)
type fix_cancellationrights =
    | FIX_CancellationRights_NoWaiverAgreement 
    | FIX_CancellationRights_NoExecutionOnly 
    | FIX_CancellationRights_Yes 
    | FIX_CancellationRights_NoInstitutional 
;;

(** Identifies whether an order is a margin order or a non-margin order. This is primarily used when sending orders to Japanese exchanges to indicate sell margin or buy to cover. The same tag could be assigned also by buy-side to indicate the intent to sell or buy margin and the sell-side to accept or reject (base on some validation criteria) the margin request.*)
type fix_cashmargin =
    | FIX_CashMargin_MarginOpen 
    | FIX_CashMargin_Cash 
    | FIX_CashMargin_MarginClose 
;;

(** Indicates type of fee being assessed of the customer for trade executions at an exchange. Applicable for futures markets only at this time.
 (Values source CBOT, CME, NYBOT, and NYMEX):*)
type fix_clearingfeeindicator =
    | FIX_ClearingFeeIndicator_CBOEMember 
    | FIX_ClearingFeeIndicator_ThirdYearDelegate 
    | FIX_ClearingFeeIndicator_SixthYearDelegate 
    | FIX_ClearingFeeIndicator_FourthYearDelegate 
    | FIX_ClearingFeeIndicator_FirstYearDelegate 
    | FIX_ClearingFeeIndicator_SecondYearDelegate 
    | FIX_ClearingFeeIndicator_GIM 
    | FIX_ClearingFeeIndicator_FullAndAssociateMember 
    | FIX_ClearingFeeIndicator_Firms106HAnd106J 
    | FIX_ClearingFeeIndicator_Lessee106FEmployees 
    | FIX_ClearingFeeIndicator_EquityMemberAndClearingMember 
    | FIX_ClearingFeeIndicator_NonMemberAndCustomer 
    | FIX_ClearingFeeIndicator_AllOtherOwnershipTypes 
    | FIX_ClearingFeeIndicator_FifthYearDelegate 
;;

(** Eligibility of this trade for clearing and central counterparty processing*)
type fix_clearinginstruction =
    | FIX_ClearingInstruction_QualifiedServiceRepresentativeQSR 
    | FIX_ClearingInstruction_SpecialTrade 
    | FIX_ClearingInstruction_SelfClearing 
    | FIX_ClearingInstruction_BilateralNettingOnly 
    | FIX_ClearingInstruction_AutomaticPostingMode 
    | FIX_ClearingInstruction_AutomaticGiveUpMode 
    | FIX_ClearingInstruction_ClearAgainstCentralCounterparty 
    | FIX_ClearingInstruction_ProcessNormally 
    | FIX_ClearingInstruction_ExClearing 
    | FIX_ClearingInstruction_ManualMode 
    | FIX_ClearingInstruction_ExcludeFromCentralCounterparty 
    | FIX_ClearingInstruction_CustomerTrade 
    | FIX_ClearingInstruction_ExcludeFromAllNetting 
    | FIX_ClearingInstruction_MultilateralNetting 
;;

(** Action proposed for an Underlying Instrument instance*)
type fix_collaction =
    | FIX_CollAction_Add 
    | FIX_CollAction_Retain 
    | FIX_CollAction_Remove 
;;

(** Reason for Collateral Assignment*)
type fix_collasgnreason =
    | FIX_CollAsgnReason_Scheduled 
    | FIX_CollAsgnReason_AdverseTaxEvent 
    | FIX_CollAsgnReason_MarginExcess 
    | FIX_CollAsgnReason_ForwardCollateralDemand 
    | FIX_CollAsgnReason_MarginDeficiency 
    | FIX_CollAsgnReason_Initial 
    | FIX_CollAsgnReason_TimeWarning 
    | FIX_CollAsgnReason_EventOfDefault 
;;

(** Collateral Assignment Reject Reason*)
type fix_collasgnrejectreason =
    | FIX_CollAsgnRejectReason_Other 
    | FIX_CollAsgnRejectReason_InvalidTypeOfCollateral 
    | FIX_CollAsgnRejectReason_UnauthorizedTransaction 
    | FIX_CollAsgnRejectReason_UnknownDeal 
    | FIX_CollAsgnRejectReason_UnknownOrInvalidInstrument 
    | FIX_CollAsgnRejectReason_ExcessiveSubstitution 
    | FIX_CollAsgnRejectReason_InsufficientCollateral 
;;

(** Collateral Assignment Response Type*)
type fix_collasgnresptype =
    | FIX_CollAsgnRespType_Declined 
    | FIX_CollAsgnRespType_Received 
    | FIX_CollAsgnRespType_Rejected 
    | FIX_CollAsgnRespType_Accepted 
;;

(** Collateral Assignment Transaction Type*)
type fix_collasgntranstype =
    | FIX_CollAsgnTransType_Replace 
    | FIX_CollAsgnTransType_Cancel 
    | FIX_CollAsgnTransType_Reverse 
    | FIX_CollAsgnTransType_New 
    | FIX_CollAsgnTransType_Release 
;;

(** Collateral inquiry qualifiers:*)
type fix_collinquiryqualifier =
    | FIX_CollInquiryQualifier_PartiallyAssigned 
    | FIX_CollInquiryQualifier_FullyAssigned 
    | FIX_CollInquiryQualifier_NotAssigned 
    | FIX_CollInquiryQualifier_CollateralInstrument 
    | FIX_CollInquiryQualifier_TradeDate 
    | FIX_CollInquiryQualifier_GCInstrument 
    | FIX_CollInquiryQualifier_SubstitutionEligible 
    | FIX_CollInquiryQualifier_OutstandingTrades 
;;

(** Result returned in response to Collateral Inquiry
 4000+ Reserved and available for bi-laterally agreed upon user-defined values*)
type fix_collinquiryresult =
    | FIX_CollInquiryResult_Other 
    | FIX_CollInquiryResult_InvalidParties 
    | FIX_CollInquiryResult_InvalidOrUnknownInstrument 
    | FIX_CollInquiryResult_InvalidTransportTypeRequested 
    | FIX_CollInquiryResult_NoCollateralFoundForTheOrderSpecified 
    | FIX_CollInquiryResult_InvalidDestinationRequested 
    | FIX_CollInquiryResult_CollateralInquiryTypeNotSupported 
    | FIX_CollInquiryResult_InvalidOrUnknownCollateralType 
    | FIX_CollInquiryResult_NoCollateralFoundForTheTradeSpecified 
    | FIX_CollInquiryResult_UnauthorizedForCollateralInquiry 
    | FIX_CollInquiryResult_Successful 
;;

(** Status of Collateral Inquiry*)
type fix_collinquirystatus =
    | FIX_CollInquiryStatus_AcceptedWithWarnings 
    | FIX_CollInquiryStatus_CompletedWithWarnings 
    | FIX_CollInquiryStatus_Rejected 
    | FIX_CollInquiryStatus_Completed 
    | FIX_CollInquiryStatus_Accepted 
;;

(** Collateral Status*)
type fix_collstatus =
    | FIX_CollStatus_AssignmentProposed 
    | FIX_CollStatus_PartiallyAssigned 
    | FIX_CollStatus_Assigned 
    | FIX_CollStatus_Challenged 
    | FIX_CollStatus_Unassigned 
;;

(** Commission type*)
type fix_commtype =
    | FIX_CommType_PercentageWaivedEnhancedUnits 
    | FIX_CommType_PointsPerBondOrContract 
    | FIX_CommType_Percent 
    | FIX_CommType_PerUnit 
    | FIX_CommType_Absolute 
    | FIX_CommType_PercentageWaivedCashDiscount 
;;

(** Identifies the reason for rejecting a Confirmation*)
type fix_confirmrejreason =
    | FIX_ConfirmRejReason_MissingSettlementInstructions 
    | FIX_ConfirmRejReason_Other 
    | FIX_ConfirmRejReason_MismatchedAccount 
;;

(** Identifies the status of the Confirmation.*)
type fix_confirmstatus =
    | FIX_ConfirmStatus_MissingSettlementInstructions 
    | FIX_ConfirmStatus_RequestRejected 
    | FIX_ConfirmStatus_Received 
    | FIX_ConfirmStatus_MismatchedAccount 
    | FIX_ConfirmStatus_Confirmed 
;;

(** Identifies the Confirmation transaction type*)
type fix_confirmtranstype =
    | FIX_ConfirmTransType_Replace 
    | FIX_ConfirmTransType_Cancel 
    | FIX_ConfirmTransType_New 
;;

(** Identifies the type of Confirmation message being sent*)
type fix_confirmtype =
    | FIX_ConfirmType_ConfirmationRequestRejected 
    | FIX_ConfirmType_Status 
    | FIX_ConfirmType_Confirmation 
;;

(** Type of ContAmtValue (520).
 NOTE That Commission Amount / % in Contract Amounts is the commission actually charged, rather than the commission instructions given in Fields 2/3.*)
type fix_contamttype =
    | FIX_ContAmtType_CommissionAmount 
    | FIX_ContAmtType_FundBasedRenewalCommissionOnOrder 
    | FIX_ContAmtType_FundBasedRenewalCommissionOnFund 
    | FIX_ContAmtType_InitialChargePercent 
    | FIX_ContAmtType_ExitChargeAmount 
    | FIX_ContAmtType_DilutionLevyPercent 
    | FIX_ContAmtType_ExitChargePercent 
    | FIX_ContAmtType_DiscountAmount 
    | FIX_ContAmtType_NetSettlementAmount 
    | FIX_ContAmtType_InitialChargeAmount 
    | FIX_ContAmtType_ProjectedFundValue 
    | FIX_ContAmtType_DiscountPercent 
    | FIX_ContAmtType_DilutionLevyAmount 
    | FIX_ContAmtType_CommissionPercent 
    | FIX_ContAmtType_FundBasedRenewalCommissionPercent 
;;

(** Identifies the type of Corporate Action*)
type fix_corporateaction =
    | FIX_CorporateAction_ExDistribution 
    | FIX_CorporateAction_ExDividend 
    | FIX_CorporateAction_ExInterest 
    | FIX_CorporateAction_ExRights 
    | FIX_CorporateAction_New 
;;

(** Used for derivative products, such as options*)
type fix_coveredoruncovered =
    | FIX_CoveredOrUncovered_Uncovered 
    | FIX_CoveredOrUncovered_Covered 
;;

(** Indicates if one side or the other of a cross order should be prioritized.
 The definition of prioritization is left to the market. In some markets prioritization means which side of the cross order is applied to the market first. In other markets – prioritization may mean that the prioritized side is fully executed (sometimes referred to as the side being protected).*)
type fix_crossprioritization =
    | FIX_CrossPrioritization_BuySideIsPrioritized 
    | FIX_CrossPrioritization_SellSideIsPrioritized 
    | FIX_CrossPrioritization_FIXNone 
;;

(** Type of cross being submitted to a market*)
type fix_crosstype =
    | FIX_CrossType_CrossIOC 
    | FIX_CrossType_CrossOneSide 
    | FIX_CrossType_CrossSamePrice 
    | FIX_CrossType_CrossAON 
;;

(** Capacity of customer placing the order
 Primarily used by futures exchanges to indicate the CTICode (customer type indicator) as required by the US CFTC (Commodity Futures Trading Commission).*)
type fix_custordercapacity =
    | FIX_CustOrderCapacity_MemberTradingForTheirOwnAccount 
    | FIX_CustOrderCapacity_AllOther 
    | FIX_CustOrderCapacity_ClearingFirmTradingForItsProprietaryAccount 
    | FIX_CustOrderCapacity_MemberTradingForAnotherMember 
;;

(** Code to identify reason for cancel rejection*)
type fix_cxlrejreason =
    | FIX_CxlRejReason_Other 
    | FIX_CxlRejReason_OrderAlreadyInPendingStatus 
    | FIX_CxlRejReason_TooLateToCancel 
    | FIX_CxlRejReason_UnknownOrder 
    | FIX_CxlRejReason_UnableToProcessOrderMassCancelRequest 
    | FIX_CxlRejReason_OrigOrdModTime 
    | FIX_CxlRejReason_DuplicateClOrdID 
    | FIX_CxlRejReason_BrokerCredit 
;;

(** Identifies the type of request that a Cancel Reject is in response to*)
type fix_cxlrejresponseto =
    | FIX_CxlRejResponseTo_OrderCancelRequest 
    | FIX_CxlRejResponseTo_OrderCancel 
;;

(** Reason for execution rejection*)
type fix_dkreason =
    | FIX_DKReason_WrongSide 
    | FIX_DKReason_QuantityExceedsOrder 
    | FIX_DKReason_Other 
    | FIX_DKReason_CalculationDifference 
    | FIX_DKReason_NoMatchingOrder 
    | FIX_DKReason_PriceExceedsLimit 
    | FIX_DKReason_UnknownSymbol 
;;

(** Indicates whether or not automatic booking can occur.*)
type fix_daybookinginst =
    | FIX_DayBookingInst_Auto 
    | FIX_DayBookingInst_SpeakWithOrderInitiatorBeforeBooking 
    | FIX_DayBookingInst_Accumulate 
;;

(** Reason for deletion*)
type fix_deletereason =
    | FIX_DeleteReason_Error 
    | FIX_DeleteReason_Cancellation 
;;

(** Identifies the form of delivery*)
type fix_deliveryform =
    | FIX_DeliveryForm_BookEntry 
    | FIX_DeliveryForm_Bearer 
;;

(** Identifies type of settlement*)
type fix_deliverytype =
    | FIX_DeliveryType_TriParty 
    | FIX_DeliveryType_VersusPayment 
    | FIX_DeliveryType_HoldInCustody 
    | FIX_DeliveryType_Free 
;;

(** Code to identify the price a DiscretionOffsetValue (389) is related to and should be mathematically added to*)
type fix_discretioninst =
    | FIX_DiscretionInst_RelatedToPrimaryPrice 
    | FIX_DiscretionInst_RelatedToMidpointPrice 
    | FIX_DiscretionInst_RelatedToLastTradePrice 
    | FIX_DiscretionInst_RelatedToDisplayedPrice 
    | FIX_DiscretionInst_RelatedToVWAP 
    | FIX_DiscretionInst_RelatedToMarketPrice 
    | FIX_DiscretionInst_RelatedToLocalPrimaryPrice 
;;

(** Type of Discretion Limit*)
type fix_discretionlimittype =
    | FIX_DiscretionLimitType_Strict 
    | FIX_DiscretionLimitType_OrBetter 
    | FIX_DiscretionLimitType_OrWorse 
;;

(** Describes whether discretionay price is static or floats*)
type fix_discretionmovetype =
    | FIX_DiscretionMoveType_Fixed 
    | FIX_DiscretionMoveType_Floating 
;;

(** Type of Discretion Offset value*)
type fix_discretionoffsettype =
    | FIX_DiscretionOffsetType_BasisPoints 
    | FIX_DiscretionOffsetType_Price 
    | FIX_DiscretionOffsetType_Ticks 
    | FIX_DiscretionOffsetType_PriceTier 
;;

(** If the calculated discretionary price is not a valid tick price, specifies whether to round the price to be more or less aggressive*)
type fix_discretionrounddirection =
    | FIX_DiscretionRoundDirection_MoreAggressive 
    | FIX_DiscretionRoundDirection_MorePassive 
;;

(** The scope of the discretion*)
type fix_discretionscope =
    | FIX_DiscretionScope_National 
    | FIX_DiscretionScope_Local 
    | FIX_DiscretionScope_NationalExcludingLocal 
    | FIX_DiscretionScope_Global 
;;

(** A code identifying the payment method for a (fractional) distribution.
 13 through 998 are reserved for future use
 Values above 000 are available for use by private agreement among counterparties*)
type fix_distribpaymentmethod =
    | FIX_DistribPaymentMethod_CREST 
    | FIX_DistribPaymentMethod_NSCC 
    | FIX_DistribPaymentMethod_HighValueClearingSystemHVACS 
    | FIX_DistribPaymentMethod_DirectCredit 
    | FIX_DistribPaymentMethod_ReinvestInFund 
    | FIX_DistribPaymentMethod_ACHCredit 
    | FIX_DistribPaymentMethod_Clearstream 
    | FIX_DistribPaymentMethod_BPAY 
    | FIX_DistribPaymentMethod_Cheque 
    | FIX_DistribPaymentMethod_Euroclear 
    | FIX_DistribPaymentMethod_FedWire 
    | FIX_DistribPaymentMethod_TelegraphicTransfer 
;;

(** Used to indicate whether a delivery instruction is used for securities or cash settlement*)
type fix_dlvyinsttype =
    | FIX_DlvyInstType_Cash 
    | FIX_DlvyInstType_Securities 
;;

(** Indicates whether or not the halt was due to the Related Security being halted.*)
type fix_duetorelated =
    | FIX_DueToRelated_RelatedToSecurityHalt 
    | FIX_DueToRelated_NotRelatedToSecurityHalt 
;;

(** Email message type*)
type fix_emailtype =
    | FIX_EmailType_Reply 
    | FIX_EmailType_AdminReply 
    | FIX_EmailType_New 
;;

(** Code to represent the type of event*)
type fix_eventtype =
    | FIX_EventType_Other 
    | FIX_EventType_Call 
    | FIX_EventType_Tender 
    | FIX_EventType_Put 
    | FIX_EventType_SinkingFundCall 
;;

(** Indicates whether or not to exchange for phsyical.*)
type fix_exchangeforphysical =
    | FIX_ExchangeForPhysical_True 
    | FIX_ExchangeForPhysical_False 
;;

(** Instructions for order handling on exchange trading floor. If more than one instruction is applicable to an order, this field can contain multiple instructions separated by space.*)
type fix_execinst =
    | FIX_ExecInst_ParticipateDoNotInitiate 
    | FIX_ExecInst_AllOrNone 
    | FIX_ExecInst_CallFirst 
    | FIX_ExecInst_PercentOfVolume 
    | FIX_ExecInst_InstitutionsOnly 
    | FIX_ExecInst_NoCross 
    | FIX_ExecInst_OverTheDay 
    | FIX_ExecInst_DoNotIncrease 
    | FIX_ExecInst_OpeningPeg 
    | FIX_ExecInst_TryToStop 
    | FIX_ExecInst_Netting 
    | FIX_ExecInst_StayOnBidSide 
    | FIX_ExecInst_Held 
    | FIX_ExecInst_OKToCross 
    | FIX_ExecInst_CustomerDisplayInstruction 
    | FIX_ExecInst_GoAlong 
    | FIX_ExecInst_DoNotReduce 
    | FIX_ExecInst_StayOnOfferSide 
    | FIX_ExecInst_PegToLimitPrice 
    | FIX_ExecInst_TryToScale 
    | FIX_ExecInst_ReinstateOnSystemFailure 
    | FIX_ExecInst_CancelIfNotBest 
    | FIX_ExecInst_MidPricePeg 
    | FIX_ExecInst_WorkToTargetStrategy 
    | FIX_ExecInst_PegToVWAP 
    | FIX_ExecInst_TradeAlong 
    | FIX_ExecInst_StrictLimit 
    | FIX_ExecInst_Suspend 
    | FIX_ExecInst_LastPeg 
    | FIX_ExecInst_NonNegotiable 
    | FIX_ExecInst_NotHeld 
    | FIX_ExecInst_CancelOnTradingHalt 
    | FIX_ExecInst_CancelOnSystemFailure 
    | FIX_ExecInst_IgnorePriceValidityChecks 
    | FIX_ExecInst_Work 
    | FIX_ExecInst_ReinstateOnTradingHalt 
    | FIX_ExecInst_PrimaryPeg 
    | FIX_ExecInst_TrailingStopPeg 
    | FIX_ExecInst_MarketPeg 
    | FIX_ExecInst_StrictScale 
;;

(** For CIV - Identifies how the execution price LastPx (3) was calculated from the fund unit/share price(s) calculated at the fund valuation point*)
type fix_execpricetype =
    | FIX_ExecPriceType_CreationPricePlusAdjustmentAmount 
    | FIX_ExecPriceType_OfferPriceMinusAdjustmentPercent 
    | FIX_ExecPriceType_BidPrice 
    | FIX_ExecPriceType_OfferPrice 
    | FIX_ExecPriceType_OfferPriceMinusAdjustmentAmount 
    | FIX_ExecPriceType_SinglePrice 
    | FIX_ExecPriceType_CreationPrice 
    | FIX_ExecPriceType_CreationPricePlusAdjustmentPercent 
;;

(** Code to identify reason for an ExecutionRpt message sent with ExecType=Restated or used when communicating an unsolicited cancel.*)
type fix_execrestatementreason =
    | FIX_ExecRestatementReason_Other 
    | FIX_ExecRestatementReason_RepricingOfOrder 
    | FIX_ExecRestatementReason_GTCorporateAction 
    | FIX_ExecRestatementReason_VerbalChange 
    | FIX_ExecRestatementReason_WarehouseRecap 
    | FIX_ExecRestatementReason_CancelOnTradingHalt 
    | FIX_ExecRestatementReason_CancelOnSystemFailure 
    | FIX_ExecRestatementReason_GTRenewal 
    | FIX_ExecRestatementReason_Market 
    | FIX_ExecRestatementReason_Canceled 
    | FIX_ExecRestatementReason_BrokerOption 
    | FIX_ExecRestatementReason_PartialDeclineOfOrderQty 
;;

(** Describes the specific ExecutionRpt (i.e. Pending Cancel) while OrdStatus (39) will always identify the current order status (i.e. Partially Filled)
 *** SOME VALUES HAVE BEEN REPLACED - See "Replaced Features and Supported Approach" ****)
type fix_exectype =
    | FIX_ExecType_PendingCancel 
    | FIX_ExecType_Stopped 
    | FIX_ExecType_PendingNew 
    | FIX_ExecType_Restated 
    | FIX_ExecType_Rejected 
    | FIX_ExecType_Calculated 
    | FIX_ExecType_TradeCorrect 
    | FIX_ExecType_TradeCancel 
    | FIX_ExecType_Expired 
    | FIX_ExecType_OrderStatus 
    | FIX_ExecType_Trade 
    | FIX_ExecType_Canceled 
    | FIX_ExecType_Replaced 
    | FIX_ExecType_PendingReplace 
    | FIX_ExecType_DoneForDay 
    | FIX_ExecType_Suspended 
    | FIX_ExecType_New 
;;

(** Exercise Method used to in performing assignment*)
type fix_exercisemethod =
    | FIX_ExerciseMethod_Manual 
    | FIX_ExerciseMethod_Automatic 
;;

(** Part of trading cycle when an instrument expires. Field is applicable for derivatives.*)
type fix_expirationcycle =
    | FIX_ExpirationCycle_ExpireOnTradingSessionClose 
    | FIX_ExpirationCycle_ExpireOnTradingSessionOpen 
;;

(** Identifies a firm’s financial status*)
type fix_financialstatus =
    | FIX_FinancialStatus_PendingDelisting 
    | FIX_FinancialStatus_Bankrupt 
;;

(** Indicates request for forex accommodation trade to be executed along with security transaction.*)
type fix_forexreq =
    | FIX_ForexReq_DoNotExecuteForexAfterSecurityTrade 
    | FIX_ForexReq_ExecuteForexAfterSecurityTrade 
;;

(** A one character code identifying whether the Fund based renewal commission is to be waived.*)
type fix_fundrenewwaiv =
    | FIX_FundRenewWaiv_No 
    | FIX_FundRenewWaiv_Yes 
;;

(** Code to identify whether to book out executions on a part-filled GT order on the day of execution or to accumulate*)
type fix_gtbookinginst =
    | FIX_GTBookingInst_AccumulateUntilVerballyNotifiedOtherwise 
    | FIX_GTBookingInst_AccumulateUntilFilledOrExpired 
    | FIX_GTBookingInst_BookOutAllTradesOnDayOfExecution 
;;

(** Denotes the reason for the Opening Delay or Trading Halt*)
type fix_haltreason =
    | FIX_HaltReason_OrderImbalance 
    | FIX_HaltReason_AdditionalInformation 
    | FIX_HaltReason_NewsPending 
    | FIX_HaltReason_OrderInflux 
    | FIX_HaltReason_EquipmentChangeover 
    | FIX_HaltReason_NewsDissemination 
;;

(** Instructions for order handling on Broker trading floor*)
type fix_handlinst =
    | FIX_HandlInst_ManualOrder 
    | FIX_HandlInst_AutomatedExecutionInterventionOK 
    | FIX_HandlInst_AutomatedExecutionNoIntervention 
;;

(** Indicates that IOI is the result of an existing agency order or a facilitation position resulting from an agency order, not from principal trading or order solicitation activity.*)
type fix_ioinaturalflag =
    | FIX_IOINaturalFlag_Natural 
    | FIX_IOINaturalFlag_NotNatural 
;;

(** Relative quality of indication*)
type fix_ioiqltyind =
    | FIX_IOIQltyInd_Low 
    | FIX_IOIQltyInd_High 
    | FIX_IOIQltyInd_Medium 
;;

(** Quantity (e.g. number of shares) in numeric form or relative size.*)
type fix_ioiqty =
    | FIX_IOIQty_Small 
    | FIX_IOIQty_Large 
    | FIX_IOIQty_Medium 
;;

(** Code to qualify IOI use*)
type fix_ioiqualifier =
    | FIX_IOIQualifier_AllOrNone 
    | FIX_IOIQualifier_TakingAPosition 
    | FIX_IOIQualifier_Indication 
    | FIX_IOIQualifier_PreOpen 
    | FIX_IOIQualifier_VWAP 
    | FIX_IOIQualifier_AtTheOpen 
    | FIX_IOIQualifier_Versus 
    | FIX_IOIQualifier_AtTheMidpoint 
    | FIX_IOIQualifier_ReadyToTrade 
    | FIX_IOIQualifier_PortfolioShown 
    | FIX_IOIQualifier_ThroughTheDay 
    | FIX_IOIQualifier_MoreBehind 
    | FIX_IOIQualifier_MarketOnClose 
    | FIX_IOIQualifier_AtTheClose 
    | FIX_IOIQualifier_InTouchWith 
    | FIX_IOIQualifier_AtTheMarket 
    | FIX_IOIQualifier_Limit 
    | FIX_IOIQualifier_CrossingOpportunity 
;;

(** Identifies IOI message transaction type*)
type fix_ioitranstype =
    | FIX_IOITransType_Cancel 
    | FIX_IOITransType_Replace 
    | FIX_IOITransType_New 
;;

(** Indicates whether or not the halt was due to Common Stock trading being halted.*)
type fix_inviewofcommon =
    | FIX_InViewOfCommon_HaltWasDueToCommonStockBeingHalted 
    | FIX_InViewOfCommon_HaltWasNotRelatedToAHaltOfTheCommonStock 
;;

(** Code to represent whether value is net (inclusive of tax) or gross*)
type fix_inctaxind =
    | FIX_IncTaxInd_Net 
    | FIX_IncTaxInd_Gross 
;;

(** Code to represent the type of instrument attribute*)
type fix_instrattribtype =
    | FIX_InstrAttribType_Callable 
    | FIX_InstrAttribType_SubjectToAlternativeMinimumTax 
    | FIX_InstrAttribType_CouponPeriod 
    | FIX_InstrAttribType_EscrowedToRedemptionDate 
    | FIX_InstrAttribType_InterestBearing 
    | FIX_InstrAttribType_OriginalIssueDiscount 
    | FIX_InstrAttribType_VariableRate 
    | FIX_InstrAttribType_InDefault 
    | FIX_InstrAttribType_Text 
    | FIX_InstrAttribType_PreRefunded 
    | FIX_InstrAttribType_LessFeeForPut 
    | FIX_InstrAttribType_When 
    | FIX_InstrAttribType_NoPeriodicPayments 
    | FIX_InstrAttribType_Unrated 
    | FIX_InstrAttribType_CallableBelowMaturityValue 
    | FIX_InstrAttribType_OriginalIssueDiscountPrice 
    | FIX_InstrAttribType_Flat 
    | FIX_InstrAttribType_CallableWithoutNotice 
    | FIX_InstrAttribType_SteppedCoupon 
    | FIX_InstrAttribType_Indexed 
    | FIX_InstrAttribType_ZeroCoupon 
    | FIX_InstrAttribType_EscrowedToMaturity 
    | FIX_InstrAttribType_Taxable 
;;

(** Broker capacity in order execution*)
type fix_lastcapacity =
    | FIX_LastCapacity_Agent 
    | FIX_LastCapacity_CrossAsAgent 
    | FIX_LastCapacity_Principal 
    | FIX_LastCapacity_CrossAsPrincipal 
;;

(** Indicates whether this message is the last in a sequence of messages for those messages that support fragmentation, such as Allocation Instruction, Mass Quote, Security List, Derivative Security List*)
type fix_lastfragment =
    | FIX_LastFragment_LastMessage 
    | FIX_LastFragment_NotLastMessage 
;;

(** Indicator to identify whether this fill was a result of a liquidity provider providing or liquidity taker taking the liquidity. Applicable only for OrdStatus of Partial or Filled.*)
type fix_lastliquidityind =
    | FIX_LastLiquidityInd_LiquidityRoutedOut 
    | FIX_LastLiquidityInd_AddedLiquidity 
    | FIX_LastLiquidityInd_RemovedLiquidity 
;;

(** For Fixed Income, used instead of LegQty (687) or LegOrderQty (685) to requests the respondent to calculate the quantity based on the quantity on the opposite side of the swap.*)
type fix_legswaptype =
    | FIX_LegSwapType_ModifiedDuration 
    | FIX_LegSwapType_Proceeds 
    | FIX_LegSwapType_ParForPar 
    | FIX_LegSwapType_Risk 
;;

(** Indicates that this message is to serve as the final and legal confirmation.*)
type fix_legalconfirm =
    | FIX_LegalConfirm_DoesNotConsituteALegalConfirm 
    | FIX_LegalConfirm_LegalConfirm 
;;

(** Code to identify the type of liquidity indicator*)
type fix_liquidityindtype =
    | FIX_LiquidityIndType_Other 
    | FIX_LiquidityIndType_NormalMarketSize 
    | FIX_LiquidityIndType_TwentyDayMovingAverage 
    | FIX_LiquidityIndType_FiveDayMovingAverage 
;;

(** Identifies the type of ListExecInst (69)*)
type fix_listexecinsttype =
    | FIX_ListExecInstType_SellDriven 
    | FIX_ListExecInstType_Immediate 
    | FIX_ListExecInstType_BuyDrivenCashTopUp 
    | FIX_ListExecInstType_WaitForInstruction 
    | FIX_ListExecInstType_BuyDrivenCashWithdraw 
;;

(** Code to represent the status of a list order*)
type fix_listorderstatus =
    | FIX_ListOrderStatus_AllDone 
    | FIX_ListOrderStatus_Reject 
    | FIX_ListOrderStatus_Cancelling 
    | FIX_ListOrderStatus_InBiddingProcess 
    | FIX_ListOrderStatus_Executing 
    | FIX_ListOrderStatus_Alert 
    | FIX_ListOrderStatus_ReceivedForExecution 
;;

(** Code to represent the status type*)
type fix_liststatustype =
    | FIX_ListStatusType_AllDone 
    | FIX_ListStatusType_Response 
    | FIX_ListStatusType_ExecStarted 
    | FIX_ListStatusType_Timed 
    | FIX_ListStatusType_Ack 
    | FIX_ListStatusType_Alert 
;;

(** Indicates whether the broker is to locate the stock in conjunction with a short sell order.*)
type fix_locatereqd =
    | FIX_LocateReqd_No 
    | FIX_LocateReqd_Yes 
;;

(** Type Market Data entry*)
type fix_mdentrytype =
    | FIX_MDEntryType_OpenInterest 
    | FIX_MDEntryType_ClosingPrice 
    | FIX_MDEntryType_IndexValue 
    | FIX_MDEntryType_Offer 
    | FIX_MDEntryType_SettlementPrice 
    | FIX_MDEntryType_TradingSessionVWAPPrice 
    | FIX_MDEntryType_Trade 
    | FIX_MDEntryType_TradingSessionHighPrice 
    | FIX_MDEntryType_OpeningPrice 
    | FIX_MDEntryType_TradeVolume 
    | FIX_MDEntryType_Imbalance 
    | FIX_MDEntryType_Bid 
    | FIX_MDEntryType_TradingSessionLowPrice 
;;

(** Defines how a server handles distribution of a truncated book. Defaults to broker option.*)
type fix_mdimplicitdelete =
    | FIX_MDImplicitDelete_No 
    | FIX_MDImplicitDelete_Yes 
;;

(** Reason for the rejection of a Market Data request*)
type fix_mdreqrejreason =
    | FIX_MDReqRejReason_UnsupportedAggregatedBook 
    | FIX_MDReqRejReason_UnsupportedMDUpdateType 
    | FIX_MDReqRejReason_UnsupportedMDImplicitDelete 
    | FIX_MDReqRejReason_InsufficientPermissions 
    | FIX_MDReqRejReason_UnsupportedScope 
    | FIX_MDReqRejReason_UnsupportedTradingSessionID 
    | FIX_MDReqRejReason_UnsupportedSubscriptionRequestType 
    | FIX_MDReqRejReason_UnsupportedMDEntryType 
    | FIX_MDReqRejReason_InsufficientBandwidth 
    | FIX_MDReqRejReason_DuplicateMDReqID 
    | FIX_MDReqRejReason_UnsupportedMarketDepth 
    | FIX_MDReqRejReason_UnsupportedOpenCloseSettleFlag 
    | FIX_MDReqRejReason_UnknownSymbol 
;;

(** Type of Market Data update action*)
type fix_mdupdateaction =
    | FIX_MDUpdateAction_Delete 
    | FIX_MDUpdateAction_Change 
    | FIX_MDUpdateAction_New 
;;

(** Specifies the type of Market Data update*)
type fix_mdupdatetype =
    | FIX_MDUpdateType_FullRefresh 
    | FIX_MDUpdateType_IncrementalRefresh 
;;

(** Reason Order Mass Cancel Request was rejected*)
type fix_masscancelrejectreason =
    | FIX_MassCancelRejectReason_Other 
    | FIX_MassCancelRejectReason_MassCancelNotSupported 
    | FIX_MassCancelRejectReason_InvalidOrUnknownCFICode 
    | FIX_MassCancelRejectReason_InvalidOrUnknownSecurityType 
    | FIX_MassCancelRejectReason_InvalidOrUnknownProduct 
    | FIX_MassCancelRejectReason_InvalidOrUnkownUnderlyingSecurity 
    | FIX_MassCancelRejectReason_InvalidOrUnknownTradingSession 
    | FIX_MassCancelRejectReason_InvalidOrUnknownSecurity 
;;

(** Specifies scope of Order Mass Cancel Request*)
type fix_masscancelrequesttype =
    | FIX_MassCancelRequestType_CancelOrdersForASecurityType 
    | FIX_MassCancelRequestType_CancelOrdersForAProduct 
    | FIX_MassCancelRequestType_CancelOrdersForASecurity 
    | FIX_MassCancelRequestType_CancelOrdersForAnUnderlyingSecurity 
    | FIX_MassCancelRequestType_CancelAllOrders 
    | FIX_MassCancelRequestType_CancelOrdersForACFICode 
    | FIX_MassCancelRequestType_CancelOrdersForATradingSession 
;;

(** Specifies the action taken by counterparty order handling system as a result of the Order Mass Cancel Request*)
type fix_masscancelresponse =
    | FIX_MassCancelResponse_CancelOrdersForASecurityType 
    | FIX_MassCancelResponse_CancelOrdersForAProduct 
    | FIX_MassCancelResponse_CancelOrdersForASecurity 
    | FIX_MassCancelResponse_CancelOrdersForAnUnderlyingSecurity 
    | FIX_MassCancelResponse_CancelRequestRejected 
    | FIX_MassCancelResponse_CancelAllOrders 
    | FIX_MassCancelResponse_CancelOrdersForACFICode 
    | FIX_MassCancelResponse_CancelOrdersForATradingSession 
;;

(** Mass Status Request Type*)
type fix_massstatusreqtype =
    | FIX_MassStatusReqType_StatusForOrdersForASecurity 
    | FIX_MassStatusReqType_StatusForOrdersForATradingSession 
    | FIX_MassStatusReqType_StatusForOrdersForAPartyID 
    | FIX_MassStatusReqType_StatusForOrdersForAProduct 
    | FIX_MassStatusReqType_StatusForOrdersForAnUnderlyingSecurity 
    | FIX_MassStatusReqType_StatusForAllOrders 
    | FIX_MassStatusReqType_StatusForOrdersForASecurityType 
    | FIX_MassStatusReqType_StatusForOrdersForACFICode 
;;

(** The status of this trade with respect to matching or comparison*)
type fix_matchstatus =
    | FIX_MatchStatus_Compared 
    | FIX_MatchStatus_Uncompared 
    | FIX_MatchStatus_AdvisoryOrAlert 
;;

(** The point in the matching process at which this trade was matched*)
type fix_matchtype =
    | FIX_MatchType_ExactMatchPlus2Badges 
    | FIX_MatchType_ExactMatchPlus2BadgesExecTime 
    | FIX_MatchType_A4ExactMatchSummarizedQuantity 
    | FIX_MatchType_A2ExactMatchSummarizedQuantity 
    | FIX_MatchType_OCSLockedIn 
    | FIX_MatchType_ACTM6Match 
    | FIX_MatchType_ExactMatchPlusExecTime 
    | FIX_MatchType_ACTAcceptedTrade 
    | FIX_MatchType_ExactMatchMinusBadgesTimes 
    | FIX_MatchType_ExactMatchPlus4Badges 
    | FIX_MatchType_A1ExactMatchSummarizedQuantity 
    | FIX_MatchType_SummarizedMatchMinusBadgesTimes 
    | FIX_MatchType_ACTDefaultAfterM2 
    | FIX_MatchType_ExactMatchPlus4BadgesExecTime 
    | FIX_MatchType_A5ExactMatchSummarizedQuantity 
    | FIX_MatchType_A3ExactMatchSummarizedQuantity 
    | FIX_MatchType_ACTDefaultTrade 
    | FIX_MatchType_StampedAdvisoriesOrSpecialistAccepts 
;;

(** Type of message encoding (non-ASCII (non-English) characters) used in a message’s "Encoded" fields.*)
type fix_messageencoding =
    | FIX_MessageEncoding_ISO2022JP 
    | FIX_MessageEncoding_UTF8 
    | FIX_MessageEncoding_ShiftJIS 
    | FIX_MessageEncoding_EUCJP 
;;

(** Defines the unit for a miscellaneous fee.*)
type fix_miscfeebasis =
    | FIX_MiscFeeBasis_Percentage 
    | FIX_MiscFeeBasis_PerUnit 
    | FIX_MiscFeeBasis_Absolute 
;;

(** Indicates type of miscellaneous fee*)
type fix_miscfeetype =
    | FIX_MiscFeeType_Other 
    | FIX_MiscFeeType_Agent 
    | FIX_MiscFeeType_LocalCommission 
    | FIX_MiscFeeType_ExchangeFees 
    | FIX_MiscFeeType_Stamp 
    | FIX_MiscFeeType_Markup 
    | FIX_MiscFeeType_PerTransaction 
    | FIX_MiscFeeType_Regulatory 
    | FIX_MiscFeeType_Tax 
    | FIX_MiscFeeType_ConsumptionTax 
    | FIX_MiscFeeType_Conversion 
    | FIX_MiscFeeType_Levy 
;;

(** A one character code identifying Money laundering status*)
type fix_moneylaunderingstatus =
    | FIX_MoneyLaunderingStatus_ExemptBelowLimit 
    | FIX_MoneyLaunderingStatus_ExemptMoneyType 
    | FIX_MoneyLaunderingStatus_ExemptAuthorised 
    | FIX_MoneyLaunderingStatus_Passed 
    | FIX_MoneyLaunderingStatus_NotChecked 
;;

(** Specifies the direction of the messsage*)
type fix_msgdirection =
    | FIX_MsgDirection_Send 
    | FIX_MsgDirection_Receive 
;;

(** Used to indicate what an Execution Report represents (e.g. used with multi-leg securities, such as option strategies, spreads, etc.).*)
type fix_multilegreportingtype =
    | FIX_MultiLegReportingType_SingleSecurity 
    | FIX_MultiLegReportingType_IndividualLegOfAMultiLegSecurity 
    | FIX_MultiLegReportingType_MultiLegSecurity 
;;

(** Indicates the method of execution reporting requested by issuer of the order*)
type fix_multilegrpttypereq =
    | FIX_MultiLegRptTypeReq_ReportByInstrumentLegsOnly 
    | FIX_MultiLegRptTypeReq_ReportByMulitlegSecurityOnly 
    | FIX_MultiLegRptTypeReq_ReportByMultilegSecurityAndInstrumentLegs 
;;

(** Code to represent whether value is net (inclusive of tax) or gross*)
type fix_netgrossind =
    | FIX_NetGrossInd_Net 
    | FIX_NetGrossInd_Gross 
;;

(** Indicates the type and level of details required for a Network Status Request Message
 Boolean logic applies EG If you want to subscribe for changes to certain id’s then UserRequestType =0 (8+2), Snapshot for certain ID’s = 9 (8+)*)
type fix_networkrequesttype =
    | FIX_NetworkRequestType_Snapshot 
    | FIX_NetworkRequestType_StopSubscribing 
    | FIX_NetworkRequestType_Subscribe 
    | FIX_NetworkRequestType_LevelOfDetail 
;;

(** Indicates the type of Network Response Message*)
type fix_networkstatusresponsetype =
    | FIX_NetworkStatusResponseType_IncrementalUpdate 
    | FIX_NetworkStatusResponseType_Full 
;;

(** Number of Side repeating group instances.*)
type fix_nosides =
    | FIX_NoSides_OneSide 
    | FIX_NoSides_BothSides 
;;

(** Indicates whether or not details should be communicated to BrokerOfCredit (i.e. step-in broker).*)
type fix_notifybrokerofcredit =
    | FIX_NotifyBrokerOfCredit_DetailsShouldBeCommunicated 
    | FIX_NotifyBrokerOfCredit_DetailsShouldNotBeCommunicated 
;;

(** This trade is to be treated as an odd lot*)
type fix_oddlot =
    | FIX_OddLot_TreatAsRoundLot 
    | FIX_OddLot_TreatAsOddLot 
;;

(** Flag that identifies a market data entry
 (Prior to FIX 4.3 this field was of type char)*)
type fix_openclosesettlflag =
    | FIX_OpenCloseSettlFlag_DeliverySettlementEntry 
    | FIX_OpenCloseSettlFlag_EntryFromPreviousBusinessDay 
    | FIX_OpenCloseSettlFlag_DailyOpen 
    | FIX_OpenCloseSettlFlag_TheoreticalPriceValue 
    | FIX_OpenCloseSettlFlag_ExpectedEntry 
    | FIX_OpenCloseSettlFlag_SessionOpen 
;;

(** Code to identify reason for order rejection.*)
type fix_ordrejreason =
    | FIX_OrdRejReason_DuplicateOrder 
    | FIX_OrdRejReason_Other 
    | FIX_OrdRejReason_UnknownOrder 
    | FIX_OrdRejReason_TooLateToEnter 
    | FIX_OrdRejReason_OrderExceedsLimit 
    | FIX_OrdRejReason_UnknownAccount 
    | FIX_OrdRejReason_BrokerCredit 
    | FIX_OrdRejReason_UnsupportedOrderCharacteristic 
    | FIX_OrdRejReason_DuplicateOfAVerballyCommunicatedOrder 
    | FIX_OrdRejReason_IncorrectQuantity 
    | FIX_OrdRejReason_TradeAlongRequired 
    | FIX_OrdRejReason_StaleOrder 
    | FIX_OrdRejReason_InvalidInvestorID 
    | FIX_OrdRejReason_ExchangeClosed 
    | FIX_OrdRejReason_IncorrectAllocatedQuantity 
    | FIX_OrdRejReason_UnknownSymbol 
;;

(** Identifies current status of order.
 *** SOME VALUES HAVE BEEN REPLACED - See "Replaced Features and Supported Approach" ***
 (see Volume : "Glossary" for value definitions)*)
type fix_ordstatus =
    | FIX_OrdStatus_PendingCancel 
    | FIX_OrdStatus_Stopped 
    | FIX_OrdStatus_PendingNew 
    | FIX_OrdStatus_Rejected 
    | FIX_OrdStatus_Calculated 
    | FIX_OrdStatus_Expired 
    | FIX_OrdStatus_Filled 
    | FIX_OrdStatus_Canceled 
    | FIX_OrdStatus_Replaced 
    | FIX_OrdStatus_PendingReplace 
    | FIX_OrdStatus_DoneForDay 
    | FIX_OrdStatus_Suspended 
    | FIX_OrdStatus_New 
    | FIX_OrdStatus_PartiallyFilled 
    | FIX_OrdStatus_AcceptedForBidding 
;;

(** Order type
 *** SOME VALUES ARE NO LONGER USED - See "Deprecated (Phased-out) Features and Supported Approach" ***
 (see Volume : "Glossary" for value definitions)*)
type fix_ordtype =
    | FIX_OrdType_LimitOrBetter 
    | FIX_OrdType_NextFundValuationPoint 
    | FIX_OrdType_WithOrWithout 
    | FIX_OrdType_PreviouslyIndicated 
    | FIX_OrdType_Stop 
    | FIX_OrdType_Market 
    | FIX_OrdType_OnBasis 
    | FIX_OrdType_Funari 
    | FIX_OrdType_Pegged 
    | FIX_OrdType_LimitWithOrWithout 
    | FIX_OrdType_StopLimit 
    | FIX_OrdType_ForexSwap 
    | FIX_OrdType_MarketIfTouched 
    | FIX_OrdType_MarketWithLeftOverAsLimit 
    | FIX_OrdType_PreviouslyQuoted 
    | FIX_OrdType_Limit 
    | FIX_OrdType_PreviousFundValuationPoint 
;;

(** Designates the capacity of the firm placing the order
 (as of FIX 4.3, this field replaced Rule80A (tag 47) --used in conjunction with OrderRestrictions (529) field)
 (see Volume : "Glossary" for value definitions)*)
type fix_ordercapacity =
    | FIX_OrderCapacity_Agency 
    | FIX_OrderCapacity_Individual 
    | FIX_OrderCapacity_Proprietary 
    | FIX_OrderCapacity_AgentForOtherMember 
    | FIX_OrderCapacity_Principal 
    | FIX_OrderCapacity_RisklessPrincipal 
;;

(** Restrictions associated with an order. If more than one restriction is applicable to an order, this field can contain multiple instructions separated by space.*)
type fix_orderrestrictions =
    | FIX_OrderRestrictions_ForeignEntity 
    | FIX_OrderRestrictions_ExternalMarketParticipant 
    | FIX_OrderRestrictions_IndexArbitrage 
    | FIX_OrderRestrictions_CompetingMarketMaker 
    | FIX_OrderRestrictions_RisklessArbitrage 
    | FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInSecurity 
    | FIX_OrderRestrictions_ProgramTrade 
    | FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInUnderlying 
    | FIX_OrderRestrictions_NonIndexArbitrage 
    | FIX_OrderRestrictions_ExternalInterConnectedMarketLinkage 
;;

(** Identifies the type of owner*)
type fix_ownertype =
    | FIX_OwnerType_PrivateCompany 
    | FIX_OwnerType_PublicCompany 
    | FIX_OwnerType_IndividualTrustee 
    | FIX_OwnerType_Fiduciaries 
    | FIX_OwnerType_NonProfitOrganization 
    | FIX_OwnerType_CompanyTrustee 
    | FIX_OwnerType_NetworkingSubAccount 
    | FIX_OwnerType_Trusts 
    | FIX_OwnerType_Nominee 
    | FIX_OwnerType_CustodianUnderGiftsToMinorsAct 
    | FIX_OwnerType_IndividualInvestor 
    | FIX_OwnerType_PensionPlan 
    | FIX_OwnerType_CorporateBody 
;;

(** The relationship between Registration parties.*)
type fix_ownershiptype =
    | FIX_OwnershipType_TenantsInCommon 
    | FIX_OwnershipType_JointTrustees 
    | FIX_OwnershipType_JointInvestors 
;;

(** Identifies class or source of the PartyID (448) value. Required if PartyID is specified. Note: applicable values depend upon PartyRole (452) specified.
 See "Appendix 6-G – Use of <Parties> Component Block"*)
type fix_partyidsource =
    | FIX_PartyIDSource_CSDParticipant 
    | FIX_PartyIDSource_KoreanInvestorID 
    | FIX_PartyIDSource_USEmployerOrTaxIDNumber 
    | FIX_PartyIDSource_TaiwaneseForeignInvestorID 
    | FIX_PartyIDSource_TaiwaneseTradingAcct 
    | FIX_PartyIDSource_UKNationalInsuranceOrPensionNumber 
    | FIX_PartyIDSource_MIC 
    | FIX_PartyIDSource_USSocialSecurityNumber 
    | FIX_PartyIDSource_Proprietary 
    | FIX_PartyIDSource_AustralianTaxFileNumber 
    | FIX_PartyIDSource_MalaysianCentralDepository 
    | FIX_PartyIDSource_ISITCAcronym 
    | FIX_PartyIDSource_ISOCountryCode 
    | FIX_PartyIDSource_ChineseInvestorID 
    | FIX_PartyIDSource_AustralianBusinessNumber 
    | FIX_PartyIDSource_BIC 
    | FIX_PartyIDSource_GeneralIdentifier 
    | FIX_PartyIDSource_SettlementEntityLocation 
;;

(** Identifies the type or role of the PartyID (448) specified.
 See "Appendix 6-G – Use of <Parties> Component Block"*)
type fix_partyrole =
    | FIX_PartyRole_CorrespondantClearingFirm 
    | FIX_PartyRole_Agent 
    | FIX_PartyRole_ExecutingSystem 
    | FIX_PartyRole_SponsoringFirm 
    | FIX_PartyRole_Intermediary 
    | FIX_PartyRole_IntroducingFirm 
    | FIX_PartyRole_EnteringFirm 
    | FIX_PartyRole_LiquidityProvider 
    | FIX_PartyRole_ClearingFirm 
    | FIX_PartyRole_ContraFirm 
    | FIX_PartyRole_ContraTrader 
    | FIX_PartyRole_CustomerAccount 
    | FIX_PartyRole_RegulatoryBody 
    | FIX_PartyRole_SettlementLocation 
    | FIX_PartyRole_Exchange 
    | FIX_PartyRole_Custodian 
    | FIX_PartyRole_CorrespondentClearingOrganization 
    | FIX_PartyRole_ExecutingTrader 
    | FIX_PartyRole_CorrespondentBroker 
    | FIX_PartyRole_ClientID 
    | FIX_PartyRole_OrderOriginationTrader 
    | FIX_PartyRole_Beneficiary 
    | FIX_PartyRole_InterestedParty 
    | FIX_PartyRole_UnderlyingContraFirm 
    | FIX_PartyRole_GiveupClearingFirm 
    | FIX_PartyRole_ClearingOrganization 
    | FIX_PartyRole_Locate 
    | FIX_PartyRole_Buyer 
    | FIX_PartyRole_PositionAccount 
    | FIX_PartyRole_OrderOriginationFirm 
    | FIX_PartyRole_BrokerOfCredit 
    | FIX_PartyRole_SubCustodian 
    | FIX_PartyRole_EnteringTrader 
    | FIX_PartyRole_ExecutingFirm 
    | FIX_PartyRole_FundManagerClientID 
    | FIX_PartyRole_ContraClearingFirm 
    | FIX_PartyRole_InvestorID 
;;

(** Type of PartySubID (523) value
 4000+ = Reserved and available for bi-laterally agreed upon user defined values*)
type fix_partysubidtype =
    | FIX_PartySubIDType_EmailAddress 
    | FIX_PartySubIDType_Application 
    | FIX_PartySubIDType_FundAccountName 
    | FIX_PartySubIDType_FullLegalNameOfFirm 
    | FIX_PartySubIDType_CSDParticipantMemberCode 
    | FIX_PartySubIDType_RegistrationName 
    | FIX_PartySubIDType_PostalAddress 
    | FIX_PartySubIDType_SecuritiesAccountNumber 
    | FIX_PartySubIDType_RegisteredAddress 
    | FIX_PartySubIDType_TelexNumber 
    | FIX_PartySubIDType_RegulatoryStatus 
    | FIX_PartySubIDType_PhoneNumber 
    | FIX_PartySubIDType_Firm 
    | FIX_PartySubIDType_Person 
    | FIX_PartySubIDType_ContactName 
    | FIX_PartySubIDType_CashAccountNumber 
    | FIX_PartySubIDType_CashAccountName 
    | FIX_PartySubIDType_LocationDesk 
    | FIX_PartySubIDType_RegisteredAddressForConfirmation 
    | FIX_PartySubIDType_PositionAccountType 
    | FIX_PartySubIDType_System 
    | FIX_PartySubIDType_Department 
    | FIX_PartySubIDType_FaxNumber 
    | FIX_PartySubIDType_RegistrationNumber 
    | FIX_PartySubIDType_BIC 
    | FIX_PartySubIDType_SecuritiesAccountName 
;;

(** A code identifying the Settlement payment method.
 16 through 998 are reserved for future use
 Values above 000 are available for use by private agreement among counterparties*)
type fix_paymentmethod =
    | FIX_PaymentMethod_CREST 
    | FIX_PaymentMethod_NSCC 
    | FIX_PaymentMethod_DirectCredit 
    | FIX_PaymentMethod_ACHCredit 
    | FIX_PaymentMethod_Clearstream 
    | FIX_PaymentMethod_HighValueClearingSystem 
    | FIX_PaymentMethod_DebitCard 
    | FIX_PaymentMethod_Euroclear 
    | FIX_PaymentMethod_TelegraphicTransfer 
    | FIX_PaymentMethod_CreditCard 
    | FIX_PaymentMethod_DirectDebit 
    | FIX_PaymentMethod_BPAY 
    | FIX_PaymentMethod_Cheque 
    | FIX_PaymentMethod_ACHDebit 
    | FIX_PaymentMethod_FedWire 
;;

(** Type of Peg Limit*)
type fix_peglimittype =
    | FIX_PegLimitType_Strict 
    | FIX_PegLimitType_OrBetter 
    | FIX_PegLimitType_OrWorse 
;;

(** Describes whether peg is static or floats*)
type fix_pegmovetype =
    | FIX_PegMoveType_Fixed 
    | FIX_PegMoveType_Floating 
;;

(** Type of Peg Offset value*)
type fix_pegoffsettype =
    | FIX_PegOffsetType_BasisPoints 
    | FIX_PegOffsetType_Price 
    | FIX_PegOffsetType_Ticks 
    | FIX_PegOffsetType_PriceTier 
;;

(** If the calculated peg price is not a valid tick price, specifies whether to round the price to be more or less aggressive*)
type fix_pegrounddirection =
    | FIX_PegRoundDirection_MoreAggressive 
    | FIX_PegRoundDirection_MorePassive 
;;

(** The scope of the peg*)
type fix_pegscope =
    | FIX_PegScope_National 
    | FIX_PegScope_Local 
    | FIX_PegScope_NationalExcludingLocal 
    | FIX_PegScope_Global 
;;

(** Type of Position amount*)
type fix_posamttype =
    | FIX_PosAmtType_PremiumAmount 
    | FIX_PosAmtType_StartOfDayMarkToMarketAmount 
    | FIX_PosAmtType_FinalMarkToMarketAmount 
    | FIX_PosAmtType_ValueAdjustedAmount 
    | FIX_PosAmtType_TradeVariationAmount 
    | FIX_PosAmtType_CashResidualAmount 
    | FIX_PosAmtType_IncrementalMarkToMarketAmount 
    | FIX_PosAmtType_CashAmount 
;;

(** Maintenance Action to be performed*)
type fix_posmaintaction =
    | FIX_PosMaintAction_Replace 
    | FIX_PosMaintAction_Cancel 
    | FIX_PosMaintAction_New 
;;

(** Result of Position Maintenance Request.*)
type fix_posmaintresult =
    | FIX_PosMaintResult_Other 
    | FIX_PosMaintResult_SuccessfulCompletion 
    | FIX_PosMaintResult_Rejected 
;;

(** Status of Position Maintenance Request*)
type fix_posmaintstatus =
    | FIX_PosMaintStatus_AcceptedWithWarnings 
    | FIX_PosMaintStatus_Rejected 
    | FIX_PosMaintStatus_CompletedWithWarnings 
    | FIX_PosMaintStatus_Completed 
    | FIX_PosMaintStatus_Accepted 
;;

(** Status of this position*)
type fix_posqtystatus =
    | FIX_PosQtyStatus_Submitted 
    | FIX_PosQtyStatus_Rejected 
    | FIX_PosQtyStatus_Accepted 
;;

(** Result of Request for Position
 4000+ Reserved and available for bi-laterally agreed upon user-defined values*)
type fix_posreqresult =
    | FIX_PosReqResult_Other 
    | FIX_PosReqResult_RequestForPositionNotSupported 
    | FIX_PosReqResult_NoPositionsFoundThatMatchCriteria 
    | FIX_PosReqResult_NotAuthorizedToRequestPositions 
    | FIX_PosReqResult_InvalidOrUnsupportedRequest 
    | FIX_PosReqResult_ValidRequest 
;;

(** Status of Request for Positions*)
type fix_posreqstatus =
    | FIX_PosReqStatus_CompletedWithWarnings 
    | FIX_PosReqStatus_Rejected 
    | FIX_PosReqStatus_Completed 
;;

(** Unique identifier for the position maintenance request as assigned by the submitter*)
type fix_posreqtype =
    | FIX_PosReqType_Trades 
    | FIX_PosReqType_Positions 
    | FIX_PosReqType_Exercises 
    | FIX_PosReqType_Assignments 
;;

(** Identifies the type of position transaction*)
type fix_postranstype =
    | FIX_PosTransType_PositionAdjustment 
    | FIX_PosTransType_PositionChangeSubmission 
    | FIX_PosTransType_DoNotExercise 
    | FIX_PosTransType_Exercise 
    | FIX_PosTransType_Pledge 
;;

(** Used to identify the type of quantity that is being returned*)
type fix_postype =
    | FIX_PosType_TotalTransactionQty 
    | FIX_PosType_IntegralSplit 
    | FIX_PosType_OptionAssignment 
    | FIX_PosType_AllocationTradeQty 
    | FIX_PosType_IntraSpreadQty 
    | FIX_PosType_DeliveryQty 
    | FIX_PosType_TransactionFromExercise 
    | FIX_PosType_InterSpreadQty 
    | FIX_PosType_EndOfDayQty 
    | FIX_PosType_TransactionQuantity 
    | FIX_PosType_PitTradeQty 
    | FIX_PosType_ElectronicTradeQty 
    | FIX_PosType_CrossMarginQty 
    | FIX_PosType_StartOfDayQty 
    | FIX_PosType_TransferTradeQty 
    | FIX_PosType_TransactionFromAssignment 
    | FIX_PosType_OptionExerciseQty 
    | FIX_PosType_AdjustmentQty 
    | FIX_PosType_AsOfTradeQty 
;;

(** Indicates whether the resulting position after a trade should be an opening position or closing position. Used for omnibus accounting - where accounts are held on a gross basis instead of being netted together.*)
type fix_positioneffect =
    | FIX_PositionEffect_Close 
    | FIX_PositionEffect_Rolled 
    | FIX_PositionEffect_FIFO 
    | FIX_PositionEffect_Open 
;;

(** Indicates possible retransmission of message with this sequence number*)
type fix_possdupflag =
    | FIX_PossDupFlag_PossibleDuplicate 
    | FIX_PossDupFlag_OriginalTransmission 
;;

(** Indicates that message may contain information that has been sent under another sequence number.*)
type fix_possresend =
    | FIX_PossResend_OriginalTransmission 
    | FIX_PossResend_PossibleResend 
;;

(** Indicates the method of preallocation.*)
type fix_preallocmethod =
    | FIX_PreallocMethod_ProRata 
    | FIX_PreallocMethod_DoNotProRata 
;;

(** Indicates if the trade capture report was previously reported to the counterparty*)
type fix_previouslyreported =
    | FIX_PreviouslyReported_PerviouslyReportedToCounterparty 
    | FIX_PreviouslyReported_NotReportedToCounterparty 
;;

(** Code to represent the price type*)
type fix_pricetype =
    | FIX_PriceType_Discount 
    | FIX_PriceType_Spread 
    | FIX_PriceType_TEDPrice 
    | FIX_PriceType_FixedCabinetTradePrice 
    | FIX_PriceType_Percentage 
    | FIX_PriceType_VariableCabinetTradePrice 
    | FIX_PriceType_TEDYield 
    | FIX_PriceType_PerUnit 
    | FIX_PriceType_FixedAmount 
    | FIX_PriceType_Premium 
    | FIX_PriceType_Yield 
;;

(** Indicates if a Cancel/Replace has caused an order to lose book priority*)
type fix_priorityindicator =
    | FIX_PriorityIndicator_PriorityUnchanged 
    | FIX_PriorityIndicator_LostPriorityAsResultOfOrderChange 
;;

(** Processing code for sub-account. Absence of this field in AllocAccount (79) / AllocPrice (366) /AllocQty (80) / ProcessCode instance indicates regular trade.*)
type fix_processcode =
    | FIX_ProcessCode_Regular 
    | FIX_ProcessCode_SoftDollarStepOut 
    | FIX_ProcessCode_StepIn 
    | FIX_ProcessCode_PlanSponsor 
    | FIX_ProcessCode_SoftDollarStepIn 
    | FIX_ProcessCode_SoftDollar 
    | FIX_ProcessCode_StepOut 
;;

(** Indicates the type of product the security is associated with. See also the CFICode (46) and SecurityType (67) fields.*)
type fix_product =
    | FIX_Product_CURRENCY 
    | FIX_Product_COMMODITY 
    | FIX_Product_CORPORATE 
    | FIX_Product_LOAN 
    | FIX_Product_MORTGAGE 
    | FIX_Product_OTHER 
    | FIX_Product_AGENCY 
    | FIX_Product_FINANCING 
    | FIX_Product_MUNICIPAL 
    | FIX_Product_MONEYMARKET 
    | FIX_Product_INDEX 
    | FIX_Product_GOVERNMENT 
    | FIX_Product_EQUITY 
;;

(** Code to identify the desired frequency of progress reports*)
type fix_progrptreqs =
    | FIX_ProgRptReqs_BuySideRequests 
    | FIX_ProgRptReqs_SellSideSends 
    | FIX_ProgRptReqs_RealTimeExecutionReports 
;;

(** Indicates if a trade should be reported via a market reporting service.*)
type fix_publishtrdindicator =
    | FIX_PublishTrdIndicator_ReportTrade 
    | FIX_PublishTrdIndicator_DoNotReportTrade 
;;

(** Indicates whether an Option is for a put or call*)
type fix_putorcall =
    | FIX_PutOrCall_Call 
    | FIX_PutOrCall_Put 
;;

(** Type of quantity specified in a quantity field*)
type fix_qtytype =
    | FIX_QtyType_Units 
    | FIX_QtyType_Contracts 
;;

(** Identifies the type of quote cancel.*)
type fix_quotecanceltype =
    | FIX_QuoteCancelType_CancelAllQuotes 
    | FIX_QuoteCancelType_CancelForOneOrMoreSecurities 
    | FIX_QuoteCancelType_CancelForUnderlyingSecurity 
    | FIX_QuoteCancelType_CancelForSecurityType 
;;

(** Space-delimited list of conditions describing a quote*)
type fix_quotecondition =
    | FIX_QuoteCondition_Closed 
    | FIX_QuoteCondition_Locked 
    | FIX_QuoteCondition_Crossed 
    | FIX_QuoteCondition_NonFirm 
    | FIX_QuoteCondition_FastTrading 
    | FIX_QuoteCondition_ConsolidatedBest 
    | FIX_QuoteCondition_Open 
    | FIX_QuoteCondition_ExchangeBest 
    | FIX_QuoteCondition_Depth 
;;

(** Code to represent price type requested in Quote*)
type fix_quotepricetype =
    | FIX_QuotePriceType_Discount 
    | FIX_QuotePriceType_Spread 
    | FIX_QuotePriceType_TEDPrice 
    | FIX_QuotePriceType_Percent 
    | FIX_QuotePriceType_TEDYield 
    | FIX_QuotePriceType_FixedAmount 
    | FIX_QuotePriceType_Premium 
    | FIX_QuotePriceType_Yield 
    | FIX_QuotePriceType_YieldSpread 
    | FIX_QuotePriceType_PerShare 
;;

(** Reason Quote was rejected*)
type fix_quoterejectreason =
    | FIX_QuoteRejectReason_DuplicateQuote 
    | FIX_QuoteRejectReason_Other 
    | FIX_QuoteRejectReason_Exchange 
    | FIX_QuoteRejectReason_InvalidPrice 
    | FIX_QuoteRejectReason_InvalidBid 
    | FIX_QuoteRejectReason_UnknownQuote 
    | FIX_QuoteRejectReason_TooLateToEnter 
    | FIX_QuoteRejectReason_QuoteRequestExceedsLimit 
    | FIX_QuoteRejectReason_NotAuthorizedToQuoteSecurity 
    | FIX_QuoteRejectReason_UnknownSymbol 
;;

(** Reason Quote was rejected:*)
type fix_quoterequestrejectreason =
    | FIX_QuoteRequestRejectReason_Other 
    | FIX_QuoteRequestRejectReason_Exchange 
    | FIX_QuoteRequestRejectReason_InvalidPrice 
    | FIX_QuoteRequestRejectReason_NoInventory 
    | FIX_QuoteRequestRejectReason_NoMatchForInquiry 
    | FIX_QuoteRequestRejectReason_Pass 
    | FIX_QuoteRequestRejectReason_TooLateToEnter 
    | FIX_QuoteRequestRejectReason_NoMarketForInstrument 
    | FIX_QuoteRequestRejectReason_NotAuthorizedToRequestQuote 
    | FIX_QuoteRequestRejectReason_QuoteRequestExceedsLimit 
    | FIX_QuoteRequestRejectReason_UnknownSymbol 
;;

(** Indicates the type of Quote Request being generated*)
type fix_quoterequesttype =
    | FIX_QuoteRequestType_Manual 
    | FIX_QuoteRequestType_Automatic 
;;

(** Identifies the type of Quote Response*)
type fix_quoteresptype =
    | FIX_QuoteRespType_Cover 
    | FIX_QuoteRespType_Hit 
    | FIX_QuoteRespType_Counter 
    | FIX_QuoteRespType_Pass 
    | FIX_QuoteRespType_DoneAway 
    | FIX_QuoteRespType_Expired 
;;

(** Level of Response requested from receiver of quote messages.*)
type fix_quoteresponselevel =
    | FIX_QuoteResponseLevel_NoAcknowledgement 
    | FIX_QuoteResponseLevel_AcknowledgeOnlyNegativeOrErroneousQuotes 
    | FIX_QuoteResponseLevel_AcknowledgeEachQuoteMessage 
;;

(** Identifies the status of the quote acknowledgement*)
type fix_quotestatus =
    | FIX_QuoteStatus_CanceledDueToLockMarket 
    | FIX_QuoteStatus_RemovedFromMarket 
    | FIX_QuoteStatus_CanceledDueToCrossMarket 
    | FIX_QuoteStatus_Rejected 
    | FIX_QuoteStatus_Expired 
    | FIX_QuoteStatus_Query 
    | FIX_QuoteStatus_QuoteNotFound 
    | FIX_QuoteStatus_CanceledAll 
    | FIX_QuoteStatus_LockedMarketWarning 
    | FIX_QuoteStatus_Accepted 
    | FIX_QuoteStatus_CancelForSymbol 
    | FIX_QuoteStatus_CrossMarketWarning 
    | FIX_QuoteStatus_Pass 
    | FIX_QuoteStatus_CanceledForSecurityType 
    | FIX_QuoteStatus_CanceledForUnderlying 
    | FIX_QuoteStatus_Pending 
;;

(** Identifies the type of quote.
 An indicative quote is used to inform a counterparty of a market. An indicative quote does not result directly in a trade.
 A tradeable quote is submitted to a market and will result directly in a trade against other orders and quotes in a market.
 A restricted tradeable quote is submitted to a market and within a certain restriction (possibly based upon price or quantity) will automatically trade against orders. Order that do not comply with restrictions are sent to the quote issuer who can choose to accept or decline the order.
 A counter quote is used in the negotiation model. See Volume 7 – Product: Fixed Income for example usage.*)
type fix_quotetype =
    | FIX_QuoteType_RestrictedTradeable 
    | FIX_QuoteType_Indicative 
    | FIX_QuoteType_Counter 
    | FIX_QuoteType_Tradeable 
;;

(** Reason(s) why Registration Instructions has been rejected.
 The reason may be further amplified in the RegistRejReasonCode field.
 Possible values of reason code include:*)
type fix_registrejreasoncode =
    | FIX_RegistRejReasonCode_InvalidRegSeqNo 
    | FIX_RegistRejReasonCode_Other 
    | FIX_RegistRejReasonCode_InvalidDistribInstns 
    | FIX_RegistRejReasonCode_InvalidTaxExemptType 
    | FIX_RegistRejReasonCode_InvalidDateOfBirth 
    | FIX_RegistRejReasonCode_InvalidAgentCode 
    | FIX_RegistRejReasonCode_InvalidPaymentMethod 
    | FIX_RegistRejReasonCode_InvalidRegDetails 
    | FIX_RegistRejReasonCode_InvalidAccountName 
    | FIX_RegistRejReasonCode_InvalidMailingInstructions 
    | FIX_RegistRejReasonCode_InvalidPercentage 
    | FIX_RegistRejReasonCode_NoRegDetails 
    | FIX_RegistRejReasonCode_InvalidInvestorID 
    | FIX_RegistRejReasonCode_InvalidCountry 
    | FIX_RegistRejReasonCode_InvalidOwnershipType 
    | FIX_RegistRejReasonCode_InvalidAccountType 
    | FIX_RegistRejReasonCode_InvalidInvestorIDSource 
    | FIX_RegistRejReasonCode_InvalidAccountNum 
    | FIX_RegistRejReasonCode_InvalidMailingDetails 
;;

(** Registration status as returned by the broker or (for CIV) the fund manager*)
type fix_registstatus =
    | FIX_RegistStatus_Reminder 
    | FIX_RegistStatus_Held 
    | FIX_RegistStatus_Rejected 
    | FIX_RegistStatus_Accepted 
;;

(** Identifies Registration Instructions transaction type*)
type fix_registtranstype =
    | FIX_RegistTransType_Replace 
    | FIX_RegistTransType_Cancel 
    | FIX_RegistTransType_New 
;;

(** Identifies party of trade responsible for exchange reporting.*)
type fix_reporttoexch =
    | FIX_ReportToExch_ReceiverReports 
    | FIX_ReportToExch_SenderReports 
;;

(** Indicates that the both sides of the FIX session should reset sequence numbers.*)
type fix_resetseqnumflag =
    | FIX_ResetSeqNumFlag_No 
    | FIX_ResetSeqNumFlag_Yes 
;;

(** Identifies how the response to the request should be transmitted*)
type fix_responsetransporttype =
    | FIX_ResponseTransportType_Inband 
    | FIX_ResponseTransportType_OutOfBand 
;;

(** Specifies which direction to round For CIV – indicates whether or not the quantity of shares/units is to be rounded and in which direction where CashOrdQty (52) or (for CIV only) OrderPercent (56) are specified on an order.
 The default is for rounding to be at the discretion of the executing broker or fund manager.
 e.g. for an order specifying CashOrdQty or OrderPercent if the calculated number of shares/units was 325.76 and RoundingModulus (469) was 0 – "round down" would give 320 units, "round up" would give 330 units and "round to nearest" would give 320 units.*)
type fix_roundingdirection =
    | FIX_RoundingDirection_RoundDown 
    | FIX_RoundingDirection_RoundUp 
    | FIX_RoundingDirection_RoundToNearest 
;;

(** Indicates the type of RoutingID (27) specified*)
type fix_routingtype =
    | FIX_RoutingType_TargetList 
    | FIX_RoutingType_TargetFirm 
    | FIX_RoutingType_BlockList 
    | FIX_RoutingType_BlockFirm 
;;

(** Defines the scope of a data element*)
type fix_scope =
    | FIX_Scope_National 
    | FIX_Scope_LocalMarket 
    | FIX_Scope_Global 
;;

(** Identifies class or source of the SecurityID (48) value. Required if SecurityID is specified.*)
type fix_securityidsource =
    | FIX_SecurityIDSource_Belgian 
    | FIX_SecurityIDSource_QUIK 
    | FIX_SecurityIDSource_Sicovam 
    | FIX_SecurityIDSource_Valoren 
    | FIX_SecurityIDSource_ExchangeSymbol 
    | FIX_SecurityIDSource_ISINNumber 
    | FIX_SecurityIDSource_BloombergSymbol 
    | FIX_SecurityIDSource_Common 
    | FIX_SecurityIDSource_ConsolidatedTapeAssociation 
    | FIX_SecurityIDSource_OptionPriceReportingAuthority 
    | FIX_SecurityIDSource_ClearingHouse 
    | FIX_SecurityIDSource_Dutch 
    | FIX_SecurityIDSource_ISDAFpMLSpecification 
    | FIX_SecurityIDSource_ISOCurrencyCode 
    | FIX_SecurityIDSource_ISOCountryCode 
    | FIX_SecurityIDSource_RICCode 
    | FIX_SecurityIDSource_SEDOL 
    | FIX_SecurityIDSource_Wertpapier 
    | FIX_SecurityIDSource_CUSIP 
;;

(** Identifies the type/criteria of Security List Request*)
type fix_securitylistrequesttype =
    | FIX_SecurityListRequestType_Product 
    | FIX_SecurityListRequestType_Symbol 
    | FIX_SecurityListRequestType_SecurityTypeAnd 
    | FIX_SecurityListRequestType_TradingSessionID 
    | FIX_SecurityListRequestType_AllSecurities 
;;

(** The results returned to a Security Request message*)
type fix_securityrequestresult =
    | FIX_SecurityRequestResult_InstrumentDataTemporarilyUnavailable 
    | FIX_SecurityRequestResult_NoInstrumentsFound 
    | FIX_SecurityRequestResult_InvalidOrUnsupportedRequest 
    | FIX_SecurityRequestResult_RequestForInstrumentDataNotSupported 
    | FIX_SecurityRequestResult_ValidRequest 
    | FIX_SecurityRequestResult_NotAuthorizedToRetrieveInstrumentData 
;;

(** Type of Security Definition Request.*)
type fix_securityrequesttype =
    | FIX_SecurityRequestType_RequestListSecurities 
    | FIX_SecurityRequestType_RequestListSecurityTypes 
    | FIX_SecurityRequestType_RequestSecurityIdentityAndSpecifications 
    | FIX_SecurityRequestType_RequestSecurityIdentityForSpecifications 
;;

(** Type of Security Definition message response*)
type fix_securityresponsetype =
    | FIX_SecurityResponseType_AcceptAsIs 
    | FIX_SecurityResponseType_RejectSecurityProposal 
    | FIX_SecurityResponseType_CannotMatchSelectionCriteria 
    | FIX_SecurityResponseType_AcceptWithRevisions 
;;

(** Identifies the trading status applicable to the transaction*)
type fix_securitytradingstatus =
    | FIX_SecurityTradingStatus_ITSPreOpening 
    | FIX_SecurityTradingStatus_PreOpen 
    | FIX_SecurityTradingStatus_MarketImbalanceBuy 
    | FIX_SecurityTradingStatus_NoMarketOnCloseImbalance 
    | FIX_SecurityTradingStatus_NotAvailableForTrading 
    | FIX_SecurityTradingStatus_OpeningRotation 
    | FIX_SecurityTradingStatus_NoMarketImbalance 
    | FIX_SecurityTradingStatus_TradeDisseminationTime 
    | FIX_SecurityTradingStatus_ReadyToTrade 
    | FIX_SecurityTradingStatus_UnknownOrInvalid 
    | FIX_SecurityTradingStatus_MarketOnCloseImbalanceBuy 
    | FIX_SecurityTradingStatus_OpeningDelay 
    | FIX_SecurityTradingStatus_NoOpen 
    | FIX_SecurityTradingStatus_TradingHalt 
    | FIX_SecurityTradingStatus_MarketOnCloseImbalanceSell 
    | FIX_SecurityTradingStatus_MarketImbalanceSell 
    | FIX_SecurityTradingStatus_NotTradedOnThisMarket 
    | FIX_SecurityTradingStatus_TradingRangeIndication 
    | FIX_SecurityTradingStatus_FastMarket 
    | FIX_SecurityTradingStatus_NewPriceIndication 
    | FIX_SecurityTradingStatus_PriceIndication 
    | FIX_SecurityTradingStatus_Resume 
;;

(** Indicates type of security. See also the Product (460) and CFICode (46) fields. It is recommended that CFICode be used instead of SecurityType for non-Fixed Income instruments.
 Example values (grouped by Product field value) (Note: additional values may be used by mutual agreement of the counterparties):
 * Identify the Issuer in the "Issuer" field(06)
 *** REPLACED values - See "Replaced Features and Supported Approach" ***
 NOTE: Additional values may be used by mutual agreement of the counterparties)*)
type fix_securitytype =
    | FIX_SecurityType_MutualFund 
    | FIX_SecurityType_YankeeCorporateBond 
    | FIX_SecurityType_InterestStripFromAnyBondOrNote 
    | FIX_SecurityType_Revolver 
    | FIX_SecurityType_CommercialPaper 
    | FIX_SecurityType_RevenueAnticipationNote 
    | FIX_SecurityType_Matured 
    | FIX_SecurityType_Retired 
    | FIX_SecurityType_StructuredNotes 
    | FIX_SecurityType_MortgagePrivatePlacement 
    | FIX_SecurityType_Pfandbriefe 
    | FIX_SecurityType_OtherAnticipationNotes 
    | FIX_SecurityType_USDSupranationalCoupons 
    | FIX_SecurityType_MandatoryTender 
    | FIX_SecurityType_PreferredStock 
    | FIX_SecurityType_ToBeAnnounced 
    | FIX_SecurityType_GeneralObligationBonds 
    | FIX_SecurityType_TimeDeposit 
    | FIX_SecurityType_ExtendedCommNote 
    | FIX_SecurityType_MiscellaneousPassThrough 
    | FIX_SecurityType_YankeeCertificateOfDeposit 
    | FIX_SecurityType_Future 
    | FIX_SecurityType_Forward 
    | FIX_SecurityType_VariableRateDemandNote 
    | FIX_SecurityType_MediumTermNotes 
    | FIX_SecurityType_Option 
    | FIX_SecurityType_Repurchase 
    | FIX_SecurityType_PlazosFijos 
    | FIX_SecurityType_USTreasuryBill 
    | FIX_SecurityType_BankNotes 
    | FIX_SecurityType_MortgagePrincipalOnly 
    | FIX_SecurityType_MortgageInterestOnly 
    | FIX_SecurityType_AssetBackedSecurities 
    | FIX_SecurityType_Warrant 
    | FIX_SecurityType_SpecialTax 
    | FIX_SecurityType_EuroSupranationalCoupons 
    | FIX_SecurityType_ForeignExchangeContract 
    | FIX_SecurityType_USTreasuryBillOld 
    | FIX_SecurityType_CertificateOfDeposit 
    | FIX_SecurityType_TaxAnticipationNote 
    | FIX_SecurityType_LetterOfCredit 
    | FIX_SecurityType_CollateralizedMortgageObligation 
    | FIX_SecurityType_IOETTEMortgage 
    | FIX_SecurityType_MortgageBackedSecurities 
    | FIX_SecurityType_BillOfExchanges 
    | FIX_SecurityType_Amended 
    | FIX_SecurityType_RevenueBonds 
    | FIX_SecurityType_EuroCorporateBond 
    | FIX_SecurityType_PrivateExportFunding 
    | FIX_SecurityType_RevolverLoan 
    | FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote 
    | FIX_SecurityType_Withdrawn 
    | FIX_SecurityType_DepositNotes 
    | FIX_SecurityType_SpecialAssessment 
    | FIX_SecurityType_EuroSovereigns 
    | FIX_SecurityType_TaxAllocation 
    | FIX_SecurityType_EuroCertificateOfDeposit 
    | FIX_SecurityType_PromissoryNote 
    | FIX_SecurityType_PrincipalStripOfACallableBondOrNote 
    | FIX_SecurityType_Overnight 
    | FIX_SecurityType_ConvertibleBond 
    | FIX_SecurityType_Corp 
    | FIX_SecurityType_SpecialObligation 
    | FIX_SecurityType_SecuritiesLoan 
    | FIX_SecurityType_CertificateOfObligation 
    | FIX_SecurityType_FederalAgencyDiscountNote 
    | FIX_SecurityType_CallLoans 
    | FIX_SecurityType_DebtorInPossession 
    | FIX_SecurityType_USTreasuryBond 
    | FIX_SecurityType_SecuritiesPledge 
    | FIX_SecurityType_Replaced 
    | FIX_SecurityType_BradyBond 
    | FIX_SecurityType_CorporateBond 
    | FIX_SecurityType_TermLoan 
    | FIX_SecurityType_TaxRevenueAnticipationNote 
    | FIX_SecurityType_SwingLineFacility 
    | FIX_SecurityType_TaxExemptCommercialPaper 
    | FIX_SecurityType_NoSecurityType 
    | FIX_SecurityType_DualCurrency 
    | FIX_SecurityType_FederalAgencyCoupon 
    | FIX_SecurityType_BankersAcceptance 
    | FIX_SecurityType_MultilegInstrument 
    | FIX_SecurityType_EuroCommercialPaper 
    | FIX_SecurityType_CommonStock 
    | FIX_SecurityType_USTreasuryNote 
    | FIX_SecurityType_TreasuryInflationProtectedSecurities 
    | FIX_SecurityType_IndexedLinked 
    | FIX_SecurityType_BridgeLoan 
    | FIX_SecurityType_ShortTermLoanNote 
    | FIX_SecurityType_Defaulted 
    | FIX_SecurityType_USTreasuryNoteOld 
    | FIX_SecurityType_CertificateOfParticipation 
    | FIX_SecurityType_CorporatePrivatePlacement 
    | FIX_SecurityType_BuySellback 
    | FIX_SecurityType_LiquidityNote 
;;

(** Specifies whether or not SettlCurrFxRate (55) should be multiplied or divided*)
type fix_settlcurrfxratecalc =
    | FIX_SettlCurrFxRateCalc_Multiply 
    | FIX_SettlCurrFxRateCalc_Divide 
;;

(** Identifies type of settlement*)
type fix_settldeliverytype =
    | FIX_SettlDeliveryType_TriParty 
    | FIX_SettlDeliveryType_Versus 
    | FIX_SettlDeliveryType_HoldInCustody 
    | FIX_SettlDeliveryType_Free 
;;

(** Indicates mode used for Settlement Instructions message.
 *** SOME VALUES HAVE BEEN REPLACED - See "Replaced Features and Supported Approach" ****)
type fix_settlinstmode =
    | FIX_SettlInstMode_RequestReject 
    | FIX_SettlInstMode_StandingInstructionsProvided 
    | FIX_SettlInstMode_SpecificOrderForASingleAccount 
;;

(** Identifies reason for rejection (of a settlement instruction request message)*)
type fix_settlinstreqrejcode =
    | FIX_SettlInstReqRejCode_Other 
    | FIX_SettlInstReqRejCode_NoMatchingSettlementInstructionsFound 
    | FIX_SettlInstReqRejCode_UnknownAccount 
    | FIX_SettlInstReqRejCode_UnableToProcessRequest 
;;

(** Indicates source of Settlement Instructions*)
type fix_settlinstsource =
    | FIX_SettlInstSource_Investor 
    | FIX_SettlInstSource_Institution 
    | FIX_SettlInstSource_BrokerCredit 
;;

(** Settlement Instructions message transaction type*)
type fix_settlinsttranstype =
    | FIX_SettlInstTransType_Cancel 
    | FIX_SettlInstTransType_Replace 
    | FIX_SettlInstTransType_New 
    | FIX_SettlInstTransType_Restate 
;;

(** Type of settlement price*)
type fix_settlpricetype =
    | FIX_SettlPriceType_Theoretical 
    | FIX_SettlPriceType_Final 
;;

(** Identifies a specific settlement session*)
type fix_settlsessid =
    | FIX_SettlSessID_Intraday 
    | FIX_SettlSessID_RegularTradingHours 
    | FIX_SettlSessID_ElectronicTradingHours 
;;

(** Indicates order settlement period. If present, SettlDate (64) overrides this field. If both SettlType (63) and SettDate (64) are omitted, the default for SettlType (63) is 0 (Regular)
 Regular is defined as the default settlement period for the particular security on the exchange of execution.
 In Fixed Income the contents of this field may influence the instrument definition if the SecurityID (48) is ambiguous. In the US an active Treasury offering may be re-opened, and for a time one CUSIP will apply to both the current and "when-issued" securities. Supplying a value of "7" clarifies the instrument description; any other value or the absence of this field should cause the respondent to default to the active issue.*)
type fix_settltype =
    | FIX_SettlType_Regular 
    | FIX_SettlType_TPlus2 
    | FIX_SettlType_SellersOption 
    | FIX_SettlType_TPlus4 
    | FIX_SettlType_TPlus3 
    | FIX_SettlType_TPlus5 
    | FIX_SettlType_NextDay 
    | FIX_SettlType_Future 
    | FIX_SettlType_Cash 
    | FIX_SettlType_WhenAndIfIssued 
;;

(** Reason for short sale*)
type fix_shortsalereason =
    | FIX_ShortSaleReason_SellingCustomerSoldShort 
    | FIX_ShortSaleReason_QSROrAGUContraSideSoldShortExempt 
    | FIX_ShortSaleReason_DealerSoldShort 
    | FIX_ShortSaleReason_QualifiedServiceRepresentative 
    | FIX_ShortSaleReason_DealerSoldShortExempt 
    | FIX_ShortSaleReason_SellingCustomerSoldShortExempt 
;;

(** Side of order*)
type fix_side =
    | FIX_Side_AsDefined 
    | FIX_Side_Opposite 
    | FIX_Side_Buy 
    | FIX_Side_CrossShortExempt 
    | FIX_Side_Borrow 
    | FIX_Side_BuyMinus 
    | FIX_Side_Subscribe 
    | FIX_Side_Lend 
    | FIX_Side_SellShortExempt 
    | FIX_Side_Redeem 
    | FIX_Side_SellPlus 
    | FIX_Side_Sell 
    | FIX_Side_Undisclosed 
    | FIX_Side_Cross 
    | FIX_Side_CrossShort 
    | FIX_Side_SellShort 
;;

(** Used to indicate if the side being reported on Trade Capture Report represents a leg of a multileg instrument or a single security*)
type fix_sidemultilegreportingtype =
    | FIX_SideMultiLegReportingType_SingleSecurity 
    | FIX_SideMultiLegReportingType_MultilegSecurity 
    | FIX_SideMultiLegReportingType_IndividualLegOfAMultilegSecurity 
;;

(** Code to identify which "SideValue" the value refers to. SideValue and SideValue2 are used as opposed to Buy or Sell so that the basket can be quoted either way as Buy or Sell.*)
type fix_sidevalueind =
    | FIX_SideValueInd_SideValue1 
    | FIX_SideValueInd_SideValue2 
;;

(** Indicates whether or not the order was solicited.*)
type fix_solicitedflag =
    | FIX_SolicitedFlag_WasSolicited 
    | FIX_SolicitedFlag_WasNotSolicited 
;;

(** Identifies the Standing Instruction database used*)
type fix_standinstdbtype =
    | FIX_StandInstDbType_Other 
    | FIX_StandInstDbType_AccountNet 
    | FIX_StandInstDbType_DTCSID 
    | FIX_StandInstDbType_ThomsonALERT 
    | FIX_StandInstDbType_AGlobalCustodian 
;;

(** Indicates the status of a network connection*)
type fix_statusvalue =
    | FIX_StatusValue_NotConnectedUnexpected 
    | FIX_StatusValue_InProcess 
    | FIX_StatusValue_Connected 
    | FIX_StatusValue_NotConnectedExpected 
;;

(** Type of Stipulation*)
type fix_stipulationtype =
    | FIX_StipulationType_LookbackDays 
    | FIX_StipulationType_CouponRange 
    | FIX_StipulationType_PoolsPerLot 
    | FIX_StipulationType_YieldRange 
    | FIX_StipulationType_Purpose 
    | FIX_StipulationType_PaymentFrequency 
    | FIX_StipulationType_Insured 
    | FIX_StipulationType_SubstitutionsFrequency 
    | FIX_StipulationType_WeightedAverageLoanAge 
    | FIX_StipulationType_PricingFrequency 
    | FIX_StipulationType_PoolsMaximum 
    | FIX_StipulationType_CallProtection 
    | FIX_StipulationType_TypeOfRedemption 
    | FIX_StipulationType_MaturityRange 
    | FIX_StipulationType_SecurityTypeIncludedOrExcluded 
    | FIX_StipulationType_SubstitutionsLeft 
    | FIX_StipulationType_IssueSizeRange 
    | FIX_StipulationType_WeightedAverageCoupon 
    | FIX_StipulationType_FreeformText 
    | FIX_StipulationType_WeightedAverageLifeCoupon 
    | FIX_StipulationType_BankQualified 
    | FIX_StipulationType_ExplicitLotIdentifier 
    | FIX_StipulationType_TradeVariance 
    | FIX_StipulationType_MaximumSubstitutions 
    | FIX_StipulationType_RatingSourceAndRange 
    | FIX_StipulationType_MinimumIncrement 
    | FIX_StipulationType_CustomStart 
    | FIX_StipulationType_MinimumDenomination 
    | FIX_StipulationType_PoolsPerMillion 
    | FIX_StipulationType_IssueDate 
    | FIX_StipulationType_Geographics 
    | FIX_StipulationType_MinimumQuantity 
    | FIX_StipulationType_PoolsPerTrade 
    | FIX_StipulationType_ISOCurrencyCode 
    | FIX_StipulationType_MaturityYearAndMonth 
    | FIX_StipulationType_WholePool 
    | FIX_StipulationType_AlternativeMinimumTax 
    | FIX_StipulationType_Issuer 
    | FIX_StipulationType_Restricted 
    | FIX_StipulationType_PriceRange 
    | FIX_StipulationType_MarketSector 
    | FIX_StipulationType_AutoReinvestment 
    | FIX_StipulationType_NumberOfPieces 
    | FIX_StipulationType_ProductionYear 
    | FIX_StipulationType_ValuationDiscount 
    | FIX_StipulationType_BargainConditions 
    | FIX_StipulationType_BenchmarkPriceSource 
    | FIX_StipulationType_WeightedAverageMaturity 
    | FIX_StipulationType_Structure 
    | FIX_StipulationType_LotVariance 
;;

(** Subscription Request Type*)
type fix_subscriptionrequesttype =
    | FIX_SubscriptionRequestType_DisablePreviousSnapshot 
    | FIX_SubscriptionRequestType_SnapshotAndUpdates 
    | FIX_SubscriptionRequestType_Snapshot 
;;

(** The target strategy of the order
 1000+ = Reserved and available for bi-laterally agreed upon user defined values*)
type fix_targetstrategy =
    | FIX_TargetStrategy_MininizeMarketImpact 
    | FIX_TargetStrategy_VWAP 
    | FIX_TargetStrategy_Participate 
;;

(** For CIV - a code identifying the type of tax exempt account in which purchased shares/units are to be held*)
type fix_taxadvantagetype =
    | FIX_TaxAdvantageType_MiniInsuranceISA 
    | FIX_TaxAdvantageType_US457 
    | FIX_TaxAdvantageType_CurrentYearPayment 
    | FIX_TaxAdvantageType_US401K 
    | FIX_TaxAdvantageType_AssetTransfer 
    | FIX_TaxAdvantageType_EducationIRAPrototype 
    | FIX_TaxAdvantageType_IRARollover 
    | FIX_TaxAdvantageType_RothIRANonPrototype 
    | FIX_TaxAdvantageType_MiniCashISA 
    | FIX_TaxAdvantageType_IRA 
    | FIX_TaxAdvantageType_SelfDirectedIRA 
    | FIX_TaxAdvantageType_RothIRAPrototype 
    | FIX_TaxAdvantageType_MaxiISA 
    | FIX_TaxAdvantageType_EmployeeCurrentYear 
    | FIX_TaxAdvantageType_NonFundPrototypeIRA 
    | FIX_TaxAdvantageType_MiniStocksAndSharesISA 
    | FIX_TaxAdvantageType_PriorYearPayment 
    | FIX_TaxAdvantageType_ProfitSharingPlan 
    | FIX_TaxAdvantageType_FIXNone 
    | FIX_TaxAdvantageType_TESSA 
    | FIX_TaxAdvantageType_EmployerPriorYear 
    | FIX_TaxAdvantageType_EmployerCurrentYear 
    | FIX_TaxAdvantageType_KEOGH 
    | FIX_TaxAdvantageType_NonFundQualifiedPlan 
    | FIX_TaxAdvantageType_EmployeePriorYear 
    | FIX_TaxAdvantageType_RothConversionIRANonPrototype 
    | FIX_TaxAdvantageType_US403b 
    | FIX_TaxAdvantageType_RothConversionIRAPrototype 
    | FIX_TaxAdvantageType_DefinedContributionPlan 
    | FIX_TaxAdvantageType_EducationIRANonPrototype 
;;

(** Type of financing termination*)
type fix_terminationtype =
    | FIX_TerminationType_Flexible 
    | FIX_TerminationType_Overnight 
    | FIX_TerminationType_Term 
    | FIX_TerminationType_Open 
;;

(** Indicates whether or not this FIX Session is a "test" vs. "production" connection. Useful for preventing "accidents".*)
type fix_testmessageindicator =
    | FIX_TestMessageIndicator_Fales 
    | FIX_TestMessageIndicator_True 
;;

(** Direction of the "tick"*)
type fix_tickdirection =
    | FIX_TickDirection_ZeroMinusTick 
    | FIX_TickDirection_PlusTick 
    | FIX_TickDirection_MinusTick 
    | FIX_TickDirection_ZeroPlusTick 
;;

(** Specifies how long the order remains in effect. Absence of this field is interpreted as DAY.*)
type fix_timeinforce =
    | FIX_TimeInForce_GoodTillCancel 
    | FIX_TimeInForce_AtTheClose 
    | FIX_TimeInForce_ImmediateOrCancel 
    | FIX_TimeInForce_Day 
    | FIX_TimeInForce_FillOrKill 
    | FIX_TimeInForce_AtTheOpening 
    | FIX_TimeInForce_GoodTillCrossing 
    | FIX_TimeInForce_GoodTillDate 
;;

(** Method of trading*)
type fix_tradsesmethod =
    | FIX_TradSesMethod_OpenOutcry 
    | FIX_TradSesMethod_Electronic 
    | FIX_TradSesMethod_TwoParty 
;;

(** Trading Session Mode*)
type fix_tradsesmode =
    | FIX_TradSesMode_Testing 
    | FIX_TradSesMode_Simulated 
    | FIX_TradSesMode_Production 
;;

(** State of the trading session*)
type fix_tradsesstatus =
    | FIX_TradSesStatus_Closed 
    | FIX_TradSesStatus_PreOpen 
    | FIX_TradSesStatus_RequestRejected 
    | FIX_TradSesStatus_PreClose 
    | FIX_TradSesStatus_Unknown 
    | FIX_TradSesStatus_Halted 
    | FIX_TradSesStatus_Open 
;;

(** Indicates the reason a Trading Session Status Request was rejected*)
type fix_tradsesstatusrejreason =
    | FIX_TradSesStatusRejReason_Other 
    | FIX_TradSesStatusRejReason_UnknownOrInvalidTradingSessionID 
;;

(** Identifies how the trade is to be allocated*)
type fix_tradeallocindicator =
    | FIX_TradeAllocIndicator_UseAllocationProvidedWithTheTrade 
    | FIX_TradeAllocIndicator_AllocationNotRequired 
    | FIX_TradeAllocIndicator_AllocationRequired 
;;

(** Space-delimited list of conditions describing a trade*)
type fix_tradecondition =
    | FIX_TradeCondition_Opened 
    | FIX_TradeCondition_Rule127Trade 
    | FIX_TradeCondition_CashTrade 
    | FIX_TradeCondition_IntradayTradeDetail 
    | FIX_TradeCondition_SoldLast 
    | FIX_TradeCondition_Cash 
    | FIX_TradeCondition_StoppedStock 
    | FIX_TradeCondition_ImbalanceMoreSellers 
    | FIX_TradeCondition_Sold 
    | FIX_TradeCondition_ImbalanceMoreBuyers 
    | FIX_TradeCondition_NextDay 
    | FIX_TradeCondition_Opening 
    | FIX_TradeCondition_Seller 
    | FIX_TradeCondition_OpeningPrice 
    | FIX_TradeCondition_AveragePriceTrade 
    | FIX_TradeCondition_Rule155Trade 
    | FIX_TradeCondition_NextDayTrade 
;;

(** Reason Trade Capture Request was rejected.
 4000+ Reserved and available for bi-laterally agreed upon user-defined values*)
type fix_tradereportrejectreason =
    | FIX_TradeReportRejectReason_Other 
    | FIX_TradeReportRejectReason_InvalidTradeType 
    | FIX_TradeReportRejectReason_UnauthorizedToReportTrades 
    | FIX_TradeReportRejectReason_InvalidPartyOnformation 
    | FIX_TradeReportRejectReason_UnknownInstrument 
    | FIX_TradeReportRejectReason_Successful 
;;

(** Type of Trade Report*)
type fix_tradereporttype =
    | FIX_TradeReportType_Alleged 
    | FIX_TradeReportType_No 
    | FIX_TradeReportType_TradeReportCancel 
    | FIX_TradeReportType_Decline 
    | FIX_TradeReportType_Addendum 
    | FIX_TradeReportType_Submit 
    | FIX_TradeReportType_Accept 
    | FIX_TradeReportType_LockedIn 
;;

(** Result of Trade Request
 4000+ Reserved and available for bi-laterally agreed upon user-defined values*)
type fix_traderequestresult =
    | FIX_TradeRequestResult_TradeRequestTypeNotSupported 
    | FIX_TradeRequestResult_Other 
    | FIX_TradeRequestResult_InvalidParties 
    | FIX_TradeRequestResult_InvalidOrUnknownInstrument 
    | FIX_TradeRequestResult_InvalidTransportTypeRequested 
    | FIX_TradeRequestResult_InvalidTypeOfTradeRequested 
    | FIX_TradeRequestResult_InvalidDestinationRequested 
    | FIX_TradeRequestResult_Successful 
    | FIX_TradeRequestResult_NotAuthorized 
;;

(** Status of Trade Request.*)
type fix_traderequeststatus =
    | FIX_TradeRequestStatus_Rejected 
    | FIX_TradeRequestStatus_Completed 
    | FIX_TradeRequestStatus_Accepted 
;;

(** Type of Trade Capture Report*)
type fix_traderequesttype =
    | FIX_TradeRequestType_MatchedTradesMatchingCriteria 
    | FIX_TradeRequestType_AdvisoriesThatMatchCriteria 
    | FIX_TradeRequestType_AllTrades 
    | FIX_TradeRequestType_UnreportedTradesThatMatchCriteria 
    | FIX_TradeRequestType_UnmatchedTradesThatMatchCriteria 
;;

(** Driver and part of trade in the event that the Security Master file was wrong at the point of entry
 (Note tag # was reserved in FIX 4.1, added in FIX 4.3)*)
type fix_tradedflatswitch =
    | FIX_TradedFlatSwitch_TradedFlat 
    | FIX_TradedFlatSwitch_NotTradedFlat 
;;

(** Traded / Regulatory timestamp type
 Note of Applicability: values are required in US futures markets by the CFTC to support computerized trade reconstruction.
 (see Volume : "Glossary" for value definitions)*)
type fix_trdregtimestamptype =
    | FIX_TrdRegTimestampType_ExecutionTime 
    | FIX_TrdRegTimestampType_TimeIn 
    | FIX_TrdRegTimestampType_BrokerReceipt 
    | FIX_TrdRegTimestampType_BrokerExecution 
    | FIX_TrdRegTimestampType_TimeOut 
;;

(** Trade Report Status*)
type fix_trdrptstatus =
    | FIX_TrdRptStatus_Rejected 
    | FIX_TrdRptStatus_Accepted 
;;

(** Type of Trade*)
type fix_trdtype =
    | FIX_TrdType_BlockTrade 
    | FIX_TrdType_TTrade 
    | FIX_TrdType_BunchedTrade 
    | FIX_TrdType_WeightedAveragePriceTrade 
    | FIX_TrdType_PriorReferencePriceTrade 
    | FIX_TrdType_AfterHoursTrade 
    | FIX_TrdType_Transfer 
    | FIX_TrdType_LateTrade 
    | FIX_TrdType_LateBunchedTrade 
    | FIX_TrdType_RegularTrade 
    | FIX_TrdType_EFP 
;;

(** Indicates whether or not message is being sent as a result of a subscription request or not.*)
type fix_unsolicitedindicator =
    | FIX_UnsolicitedIndicator_MessageIsBeingSentAsAResultOfAPriorRequest 
    | FIX_UnsolicitedIndicator_MessageIsBeingSentUnsolicited 
;;

(** Urgency flag*)
type fix_urgency =
    | FIX_Urgency_Flash 
    | FIX_Urgency_Background 
    | FIX_Urgency_Normal 
;;

(** Indicates the action required by a User Request Message*)
type fix_userrequesttype =
    | FIX_UserRequestType_RequestIndividualUserStatus 
    | FIX_UserRequestType_LogOffUser 
    | FIX_UserRequestType_LogOnUser 
    | FIX_UserRequestType_ChangePasswordForUser 
;;

(** Indicates the status of a user*)
type fix_userstatus =
    | FIX_UserStatus_UserNotRecognised 
    | FIX_UserStatus_Other 
    | FIX_UserStatus_PasswordChanged 
    | FIX_UserStatus_NotLoggedIn 
    | FIX_UserStatus_LoggedIn 
    | FIX_UserStatus_PasswordIncorrect 
;;

(** Indicates if the order is currently being worked. Applicable only for OrdStatus = "New". For open outcry markets this indicates that the order is being worked in the crowd. For electronic markets it indicates that the order has transitioned from a contingent order to a market order.*)
type fix_workingindicator =
    | FIX_WorkingIndicator_Working 
    | FIX_WorkingIndicator_NotWorking 
;;

(** Type of yield*)
type fix_yieldtype =
    | FIX_YieldType_AfterTaxYield 
    | FIX_YieldType_YieldToNextRefund 
    | FIX_YieldType_SemiAnnualYield 
    | FIX_YieldType_SimpleYield 
    | FIX_YieldType_GvntEquivalentYield 
    | FIX_YieldType_YieldToLongestAverageLife 
    | FIX_YieldType_ClosingYieldMostRecentQuarter 
    | FIX_YieldType_YieldToShortestAverageLife 
    | FIX_YieldType_YieldToNextCall 
    | FIX_YieldType_YieldToNextPut 
    | FIX_YieldType_TrueGrossYield 
    | FIX_YieldType_InverseFloaterBondYield 
    | FIX_YieldType_YieldToMaturity 
    | FIX_YieldType_YieldWithInflationAssumption 
    | FIX_YieldType_TaxEquivalentYield 
    | FIX_YieldType_YieldToTenderDate 
    | FIX_YieldType_YieldToWorst 
    | FIX_YieldType_ClosingYield 
    | FIX_YieldType_YieldAtIssue 
    | FIX_YieldType_YieldToAverageMaturity 
    | FIX_YieldType_BookYield 
    | FIX_YieldType_CurrentYield 
    | FIX_YieldType_ClosingYieldMostRecentMonth 
    | FIX_YieldType_ClosingYieldMostRecentYear 
    | FIX_YieldType_CompoundYield 
    | FIX_YieldType_YieldChangeSinceClose 
    | FIX_YieldType_OpenAverageYield 
    | FIX_YieldType_MarkToMarketYield 
    | FIX_YieldType_YieldValueOf132 
    | FIX_YieldType_TrueYield 
    | FIX_YieldType_AnnualYield 
    | FIX_YieldType_PreviousCloseYield 
    | FIX_YieldType_MostRecentClosingYield 
    | FIX_YieldType_ProceedsYield 
;;

type fix_week =
    | FIX_week_w1 
    | FIX_week_w2 
    | FIX_week_w3 
    | FIX_week_noweek 
    | FIX_week_w4 
    | FIX_week_w5 
;;

(** three letter code from ISO4217*)
type fix_currency =
    | FIX_Currency_EUR 
    | FIX_Currency_CHF 
    | FIX_Currency_USD 
    | FIX_Currency_GBP 
;;

(** 2 letter country code - ISO 3166 *)
type fix_country =
    | FIX_Country_DE 
    | FIX_Country_GB 
    | FIX_Country_US 
;;

(** ISO 10383 Market Identifier Code*)
type fix_exchange =
    | FIX_Exchange_XSHG 
    | FIX_Exchange_SHSC 
    | FIX_Exchange_XNYS 
    | FIX_Exchange_XJAS 
    | FIX_Exchange_XLON 
    | FIX_Exchange_XNAS 
;;
