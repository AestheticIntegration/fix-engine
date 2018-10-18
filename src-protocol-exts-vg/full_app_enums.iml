
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_app_enums.ml

*)



(** Tag 423: http://www.onixs.biz/fix-dictionary/4.4/tagNum_423.html *)
type fix_pricetype = 
    | FIX_Price_Percentage
    | FIX_Price_PerUnit 
    | FIX_Price_FixedAmount
    | FIX_Price_Discount
    | FIX_Price_Premium
    | FIX_Price_Spread
    | FIX_Price_TEDPrice
    | FIX_Price_TEDYield
    | FIX_Price_Yield
;;

(** CommType: Tag 13 -  http://www.onixs.biz/fix-dictionary/4.4/tagNum_13.html *)
type fix_commtype = 
    | FIX_CommType_PerUnit
    | FIX_CommType_Percentage
    | FIX_CommType_Absolute
    | FIX_CommType_CashDiscount
    | FIX_CommType_EnhancedUnits
;;

(** Tag 39: http://www.onixs.biz/fix-dictionary/4.4/tagNum_39.html *)
type fix_ordstatus = 
    | FIX_Ord_Status_New
    | FIX_Ord_Status_PartiallyFilled
    | FIX_Ord_Status_Filled
    | FIX_Ord_Status_DoneForDay
    | FIX_Ord_Status_Canceled
    | FIX_Ord_Status_Replaced
    | FIX_Ord_Status_PendingCancel
    | FIX_Ord_Status_Stopped
    | FIX_Ord_Status_Rejected
    | FIX_Ord_Status_Suspended
    | FIX_Ord_Status_PendingNew
    | FIX_Ord_Status_Calculated
    | FIX_Ord_Status_Expired
    | FIX_Ord_Status_AcceptedForBidding
    | FIX_Ord_Status_PendingReplace
;;


type fix_timeinforce =
    | FIX_TimeInForce_Day
    | FIX_TimeInForce_IOC
    | FIX_TimeInForce_OPG
    | FIX_TimeInForce_FOK
    | FIX_TimeInForce_GTK
    | FIX_TimeInForce_GoodTillDate
;;


type fix_execinst = 
    | FIX_ExecInst_NotHeld
    | FIX_ExecInst_Work
    | FIX_ExecInst_GoAlong
    | FIX_ExecInst_OverTheDay
    | FIX_ExecInst_Held
    | FIX_ExecInst_MidpointPeg
    | FIX_ExecInst_MarketPeg
    | FIX_ExecInst_PrimaryPeg
;;


type fix_handlinst =
    | FIX_HandlInst_Automated_NoInt
    | FIX_HandlInst_Automated_Int
    | FIX_HandlInst_Manual
;;


type fix_exectype = 
    | FIX_ExecType_New
    | FIX_ExecType_PartialFill
    | FIX_ExecType_Fill
    | FIX_ExecType_DoneForDay
    | FIX_ExecType_Canceled
    | FIX_ExecType_Replace
    | FIX_ExecType_PendingCancel
    | FIX_ExecType_Stopped
    | FIX_ExecType_Rejected
    | FIX_ExecType_Suspended
    | FIX_ExecType_PendingNew
    | FIX_ExecType_Calculated
;;


type fix_ordertype = 
    | FIX_Ord_Type_Market
    | FIX_Ord_Type_Limit
    | FIX_Ord_Type_Stop
    | FIX_Ord_Type_StopLimit
    | FIX_Ord_Type_MarketOnClose
    | FIX_Ord_Type_WithOrWithout
    | FIX_Ord_Type_LimitOrBetter
    | FIX_Ord_Type_LimitWithOrWithout
    | FIX_Ord_Type_OnBasis
    | FIX_Ord_Type_OnClose
    | FIX_Ord_Type_LimitOnClose
    | FIX_Ord_Type_ForexMarket
    | FIX_Ord_Type_PreviouslyQuoted
    | FIX_Ord_Type_PreviouslyIndicated
    | FIX_Ord_Type_ForexLimit
    | FIX_Ord_Type_ForexSwap
    | FIX_Ord_Type_ForexPreviouslyQuoted
    | FIX_Ord_Type_Funari
    | FIX_Ord_Type_MarketIfTouched
    | FIX_Ord_Type_MarketWithLeftOverAsLimit
    | FIX_Ord_Type_PreviousFundValuationPoint
    | FIX_Ord_Type_NextFundValuationPoint
    | FIX_Ord_Type_Pegged
;;

(** Side *)
type fix_side =
    | FIX_Side_Buy
    | FIX_Side_Sell
    | FIX_Side_BuyMinus
    | FIX_Side_SellPlus
    | FIX_Side_SellShort
    | FIX_Side_SellShortExempt
    | FIX_Side_Undisclosed
    | FIX_Side_Cross
    | FIX_Side_CrossShort
    | FIX_Side_CrossShortExempt
    | FIX_Side_AsDefined
    | FIX_Side_Opposite
    | FIX_Side_Subscribe
    | FIX_Side_Redeem
    | FIX_Side_Lend
    | FIX_Side_Borrow
;;

(** Tag 167 *)
type fix_securitytype =
    | FIX_SecurityType_Future 
    | FIX_SecurityType_Option 
    | FIX_SecurityType_EuroSupranationalCoupons 
    | FIX_SecurityType_FederalAgencyCoupon 
    | FIX_SecurityType_FederalAgencyDiscountNote 
    | FIX_SecurityType_PrivateExportFunding 
    | FIX_SecurityType_USDSupranationalCoupons 
    | FIX_SecurityType_CorporateBond 
    | FIX_SecurityType_CorporatePrivatePlacement 
    | FIX_SecurityType_ConvertibleBond 
    | FIX_SecurityType_DualCurrency 
    | FIX_SecurityType_EuroCorporateBond 
    | FIX_SecurityType_IndexedLinked 
    | FIX_SecurityType_StructuredNotes 
    | FIX_SecurityType_YankeeCorporateBond 
    | FIX_SecurityType_ForeignExchangeContract 
    | FIX_SecurityType_CommonStock 
    | FIX_SecurityType_PreferredStock 
    | FIX_SecurityType_BradyBond 
    | FIX_SecurityType_EuroSovereigns 
    | FIX_SecurityType_USTreasuryBond 
    | FIX_SecurityType_InterestStripFromAnyBondOrNote 
    | FIX_SecurityType_TreasuryInflationProtectedSecurities 
    | FIX_SecurityType_PrincipalStripOfACallableBondOrNote 
    | FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote 
    | FIX_SecurityType_USTreasuryNoteOld 
    | FIX_SecurityType_USTreasuryBillOld 
    | FIX_SecurityType_USTreasuryNote 
    | FIX_SecurityType_USTreasuryBill 
    | FIX_SecurityType_Repurchase 
    | FIX_SecurityType_Forward 
    | FIX_SecurityType_BuySellback 
    | FIX_SecurityType_SecuritiesLoan 
    | FIX_SecurityType_SecuritiesPledge 
    | FIX_SecurityType_TermLoan 
    | FIX_SecurityType_RevolverLoan 
    | FIX_SecurityType_Revolver 
    | FIX_SecurityType_BridgeLoan 
    | FIX_SecurityType_LetterOfCredit 
    | FIX_SecurityType_SwingLineFacility 
    | FIX_SecurityType_DebtorInPossession 
    | FIX_SecurityType_Defaulted 
    | FIX_SecurityType_Withdrawn 
    | FIX_SecurityType_Replaced 
    | FIX_SecurityType_Matured 
    | FIX_SecurityType_Amended 
    | FIX_SecurityType_Retired 
    | FIX_SecurityType_BankersAcceptance 
    | FIX_SecurityType_BankNotes 
    | FIX_SecurityType_BillOfExchanges 
    | FIX_SecurityType_CertificateOfDeposit 
    | FIX_SecurityType_CallLoans 
    | FIX_SecurityType_CommercialPaper 
    | FIX_SecurityType_DepositNotes 
    | FIX_SecurityType_EuroCertificateOfDeposit 
    | FIX_SecurityType_EuroCommercialPaper 
    | FIX_SecurityType_LiquidityNote 
    | FIX_SecurityType_MediumTermNotes 
    | FIX_SecurityType_Overnight 
    | FIX_SecurityType_PromissoryNote 
    | FIX_SecurityType_PlazosFijos 
    | FIX_SecurityType_ShortTermLoanNote 
    | FIX_SecurityType_TimeDeposit 
    | FIX_SecurityType_ExtendedCommNote 
    | FIX_SecurityType_YankeeCertificateOfDeposit 
    | FIX_SecurityType_AssetBackedSecurities 
    | FIX_SecurityType_Corp 
    | FIX_SecurityType_CollateralizedMortgageObligation 
    | FIX_SecurityType_IOETTEMortgage 
    | FIX_SecurityType_MortgageBackedSecurities 
    | FIX_SecurityType_MortgageInterestOnly 
    | FIX_SecurityType_MortgagePrincipalOnly 
    | FIX_SecurityType_MortgagePrivatePlacement 
    | FIX_SecurityType_MiscellaneousPassThrough 
    | FIX_SecurityType_Pfandbriefe 
    | FIX_SecurityType_ToBeAnnounced 
    | FIX_SecurityType_OtherAnticipationNotes 
    | FIX_SecurityType_CertificateOfObligation 
    | FIX_SecurityType_CertificateOfParticipation 
    | FIX_SecurityType_GeneralObligationBonds 
    | FIX_SecurityType_MandatoryTender 
    | FIX_SecurityType_RevenueAnticipationNote 
    | FIX_SecurityType_RevenueBonds 
    | FIX_SecurityType_SpecialAssessment 
    | FIX_SecurityType_SpecialObligation 
    | FIX_SecurityType_SpecialTax 
    | FIX_SecurityType_TaxAnticipationNote 
    | FIX_SecurityType_TaxAllocation 
    | FIX_SecurityType_TaxExemptCommercialPaper 
    | FIX_SecurityType_TaxRevenueAnticipationNote 
    | FIX_SecurityType_VariableRateDemandNote 
    | FIX_SecurityType_Warrant 
    | FIX_SecurityType_MutualFund 
    | FIX_SecurityType_MultilegInstrument 
    | FIX_SecurityType_NoSecurityType 
;;


(** three letter code from ISO4217*)
type fix_currency =
    | FIX_Currency_EUR 
    | FIX_Currency_GBP 
    | FIX_Currency_USD 
;;

(** 2 letter country code - ISO 3166 *)
type fix_country =
    | FIX_Country_DE 
    | FIX_Country_GB 
    | FIX_Country_US 
;;

(** ISO 10383 Market Identifier Code*)
type fix_exchange =
    | FIX_Exchange_XLON 
    | FIX_Exchange_XNYS 
    | FIX_Exchange_XNAS 
    | FIX_Exchange_XJAS 
    | FIX_Exchange_XSHG 
    | FIX_Exchange_SHSC 
;;