(* Aesthetic Integration copyright 2018 *)
open Full_app_tags;;

let encode_app_msg_tag (d)  =
    (match d with
        | Full_Msg_OrderSingle_Tag -> "D"
        | Full_Msg_OrderCancelReplaceRequest_Tag -> "G"
        | Full_Msg_OrderCancelRequest_Tag -> "F"
        | Full_Msg_OrderMassCancelRequest_Tag -> "q"
        | Full_Msg_ExecutionReport_Tag -> "8"
        | Full_Msg_OrderCancelReject_Tag -> "9"
        | Full_Msg_OrderMassCancelReport_Tag -> "r"
    )
;;

let encode_app_field_tag (d)  =
    (match d with
        | Full_Field_ClOrdID_Tag -> ("11")
        | Full_Field_ClientID_Tag -> ("109")
        | Full_Field_ExecBroker_Tag -> ("76")
        | Full_Field_Account_Tag -> ("1")
        | Full_Field_SettlmntTyp_Tag -> ("63")
        | Full_Field_FutSettDate_Tag -> ("64")
        | Full_Field_HandlInst_Tag -> ("21")
        | Full_Field_ExecInst_Tag -> ("18")
        | Full_Field_MinQty_Tag -> ("110")
        | Full_Field_MaxFloor_Tag -> ("111")
        | Full_Field_ExDestination_Tag -> ("100")
        | Full_Field_ProcessCode_Tag -> ("81")
        | Full_Field_Symbol_Tag -> ("55")
        | Full_Field_SymbolSfx_Tag -> ("65")
        | Full_Field_SecurityID_Tag -> ("48")
        | Full_Field_IDSource_Tag -> ("22")
        | Full_Field_SecurityType_Tag -> ("167")
        | Full_Field_MaturityMonthYear_Tag -> ("200")
        | Full_Field_MaturityDay_Tag -> ("205")
        | Full_Field_PutOrCall_Tag -> ("201")
        | Full_Field_StrikePrice_Tag -> ("202")
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
        | Full_Field_PrevClosePx_Tag -> ("140")
        | Full_Field_Side_Tag -> ("54")
        | Full_Field_LocateReqd_Tag -> ("114")
        | Full_Field_TransactTime_Tag -> ("60")
        | Full_Field_OrderQty_Tag -> ("38")
        | Full_Field_CashOrderQty_Tag -> ("152")
        | Full_Field_OrdType_Tag -> ("40")
        | Full_Field_Price_Tag -> ("44")
        | Full_Field_StopPx_Tag -> ("99")
        | Full_Field_Currency_Tag -> ("15")
        | Full_Field_ComplianceID_Tag -> ("376")
        | Full_Field_SolicitedFlag_Tag -> ("377")
        | Full_Field_IOIid_Tag -> ("23")
        | Full_Field_QuoteID_Tag -> ("117")
        | Full_Field_TimeInForce_Tag -> ("59")
        | Full_Field_EffectiveTime_Tag -> ("168")
        | Full_Field_ExpireDate_Tag -> ("432")
        | Full_Field_ExpireTime_Tag -> ("126")
        | Full_Field_GTBookingInst_Tag -> ("427")
        | Full_Field_Commission_Tag -> ("12")
        | Full_Field_CommType_Tag -> ("13")
        | Full_Field_Rule80A_Tag -> ("47")
        | Full_Field_ForexReq_Tag -> ("121")
        | Full_Field_SettlCurrency_Tag -> ("120")
        | Full_Field_Text_Tag -> ("58")
        | Full_Field_EncodedTextLen_Tag -> ("354")
        | Full_Field_EncodedText_Tag -> ("355")
        | Full_Field_FutSettDate2_Tag -> ("193")
        | Full_Field_OrderQty2_Tag -> ("192")
        | Full_Field_OpenClose_Tag -> ("77")
        | Full_Field_CoveredOrUncovered_Tag -> ("203")
        | Full_Field_CustomerOrFirm_Tag -> ("204")
        | Full_Field_MaxShow_Tag -> ("210")
        | Full_Field_PegDifference_Tag -> ("211")
        | Full_Field_DiscretionInst_Tag -> ("388")
        | Full_Field_DiscretionOffset_Tag -> ("389")
        | Full_Field_ClearingFirm_Tag -> ("439")
        | Full_Field_ClearingAccount_Tag -> ("440")
        | Full_Field_TechnicalOrdType_Tag -> ("9941")
        | Full_Field_BookIndicator_Tag -> ("10078")
        | Full_Field_MIC_Tag -> ("9949")
        | Full_Field_BrokerPrioritization_Tag -> ("10079")
        | Full_Field_DEAIndicator_Tag -> ("21017")
        | Full_Field_OrderAttributeTypes_Tag -> ("8015")
        | Full_Field_NoAllocs_Tag -> ("78")
        | Full_Field_AllocAccount_Tag -> ("79")
        | Full_Field_AllocShares_Tag -> ("80")
        | Full_Field_NoTradingSessions_Tag -> ("386")
        | Full_Field_TradingSessionID_Tag -> ("336")
        | Full_Field_NoPartyIDs_Tag -> ("453")
        | Full_Field_PartyID_Tag -> ("448")
        | Full_Field_PartyIDSource_Tag -> ("447")
        | Full_Field_PartyRole_Tag -> ("452")
        | Full_Field_NoPartySubIDs_Tag -> ("802")
        | Full_Field_PartySubID_Tag -> ("523")
        | Full_Field_PartySubIDType_Tag -> ("803")
        | Full_Field_NoClearingEntries_Tag -> ("9933")
        | Full_Field_FreeText_Tag -> ("9952")
        | Full_Field_ClearingHandlingType_Tag -> ("9938")
        | Full_Field_OrderID_Tag -> ("37")
        | Full_Field_OrigClOrdID_Tag -> ("41")
        | Full_Field_ListID_Tag -> ("66")
        | Full_Field_SecondaryClOrdID_Tag -> ("526")
        | Full_Field_MassCancelRequestType_Tag -> ("530")
        | Full_Field_TradingSessionSubID_Tag -> ("625")
        | Full_Field_ClassID_Tag -> ("9945")
        | Full_Field_CancelByLocationID_Tag -> ("9960")
        | Full_Field_Product_Tag -> ("460")
        | Full_Field_CFICode_Tag -> ("461")
        | Full_Field_SecuritySubType_Tag -> ("762")
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
        | Full_Field_StrikeCurrency_Tag -> ("947")
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
        | Full_Field_SecondaryOrderID_Tag -> ("198")
        | Full_Field_ExecID_Tag -> ("17")
        | Full_Field_ExecTransType_Tag -> ("20")
        | Full_Field_ExecRefID_Tag -> ("19")
        | Full_Field_ExecType_Tag -> ("150")
        | Full_Field_OrdStatus_Tag -> ("39")
        | Full_Field_OrdRejReason_Tag -> ("103")
        | Full_Field_ExecRestatementReason_Tag -> ("378")
        | Full_Field_LastShares_Tag -> ("32")
        | Full_Field_LastPx_Tag -> ("31")
        | Full_Field_LastSpotRate_Tag -> ("194")
        | Full_Field_LastForwardPoints_Tag -> ("195")
        | Full_Field_LastMkt_Tag -> ("30")
        | Full_Field_LastCapacity_Tag -> ("29")
        | Full_Field_LeavesQty_Tag -> ("151")
        | Full_Field_CumQty_Tag -> ("14")
        | Full_Field_AvgPx_Tag -> ("6")
        | Full_Field_DayOrderQty_Tag -> ("424")
        | Full_Field_DayCumQty_Tag -> ("425")
        | Full_Field_DayAvgPx_Tag -> ("426")
        | Full_Field_TradeDate_Tag -> ("75")
        | Full_Field_ReportToExch_Tag -> ("113")
        | Full_Field_GrossTradeAmt_Tag -> ("381")
        | Full_Field_SettlCurrAmt_Tag -> ("119")
        | Full_Field_SettlCurrFxRate_Tag -> ("155")
        | Full_Field_SettlCurrFxRateCalc_Tag -> ("156")
        | Full_Field_MultiLegReportingType_Tag -> ("442")
        | Full_Field_CrossType_Tag -> ("549")
        | Full_Field_UTPExID_Tag -> ("9731")
        | Full_Field_LiquidityIndicator_Tag -> ("9730")
        | Full_Field_ErrorCode_Tag -> ("9955")
        | Full_Field_IMPTimestamp_Tag -> ("10080")
        | Full_Field_NoContraBrokers_Tag -> ("382")
        | Full_Field_ContraBroker_Tag -> ("375")
        | Full_Field_ContraTrader_Tag -> ("337")
        | Full_Field_ContraTradeQty_Tag -> ("437")
        | Full_Field_ContraTradeTime_Tag -> ("438")
        | Full_Field_ContraLegRefID_Tag -> ("655")
        | Full_Field_CxlRejResponseTo_Tag -> ("434")
        | Full_Field_CxlRejReason_Tag -> ("102")
        | Full_Field_MassCancelResponse_Tag -> ("531")
        | Full_Field_MassCancelRejectReason_Tag -> ("532")
        | Full_Field_TotalAffectedOrders_Tag -> ("533")
        | Full_Field_NoAffectedOrders_Tag -> ("534")
        | Full_Field_AffectedOrderID_Tag -> ("535")
        | Full_Field_AffectedSecondaryOrderID_Tag -> ("536")
    )
;;
