(* Aesthetic Integration copyright 2018 *)
open Full_app_tags;;

let encode_app_msg_tag (d)  =
    (match d with
        | Full_Msg_ExecutionReport_Tag -> "8"
        | Full_Msg_NewOrderSingle_Tag -> "D"
    )
;;

let encode_app_field_tag (d)  =
    (match d with
        | Full_Field_OrderID_Tag -> ("37")
        | Full_Field_SecondaryOrderID_Tag -> ("198")
        | Full_Field_SecondaryClOrdID_Tag -> ("526")
        | Full_Field_SecondaryExecID_Tag -> ("527")
        | Full_Field_ClOrdID_Tag -> ("11")
        | Full_Field_OrigClOrdID_Tag -> ("41")
        | Full_Field_ClOrdLinkID_Tag -> ("583")
        | Full_Field_QuoteRespID_Tag -> ("693")
        | Full_Field_OrdStatusReqID_Tag -> ("790")
        | Full_Field_MassStatusReqID_Tag -> ("584")
        | Full_Field_TotNumReports_Tag -> ("911")
        | Full_Field_LastRptRequested_Tag -> ("912")
        | Full_Field_TradeOriginationDate_Tag -> ("229")
        | Full_Field_ListID_Tag -> ("66")
        | Full_Field_CrossID_Tag -> ("548")
        | Full_Field_OrigCrossID_Tag -> ("551")
        | Full_Field_CrossType_Tag -> ("549")
        | Full_Field_ExecID_Tag -> ("17")
        | Full_Field_ExecRefID_Tag -> ("19")
        | Full_Field_ExecType_Tag -> ("150")
        | Full_Field_OrdStatus_Tag -> ("39")
        | Full_Field_WorkingIndicator_Tag -> ("636")
        | Full_Field_OrdRejReason_Tag -> ("103")
        | Full_Field_ExecRestatementReason_Tag -> ("378")
        | Full_Field_Account_Tag -> ("1")
        | Full_Field_AcctIDSource_Tag -> ("660")
        | Full_Field_AccountType_Tag -> ("581")
        | Full_Field_DayBookingInst_Tag -> ("589")
        | Full_Field_BookingUnit_Tag -> ("590")
        | Full_Field_PreallocMethod_Tag -> ("591")
        | Full_Field_SettlType_Tag -> ("63")
        | Full_Field_SettlDate_Tag -> ("64")
        | Full_Field_CashMargin_Tag -> ("544")
        | Full_Field_ClearingFeeIndicator_Tag -> ("635")
        | Full_Field_Side_Tag -> ("54")
        | Full_Field_QtyType_Tag -> ("854")
        | Full_Field_OrdType_Tag -> ("40")
        | Full_Field_PriceType_Tag -> ("423")
        | Full_Field_Price_Tag -> ("44")
        | Full_Field_StopPx_Tag -> ("99")
        | Full_Field_PeggedPrice_Tag -> ("839")
        | Full_Field_DiscretionPrice_Tag -> ("845")
        | Full_Field_TargetStrategy_Tag -> ("847")
        | Full_Field_TargetStrategyParameters_Tag -> ("848")
        | Full_Field_ParticipationRate_Tag -> ("849")
        | Full_Field_TargetStrategyPerformance_Tag -> ("850")
        | Full_Field_Currency_Tag -> ("15")
        | Full_Field_ComplianceID_Tag -> ("376")
        | Full_Field_SolicitedFlag_Tag -> ("377")
        | Full_Field_TimeInForce_Tag -> ("59")
        | Full_Field_EffectiveTime_Tag -> ("168")
        | Full_Field_ExpireDate_Tag -> ("432")
        | Full_Field_ExpireTime_Tag -> ("126")
        | Full_Field_ExecInst_Tag -> ("18")
        | Full_Field_OrderCapacity_Tag -> ("528")
        | Full_Field_OrderRestrictions_Tag -> ("529")
        | Full_Field_CustOrderCapacity_Tag -> ("582")
        | Full_Field_LastQty_Tag -> ("32")
        | Full_Field_UnderlyingLastQty_Tag -> ("652")
        | Full_Field_LastPx_Tag -> ("31")
        | Full_Field_UnderlyingLastPx_Tag -> ("651")
        | Full_Field_LastParPx_Tag -> ("669")
        | Full_Field_LastSpotRate_Tag -> ("194")
        | Full_Field_LastForwardPoints_Tag -> ("195")
        | Full_Field_LastMkt_Tag -> ("30")
        | Full_Field_TradingSessionID_Tag -> ("336")
        | Full_Field_TradingSessionSubID_Tag -> ("625")
        | Full_Field_TimeBracket_Tag -> ("943")
        | Full_Field_LastCapacity_Tag -> ("29")
        | Full_Field_LeavesQty_Tag -> ("151")
        | Full_Field_CumQty_Tag -> ("14")
        | Full_Field_AvgPx_Tag -> ("6")
        | Full_Field_DayOrderQty_Tag -> ("424")
        | Full_Field_DayCumQty_Tag -> ("425")
        | Full_Field_DayAvgPx_Tag -> ("426")
        | Full_Field_GTBookingInst_Tag -> ("427")
        | Full_Field_TradeDate_Tag -> ("75")
        | Full_Field_TransactTime_Tag -> ("60")
        | Full_Field_ReportToExch_Tag -> ("113")
        | Full_Field_GrossTradeAmt_Tag -> ("381")
        | Full_Field_NumDaysInterest_Tag -> ("157")
        | Full_Field_ExDate_Tag -> ("230")
        | Full_Field_AccruedInterestRate_Tag -> ("158")
        | Full_Field_AccruedInterestAmt_Tag -> ("159")
        | Full_Field_InterestAtMaturity_Tag -> ("738")
        | Full_Field_EndAccruedInterestAmt_Tag -> ("920")
        | Full_Field_StartCash_Tag -> ("921")
        | Full_Field_EndCash_Tag -> ("922")
        | Full_Field_TradedFlatSwitch_Tag -> ("258")
        | Full_Field_BasisFeatureDate_Tag -> ("259")
        | Full_Field_BasisFeaturePrice_Tag -> ("260")
        | Full_Field_Concession_Tag -> ("238")
        | Full_Field_TotalTakedown_Tag -> ("237")
        | Full_Field_NetMoney_Tag -> ("118")
        | Full_Field_SettlCurrAmt_Tag -> ("119")
        | Full_Field_SettlCurrency_Tag -> ("120")
        | Full_Field_SettlCurrFxRate_Tag -> ("155")
        | Full_Field_SettlCurrFxRateCalc_Tag -> ("156")
        | Full_Field_HandlInst_Tag -> ("21")
        | Full_Field_MinQty_Tag -> ("110")
        | Full_Field_MaxFloor_Tag -> ("111")
        | Full_Field_PositionEffect_Tag -> ("77")
        | Full_Field_MaxShow_Tag -> ("210")
        | Full_Field_BookingType_Tag -> ("775")
        | Full_Field_Text_Tag -> ("58")
        | Full_Field_EncodedTextLen_Tag -> ("354")
        | Full_Field_EncodedText_Tag -> ("355")
        | Full_Field_SettlDate2_Tag -> ("193")
        | Full_Field_OrderQty2_Tag -> ("192")
        | Full_Field_LastForwardPoints2_Tag -> ("641")
        | Full_Field_MultiLegReportingType_Tag -> ("442")
        | Full_Field_CancellationRights_Tag -> ("480")
        | Full_Field_MoneyLaunderingStatus_Tag -> ("481")
        | Full_Field_RegistID_Tag -> ("513")
        | Full_Field_Designation_Tag -> ("494")
        | Full_Field_TransBkdTime_Tag -> ("483")
        | Full_Field_ExecValuationPoint_Tag -> ("515")
        | Full_Field_ExecPriceType_Tag -> ("484")
        | Full_Field_ExecPriceAdjustment_Tag -> ("485")
        | Full_Field_PriorityIndicator_Tag -> ("638")
        | Full_Field_PriceImprovement_Tag -> ("639")
        | Full_Field_LastLiquidityInd_Tag -> ("851")
        | Full_Field_CopyMsgIndicator_Tag -> ("797")
        | Full_Field_NoPartyIDs_Tag -> ("453")
        | Full_Field_PartyID_Tag -> ("448")
        | Full_Field_PartyIDSource_Tag -> ("447")
        | Full_Field_PartyRole_Tag -> ("452")
        | Full_Field_NoPartySubIDs_Tag -> ("802")
        | Full_Field_PartySubID_Tag -> ("523")
        | Full_Field_PartySubIDType_Tag -> ("803")
        | Full_Field_NoContraBrokers_Tag -> ("382")
        | Full_Field_ContraBroker_Tag -> ("375")
        | Full_Field_ContraTrader_Tag -> ("337")
        | Full_Field_ContraTradeQty_Tag -> ("437")
        | Full_Field_ContraTradeTime_Tag -> ("438")
        | Full_Field_ContraLegRefID_Tag -> ("655")
        | Full_Field_Symbol_Tag -> ("55")
        | Full_Field_SymbolSfx_Tag -> ("65")
        | Full_Field_SecurityID_Tag -> ("48")
        | Full_Field_SecurityIDSource_Tag -> ("22")
        | Full_Field_Product_Tag -> ("460")
        | Full_Field_CFICode_Tag -> ("461")
        | Full_Field_SecurityType_Tag -> ("167")
        | Full_Field_SecuritySubType_Tag -> ("762")
        | Full_Field_MaturityMonthYear_Tag -> ("200")
        | Full_Field_MaturityDate_Tag -> ("541")
        | Full_Field_CouponPaymentDate_Tag -> ("224")
        | Full_Field_IssueDate_Tag -> ("225")
        | Full_Field_RepoCollateralSecurityType_Tag -> ("239")
        | Full_Field_RepurchaseTerm_Tag -> ("226")
        | Full_Field_RepurchaseRate_Tag -> ("227")
        | Full_Field_Factor_Tag -> ("228")
        | Full_Field_CreditRating_Tag -> ("255")
        | Full_Field_InstrRegistry_Tag -> ("543")
        | Full_Field_CountryOfIssue_Tag -> ("470")
        | Full_Field_StateOrProvinceOfIssue_Tag -> ("471")
        | Full_Field_LocaleOfIssue_Tag -> ("472")
        | Full_Field_RedemptionDate_Tag -> ("240")
        | Full_Field_StrikePrice_Tag -> ("202")
        | Full_Field_StrikeCurrency_Tag -> ("947")
        | Full_Field_OptAttribute_Tag -> ("206")
        | Full_Field_ContractMultiplier_Tag -> ("231")
        | Full_Field_CouponRate_Tag -> ("223")
        | Full_Field_SecurityExchange_Tag -> ("207")
        | Full_Field_Issuer_Tag -> ("106")
        | Full_Field_EncodedIssuerLen_Tag -> ("348")
        | Full_Field_EncodedIssuer_Tag -> ("349")
        | Full_Field_SecurityDesc_Tag -> ("107")
        | Full_Field_EncodedSecurityDescLen_Tag -> ("350")
        | Full_Field_EncodedSecurityDesc_Tag -> ("351")
        | Full_Field_Pool_Tag -> ("691")
        | Full_Field_ContractSettlMonth_Tag -> ("667")
        | Full_Field_CPProgram_Tag -> ("875")
        | Full_Field_CPRegType_Tag -> ("876")
        | Full_Field_DatedDate_Tag -> ("873")
        | Full_Field_InterestAccrualDate_Tag -> ("874")
        | Full_Field_NoSecurityAltID_Tag -> ("454")
        | Full_Field_SecurityAltID_Tag -> ("455")
        | Full_Field_SecurityAltIDSource_Tag -> ("456")
        | Full_Field_NoEvents_Tag -> ("864")
        | Full_Field_EventType_Tag -> ("865")
        | Full_Field_EventDate_Tag -> ("866")
        | Full_Field_EventPx_Tag -> ("867")
        | Full_Field_EventText_Tag -> ("868")
        | Full_Field_AgreementDesc_Tag -> ("913")
        | Full_Field_AgreementID_Tag -> ("914")
        | Full_Field_AgreementDate_Tag -> ("915")
        | Full_Field_AgreementCurrency_Tag -> ("918")
        | Full_Field_TerminationType_Tag -> ("788")
        | Full_Field_StartDate_Tag -> ("916")
        | Full_Field_EndDate_Tag -> ("917")
        | Full_Field_DeliveryType_Tag -> ("919")
        | Full_Field_MarginRatio_Tag -> ("898")
        | Full_Field_NoUnderlyings_Tag -> ("711")
        | Full_Field_UnderlyingSymbol_Tag -> ("311")
        | Full_Field_UnderlyingSymbolSfx_Tag -> ("312")
        | Full_Field_UnderlyingSecurityID_Tag -> ("309")
        | Full_Field_UnderlyingSecurityIDSource_Tag -> ("305")
        | Full_Field_UnderlyingProduct_Tag -> ("462")
        | Full_Field_UnderlyingCFICode_Tag -> ("463")
        | Full_Field_UnderlyingSecurityType_Tag -> ("310")
        | Full_Field_UnderlyingSecuritySubType_Tag -> ("763")
        | Full_Field_UnderlyingMaturityMonthYear_Tag -> ("313")
        | Full_Field_UnderlyingMaturityDate_Tag -> ("542")
        | Full_Field_UnderlyingCouponPaymentDate_Tag -> ("241")
        | Full_Field_UnderlyingIssueDate_Tag -> ("242")
        | Full_Field_UnderlyingRepoCollateralSecurityType_Tag -> ("243")
        | Full_Field_UnderlyingRepurchaseTerm_Tag -> ("244")
        | Full_Field_UnderlyingRepurchaseRate_Tag -> ("245")
        | Full_Field_UnderlyingFactor_Tag -> ("246")
        | Full_Field_UnderlyingCreditRating_Tag -> ("256")
        | Full_Field_UnderlyingInstrRegistry_Tag -> ("595")
        | Full_Field_UnderlyingCountryOfIssue_Tag -> ("592")
        | Full_Field_UnderlyingStateOrProvinceOfIssue_Tag -> ("593")
        | Full_Field_UnderlyingLocaleOfIssue_Tag -> ("594")
        | Full_Field_UnderlyingRedemptionDate_Tag -> ("247")
        | Full_Field_UnderlyingStrikePrice_Tag -> ("316")
        | Full_Field_UnderlyingStrikeCurrency_Tag -> ("941")
        | Full_Field_UnderlyingOptAttribute_Tag -> ("317")
        | Full_Field_UnderlyingContractMultiplier_Tag -> ("436")
        | Full_Field_UnderlyingCouponRate_Tag -> ("435")
        | Full_Field_UnderlyingSecurityExchange_Tag -> ("308")
        | Full_Field_UnderlyingIssuer_Tag -> ("306")
        | Full_Field_EncodedUnderlyingIssuerLen_Tag -> ("362")
        | Full_Field_EncodedUnderlyingIssuer_Tag -> ("363")
        | Full_Field_UnderlyingSecurityDesc_Tag -> ("307")
        | Full_Field_EncodedUnderlyingSecurityDescLen_Tag -> ("364")
        | Full_Field_EncodedUnderlyingSecurityDesc_Tag -> ("365")
        | Full_Field_UnderlyingCPProgram_Tag -> ("877")
        | Full_Field_UnderlyingCPRegType_Tag -> ("878")
        | Full_Field_UnderlyingCurrency_Tag -> ("318")
        | Full_Field_UnderlyingQty_Tag -> ("879")
        | Full_Field_UnderlyingPx_Tag -> ("810")
        | Full_Field_UnderlyingDirtyPrice_Tag -> ("882")
        | Full_Field_UnderlyingEndPrice_Tag -> ("883")
        | Full_Field_UnderlyingStartValue_Tag -> ("884")
        | Full_Field_UnderlyingCurrentValue_Tag -> ("885")
        | Full_Field_UnderlyingEndValue_Tag -> ("886")
        | Full_Field_NoUnderlyingSecurityAltID_Tag -> ("457")
        | Full_Field_UnderlyingSecurityAltID_Tag -> ("458")
        | Full_Field_UnderlyingSecurityAltIDSource_Tag -> ("459")
        | Full_Field_NoUnderlyingStips_Tag -> ("887")
        | Full_Field_UnderlyingStipType_Tag -> ("888")
        | Full_Field_UnderlyingStipValue_Tag -> ("889")
        | Full_Field_NoStipulations_Tag -> ("232")
        | Full_Field_StipulationType_Tag -> ("233")
        | Full_Field_StipulationValue_Tag -> ("234")
        | Full_Field_OrderQty_Tag -> ("38")
        | Full_Field_CashOrderQty_Tag -> ("152")
        | Full_Field_OrderPercent_Tag -> ("516")
        | Full_Field_RoundingDirection_Tag -> ("468")
        | Full_Field_RoundingModulus_Tag -> ("469")
        | Full_Field_PegOffsetValue_Tag -> ("211")
        | Full_Field_PegMoveType_Tag -> ("835")
        | Full_Field_PegOffsetType_Tag -> ("836")
        | Full_Field_PegLimitType_Tag -> ("837")
        | Full_Field_PegRoundDirection_Tag -> ("838")
        | Full_Field_PegScope_Tag -> ("840")
        | Full_Field_DiscretionInst_Tag -> ("388")
        | Full_Field_DiscretionOffsetValue_Tag -> ("389")
        | Full_Field_DiscretionMoveType_Tag -> ("841")
        | Full_Field_DiscretionOffsetType_Tag -> ("842")
        | Full_Field_DiscretionLimitType_Tag -> ("843")
        | Full_Field_DiscretionRoundDirection_Tag -> ("844")
        | Full_Field_DiscretionScope_Tag -> ("846")
        | Full_Field_Commission_Tag -> ("12")
        | Full_Field_CommType_Tag -> ("13")
        | Full_Field_CommCurrency_Tag -> ("479")
        | Full_Field_FundRenewWaiv_Tag -> ("497")
        | Full_Field_Spread_Tag -> ("218")
        | Full_Field_BenchmarkCurveCurrency_Tag -> ("220")
        | Full_Field_BenchmarkCurveName_Tag -> ("221")
        | Full_Field_BenchmarkCurvePoint_Tag -> ("222")
        | Full_Field_BenchmarkPrice_Tag -> ("662")
        | Full_Field_BenchmarkPriceType_Tag -> ("663")
        | Full_Field_BenchmarkSecurityID_Tag -> ("699")
        | Full_Field_BenchmarkSecurityIDSource_Tag -> ("761")
        | Full_Field_YieldType_Tag -> ("235")
        | Full_Field_Yield_Tag -> ("236")
        | Full_Field_YieldCalcDate_Tag -> ("701")
        | Full_Field_YieldRedemptionDate_Tag -> ("696")
        | Full_Field_YieldRedemptionPrice_Tag -> ("697")
        | Full_Field_YieldRedemptionPriceType_Tag -> ("698")
        | Full_Field_NoContAmts_Tag -> ("518")
        | Full_Field_ContAmtType_Tag -> ("519")
        | Full_Field_ContAmtValue_Tag -> ("520")
        | Full_Field_ContAmtCurr_Tag -> ("521")
        | Full_Field_NoLegs_Tag -> ("555")
        | Full_Field_LegQty_Tag -> ("687")
        | Full_Field_LegSwapType_Tag -> ("690")
        | Full_Field_LegPositionEffect_Tag -> ("564")
        | Full_Field_LegCoveredOrUncovered_Tag -> ("565")
        | Full_Field_LegRefID_Tag -> ("654")
        | Full_Field_LegPrice_Tag -> ("566")
        | Full_Field_LegSettlType_Tag -> ("587")
        | Full_Field_LegSettlDate_Tag -> ("588")
        | Full_Field_LegLastPx_Tag -> ("637")
        | Full_Field_LegSymbol_Tag -> ("600")
        | Full_Field_LegSymbolSfx_Tag -> ("601")
        | Full_Field_LegSecurityID_Tag -> ("602")
        | Full_Field_LegSecurityIDSource_Tag -> ("603")
        | Full_Field_LegProduct_Tag -> ("607")
        | Full_Field_LegCFICode_Tag -> ("608")
        | Full_Field_LegSecurityType_Tag -> ("609")
        | Full_Field_LegSecuritySubType_Tag -> ("764")
        | Full_Field_LegMaturityMonthYear_Tag -> ("610")
        | Full_Field_LegMaturityDate_Tag -> ("611")
        | Full_Field_LegCouponPaymentDate_Tag -> ("248")
        | Full_Field_LegIssueDate_Tag -> ("249")
        | Full_Field_LegRepoCollateralSecurityType_Tag -> ("250")
        | Full_Field_LegRepurchaseTerm_Tag -> ("251")
        | Full_Field_LegRepurchaseRate_Tag -> ("252")
        | Full_Field_LegFactor_Tag -> ("253")
        | Full_Field_LegCreditRating_Tag -> ("257")
        | Full_Field_LegInstrRegistry_Tag -> ("599")
        | Full_Field_LegCountryOfIssue_Tag -> ("596")
        | Full_Field_LegStateOrProvinceOfIssue_Tag -> ("597")
        | Full_Field_LegLocaleOfIssue_Tag -> ("598")
        | Full_Field_LegRedemptionDate_Tag -> ("254")
        | Full_Field_LegStrikePrice_Tag -> ("612")
        | Full_Field_LegStrikeCurrency_Tag -> ("942")
        | Full_Field_LegOptAttribute_Tag -> ("613")
        | Full_Field_LegContractMultiplier_Tag -> ("614")
        | Full_Field_LegCouponRate_Tag -> ("615")
        | Full_Field_LegSecurityExchange_Tag -> ("616")
        | Full_Field_LegIssuer_Tag -> ("617")
        | Full_Field_EncodedLegIssuerLen_Tag -> ("618")
        | Full_Field_EncodedLegIssuer_Tag -> ("619")
        | Full_Field_LegSecurityDesc_Tag -> ("620")
        | Full_Field_EncodedLegSecurityDescLen_Tag -> ("621")
        | Full_Field_EncodedLegSecurityDesc_Tag -> ("622")
        | Full_Field_LegRatioQty_Tag -> ("623")
        | Full_Field_LegSide_Tag -> ("624")
        | Full_Field_LegCurrency_Tag -> ("556")
        | Full_Field_LegPool_Tag -> ("740")
        | Full_Field_LegDatedDate_Tag -> ("739")
        | Full_Field_LegContractSettlMonth_Tag -> ("955")
        | Full_Field_LegInterestAccrualDate_Tag -> ("956")
        | Full_Field_NoLegSecurityAltID_Tag -> ("604")
        | Full_Field_LegSecurityAltID_Tag -> ("605")
        | Full_Field_LegSecurityAltIDSource_Tag -> ("606")
        | Full_Field_NoLegStipulations_Tag -> ("683")
        | Full_Field_LegStipulationType_Tag -> ("688")
        | Full_Field_LegStipulationValue_Tag -> ("689")
        | Full_Field_NoNestedPartyIDs_Tag -> ("539")
        | Full_Field_NestedPartyID_Tag -> ("524")
        | Full_Field_NestedPartyIDSource_Tag -> ("525")
        | Full_Field_NestedPartyRole_Tag -> ("538")
        | Full_Field_NoNestedPartySubIDs_Tag -> ("804")
        | Full_Field_NestedPartySubID_Tag -> ("545")
        | Full_Field_NestedPartySubIDType_Tag -> ("805")
        | Full_Field_NoMiscFees_Tag -> ("136")
        | Full_Field_MiscFeeAmt_Tag -> ("137")
        | Full_Field_MiscFeeCurr_Tag -> ("138")
        | Full_Field_MiscFeeType_Tag -> ("139")
        | Full_Field_MiscFeeBasis_Tag -> ("891")
        | Full_Field_AllocID_Tag -> ("70")
        | Full_Field_ExDestination_Tag -> ("100")
        | Full_Field_ProcessCode_Tag -> ("81")
        | Full_Field_PrevClosePx_Tag -> ("140")
        | Full_Field_LocateReqd_Tag -> ("114")
        | Full_Field_IOIID_Tag -> ("23")
        | Full_Field_QuoteID_Tag -> ("117")
        | Full_Field_ForexReq_Tag -> ("121")
        | Full_Field_Price2_Tag -> ("640")
        | Full_Field_CoveredOrUncovered_Tag -> ("203")
        | Full_Field_NoAllocs_Tag -> ("78")
        | Full_Field_AllocAccount_Tag -> ("79")
        | Full_Field_AllocAcctIDSource_Tag -> ("661")
        | Full_Field_AllocSettlCurrency_Tag -> ("736")
        | Full_Field_IndividualAllocID_Tag -> ("467")
        | Full_Field_AllocQty_Tag -> ("80")
        | Full_Field_NoTradingSessions_Tag -> ("386")
    )
;;