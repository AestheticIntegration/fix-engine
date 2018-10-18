
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_app_enums_json.ml
    
*)

open Yojson;;
open Full_app_enums;;



let pricetype_to_string = function 
    | FIX_Price_Percentage                    -> "Percentage"
    | FIX_Price_PerUnit                       -> "PerUnit"
    | FIX_Price_FixedAmount                   -> "FixedAmount"
    | FIX_Price_Discount                      -> "Discount"
    | FIX_Price_Premium                       -> "Premium"
    | FIX_Price_Spread                        -> "Spread"
    | FIX_Price_TEDPrice                      -> "TEDPrice"
    | FIX_Price_TEDYield                      -> "TEDYield"
    | FIX_Price_Yield                         -> "Yield"
;;


let commtype_to_string = function 
    | FIX_CommType_PerUnit                    -> "PerUnit"
    | FIX_CommType_Percentage                 -> "Percentage"
    | FIX_CommType_Absolute                   -> "Absolute"
    | FIX_CommType_CashDiscount               -> "CashDiscount"
    | FIX_CommType_EnhancedUnits              -> "EnhancedUnits"
;;


let ordstatus_to_string = function 
    | FIX_Ord_Status_New                      -> "New"
    | FIX_Ord_Status_PartiallyFilled          -> "PartiallyFilled"
    | FIX_Ord_Status_Filled                   -> "Filled"
    | FIX_Ord_Status_DoneForDay               -> "DoneForDay"
    | FIX_Ord_Status_Canceled                 -> "Canceled"
    | FIX_Ord_Status_Replaced                 -> "Replaced"
    | FIX_Ord_Status_PendingCancel            -> "PendingCancel"
    | FIX_Ord_Status_Stopped                  -> "Stopped"
    | FIX_Ord_Status_Rejected                 -> "Rejected"
    | FIX_Ord_Status_Suspended                -> "Suspended"
    | FIX_Ord_Status_PendingNew               -> "PendingNew"
    | FIX_Ord_Status_Calculated               -> "Calculated"
    | FIX_Ord_Status_Expired                  -> "Expired"
    | FIX_Ord_Status_AcceptedForBidding       -> "AcceptedForBidding"
    | FIX_Ord_Status_PendingReplace           -> "PendingReplace"
;;


let timeinforce_to_string =function 
    | FIX_TimeInForce_Day                     -> "Day"
    | FIX_TimeInForce_IOC                     -> "IOC"
    | FIX_TimeInForce_OPG                     -> "OPG"
    | FIX_TimeInForce_FOK                     -> "FOK"
    | FIX_TimeInForce_GTK                     -> "GTK"
    | FIX_TimeInForce_GoodTillDate            -> "GoodTillDate"
;;


let execinst_to_string = function 
    | FIX_ExecInst_NotHeld                    -> "NotHeld"
    | FIX_ExecInst_Work                       -> "Work"
    | FIX_ExecInst_GoAlong                    -> "GoAlong"
    | FIX_ExecInst_OverTheDay                 -> "OverTheDay"
    | FIX_ExecInst_Held                       -> "Held"
    | FIX_ExecInst_MidpointPeg                -> "MidpointPeg"
    | FIX_ExecInst_MarketPeg                  -> "MarketPeg"
    | FIX_ExecInst_PrimaryPeg                 -> "PrimaryPeg"
;;


let handlinst_to_string =function 
    | FIX_HandlInst_Automated_NoInt           -> "Automated_NoInt"
    | FIX_HandlInst_Automated_Int             -> "Automated_Int"  
    | FIX_HandlInst_Manual                    -> "Manual"         
;;


let exectype_to_string = function 
    | FIX_ExecType_New                        -> "New"
    | FIX_ExecType_PartialFill                -> "PartialFill"
    | FIX_ExecType_Fill                       -> "Fill"
    | FIX_ExecType_DoneForDay                 -> "DoneForDay"
    | FIX_ExecType_Canceled                   -> "Canceled"
    | FIX_ExecType_Replace                    -> "Replace"
    | FIX_ExecType_PendingCancel              -> "PendingCancel"
    | FIX_ExecType_Stopped                    -> "Stopped"
    | FIX_ExecType_Rejected                   -> "Rejected"
    | FIX_ExecType_Suspended                  -> "Suspended"
    | FIX_ExecType_PendingNew                 -> "PendingNew"
    | FIX_ExecType_Calculated                 -> "Calculated"
;;


let ordertype_to_string = function 
    | FIX_Ord_Type_Market                     -> "Market"
    | FIX_Ord_Type_Limit                      -> "Limit"
    | FIX_Ord_Type_Stop                       -> "Stop"
    | FIX_Ord_Type_StopLimit                  -> "StopLimit"
    | FIX_Ord_Type_MarketOnClose              -> "MarketOnClose"
    | FIX_Ord_Type_WithOrWithout              -> "WithOrWithout"
    | FIX_Ord_Type_LimitOrBetter              -> "LimitOrBetter"
    | FIX_Ord_Type_LimitWithOrWithout         -> "LimitWithOrWithout"
    | FIX_Ord_Type_OnBasis                    -> "OnBasis"
    | FIX_Ord_Type_OnClose                    -> "OnClose"
    | FIX_Ord_Type_LimitOnClose               -> "LimitOnClose"
    | FIX_Ord_Type_ForexMarket                -> "ForexMarket"
    | FIX_Ord_Type_PreviouslyQuoted           -> "PreviouslyQuoted"
    | FIX_Ord_Type_PreviouslyIndicated        -> "PreviouslyIndicated"
    | FIX_Ord_Type_ForexLimit                 -> "ForexLimit"
    | FIX_Ord_Type_ForexSwap                  -> "ForexSwap"
    | FIX_Ord_Type_ForexPreviouslyQuoted      -> "ForexPreviouslyQuoted"
    | FIX_Ord_Type_Funari                     -> "Funari"
    | FIX_Ord_Type_MarketIfTouched            -> "MarketIfTouched"
    | FIX_Ord_Type_MarketWithLeftOverAsLimit  -> "MarketWithLeftOverAsLimit"
    | FIX_Ord_Type_PreviousFundValuationPoint -> "PreviousFundValuationPoint"
    | FIX_Ord_Type_NextFundValuationPoint     -> "NextFundValuationPoint"
    | FIX_Ord_Type_Pegged                     -> "Pegged"
;;


let side_to_string = function 
    | FIX_Side_Buy                            -> "Buy"
    | FIX_Side_Sell                           -> "Sell"
    | FIX_Side_BuyMinus                       -> "BuyMinus"
    | FIX_Side_SellPlus                       -> "SellPlus"
    | FIX_Side_SellShort                      -> "SellShort"
    | FIX_Side_SellShortExempt                -> "SellShortExempt"
    | FIX_Side_Undisclosed                    -> "Undisclosed"
    | FIX_Side_Cross                          -> "Cross"
    | FIX_Side_CrossShort                     -> "CrossShort"
    | FIX_Side_CrossShortExempt               -> "CrossShortExempt"
    | FIX_Side_AsDefined                      -> "AsDefined"
    | FIX_Side_Opposite                       -> "Opposite"
    | FIX_Side_Subscribe                      -> "Subscribe"
    | FIX_Side_Redeem                         -> "Redeem"
    | FIX_Side_Lend                           -> "Lend"
    | FIX_Side_Borrow                         -> "Borrow"
;;

(** Tag 167 *)
let securitytype_to_string = function
    | FIX_SecurityType_Future                                   -> "Future"     
    | FIX_SecurityType_Option                                   -> "Option" 
    | FIX_SecurityType_EuroSupranationalCoupons                 -> "EuroSupranationalCoupons" 
    | FIX_SecurityType_FederalAgencyCoupon                      -> "FederalAgencyCoupon" 
    | FIX_SecurityType_FederalAgencyDiscountNote                -> "FederalAgencyDiscountNote" 
    | FIX_SecurityType_PrivateExportFunding                     -> "PrivateExportFunding" 
    | FIX_SecurityType_USDSupranationalCoupons                  -> "USDSupranationalCoupons" 
    | FIX_SecurityType_CorporateBond                            -> "CorporateBond" 
    | FIX_SecurityType_CorporatePrivatePlacement                -> "CorporatePrivatePlacement" 
    | FIX_SecurityType_ConvertibleBond                          -> "ConvertibleBond" 
    | FIX_SecurityType_DualCurrency                             -> "DualCurrency" 
    | FIX_SecurityType_EuroCorporateBond                        -> "EuroCorporateBond" 
    | FIX_SecurityType_IndexedLinked                            -> "IndexedLinked" 
    | FIX_SecurityType_StructuredNotes                          -> "StructuredNotes" 
    | FIX_SecurityType_YankeeCorporateBond                      -> "YankeeCorporateBond" 
    | FIX_SecurityType_ForeignExchangeContract                  -> "ForeignExchangeContract" 
    | FIX_SecurityType_CommonStock                              -> "CommonStock" 
    | FIX_SecurityType_PreferredStock                           -> "PreferredStock" 
    | FIX_SecurityType_BradyBond                                -> "BradyBond" 
    | FIX_SecurityType_EuroSovereigns                           -> "EuroSovereigns" 
    | FIX_SecurityType_USTreasuryBond                           -> "USTreasuryBond" 
    | FIX_SecurityType_InterestStripFromAnyBondOrNote           -> "InterestStripFromAnyBondOrNote" 
    | FIX_SecurityType_TreasuryInflationProtectedSecurities     -> "TreasuryInflationProtectedSecurities" 
    | FIX_SecurityType_PrincipalStripOfACallableBondOrNote      -> "PrincipalStripOfACallableBondOrNote" 
    | FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote -> "PrincipalStripFromANonCallableBondOrNote" 
    | FIX_SecurityType_USTreasuryNoteOld                        -> "USTreasuryNoteOld" 
    | FIX_SecurityType_USTreasuryBillOld                        -> "USTreasuryBillOld" 
    | FIX_SecurityType_USTreasuryNote                           -> "USTreasuryNote" 
    | FIX_SecurityType_USTreasuryBill                           -> "USTreasuryBill" 
    | FIX_SecurityType_Repurchase                               -> "Repurchase" 
    | FIX_SecurityType_Forward                                  -> "Forward" 
    | FIX_SecurityType_BuySellback                              -> "BuySellback" 
    | FIX_SecurityType_SecuritiesLoan                           -> "SecuritiesLoan" 
    | FIX_SecurityType_SecuritiesPledge                         -> "SecuritiesPledge" 
    | FIX_SecurityType_TermLoan                                 -> "TermLoan" 
    | FIX_SecurityType_RevolverLoan                             -> "RevolverLoan" 
    | FIX_SecurityType_Revolver                                 -> "Revolver" 
    | FIX_SecurityType_BridgeLoan                               -> "BridgeLoan" 
    | FIX_SecurityType_LetterOfCredit                           -> "LetterOfCredit" 
    | FIX_SecurityType_SwingLineFacility                        -> "SwingLineFacility" 
    | FIX_SecurityType_DebtorInPossession                       -> "DebtorInPossession" 
    | FIX_SecurityType_Defaulted                                -> "Defaulted" 
    | FIX_SecurityType_Withdrawn                                -> "Withdrawn" 
    | FIX_SecurityType_Replaced                                 -> "Replaced" 
    | FIX_SecurityType_Matured                                  -> "Matured" 
    | FIX_SecurityType_Amended                                  -> "Amended" 
    | FIX_SecurityType_Retired                                  -> "Retired" 
    | FIX_SecurityType_BankersAcceptance                        -> "BankersAcceptance" 
    | FIX_SecurityType_BankNotes                                -> "BankNotes" 
    | FIX_SecurityType_BillOfExchanges                          -> "BillOfExchanges" 
    | FIX_SecurityType_CertificateOfDeposit                     -> "CertificateOfDeposit" 
    | FIX_SecurityType_CallLoans                                -> "CallLoans" 
    | FIX_SecurityType_CommercialPaper                          -> "CommercialPaper" 
    | FIX_SecurityType_DepositNotes                             -> "DepositNotes" 
    | FIX_SecurityType_EuroCertificateOfDeposit                 -> "EuroCertificateOfDeposit" 
    | FIX_SecurityType_EuroCommercialPaper                      -> "EuroCommercialPaper" 
    | FIX_SecurityType_LiquidityNote                            -> "LiquidityNote" 
    | FIX_SecurityType_MediumTermNotes                          -> "MediumTermNotes" 
    | FIX_SecurityType_Overnight                                -> "Overnight" 
    | FIX_SecurityType_PromissoryNote                           -> "PromissoryNote" 
    | FIX_SecurityType_PlazosFijos                              -> "PlazosFijos" 
    | FIX_SecurityType_ShortTermLoanNote                        -> "ShortTermLoanNote" 
    | FIX_SecurityType_TimeDeposit                              -> "TimeDeposit" 
    | FIX_SecurityType_ExtendedCommNote                         -> "ExtendedCommNote" 
    | FIX_SecurityType_YankeeCertificateOfDeposit               -> "YankeeCertificateOfDeposit" 
    | FIX_SecurityType_AssetBackedSecurities                    -> "AssetBackedSecurities" 
    | FIX_SecurityType_Corp                                     -> "Corp" 
    | FIX_SecurityType_CollateralizedMortgageObligation         -> "CollateralizedMortgageObligation" 
    | FIX_SecurityType_IOETTEMortgage                           -> "IOETTEMortgage" 
    | FIX_SecurityType_MortgageBackedSecurities                 -> "MortgageBackedSecurities" 
    | FIX_SecurityType_MortgageInterestOnly                     -> "MortgageInterestOnly" 
    | FIX_SecurityType_MortgagePrincipalOnly                    -> "MortgagePrincipalOnly" 
    | FIX_SecurityType_MortgagePrivatePlacement                 -> "MortgagePrivatePlacement" 
    | FIX_SecurityType_MiscellaneousPassThrough                 -> "MiscellaneousPassThrough" 
    | FIX_SecurityType_Pfandbriefe                              -> "Pfandbriefe" 
    | FIX_SecurityType_ToBeAnnounced                            -> "ToBeAnnounced" 
    | FIX_SecurityType_OtherAnticipationNotes                   -> "OtherAnticipationNotes" 
    | FIX_SecurityType_CertificateOfObligation                  -> "CertificateOfObligation" 
    | FIX_SecurityType_CertificateOfParticipation               -> "CertificateOfParticipation" 
    | FIX_SecurityType_GeneralObligationBonds                   -> "GeneralObligationBonds" 
    | FIX_SecurityType_MandatoryTender                          -> "MandatoryTender" 
    | FIX_SecurityType_RevenueAnticipationNote                  -> "RevenueAnticipationNote" 
    | FIX_SecurityType_RevenueBonds                             -> "RevenueBonds" 
    | FIX_SecurityType_SpecialAssessment                        -> "SpecialAssessment" 
    | FIX_SecurityType_SpecialObligation                        -> "SpecialObligation" 
    | FIX_SecurityType_SpecialTax                               -> "SpecialTax" 
    | FIX_SecurityType_TaxAnticipationNote                      -> "TaxAnticipationNote" 
    | FIX_SecurityType_TaxAllocation                            -> "TaxAllocation" 
    | FIX_SecurityType_TaxExemptCommercialPaper                 -> "TaxExemptCommercialPaper" 
    | FIX_SecurityType_TaxRevenueAnticipationNote               -> "TaxRevenueAnticipationNote" 
    | FIX_SecurityType_VariableRateDemandNote                   -> "VariableRateDemandNote" 
    | FIX_SecurityType_Warrant                                  -> "Warrant" 
    | FIX_SecurityType_MutualFund                               -> "MutualFund" 
    | FIX_SecurityType_MultilegInstrument                       -> "MultilegInstrument" 
    | FIX_SecurityType_NoSecurityType                           -> "NoSecurityType" 
;;


let pricetype_to_json    x : json = `String ( pricetype_to_string    x ) ;;
let commtype_to_json     x : json = `String ( commtype_to_string     x ) ;;
let ordstatus_to_json    x : json = `String ( ordstatus_to_string    x ) ;;
let timeinforce_to_json  x : json = `String ( timeinforce_to_string  x ) ;;
let execinst_to_json     x : json = `String ( execinst_to_string     x ) ;;
let handlinst_to_json    x : json = `String ( handlinst_to_string    x ) ;;
let exectype_to_json     x : json = `String ( exectype_to_string     x ) ;;
let ordertype_to_json    x : json = `String ( ordertype_to_string    x ) ;;
let side_to_json         x : json = `String ( side_to_string         x ) ;;
let securitytype_to_json x : json = `String ( securitytype_to_string x ) ;;

let pricetype_opt_to_json    = function None -> `Null | Some x -> pricetype_to_json    x ;;
let commtype_opt_to_json     = function None -> `Null | Some x -> commtype_to_json     x ;;
let ordstatus_opt_to_json    = function None -> `Null | Some x -> ordstatus_to_json    x ;;
let timeinforce_opt_to_json  = function None -> `Null | Some x -> timeinforce_to_json  x ;;
let execinst_opt_to_json     = function None -> `Null | Some x -> execinst_to_json     x ;;
let handlinst_opt_to_json    = function None -> `Null | Some x -> handlinst_to_json    x ;;
let exectype_opt_to_json     = function None -> `Null | Some x -> exectype_to_json     x ;;
let ordertype_opt_to_json    = function None -> `Null | Some x -> ordertype_to_json    x ;;
let side_opt_to_json         = function None -> `Null | Some x -> side_to_json         x ;;
let securitytype_opt_to_json = function None -> `Null | Some x -> securitytype_to_json x ;;


let currency_to_string ( d ) =
    match d with
        | FIX_Currency_EUR -> "EUR"
        | FIX_Currency_GBP -> "GBP"
        | FIX_Currency_USD -> "USD"
;;

let country_to_string ( d ) =
    match d with
        | FIX_Country_DE -> "DE"
        | FIX_Country_GB -> "GB"
        | FIX_Country_US -> "US"
;;

let exchange_to_string ( d ) =
    match d with
        | FIX_Exchange_XLON -> "XLON"
        | FIX_Exchange_XNYS -> "XNYS"
        | FIX_Exchange_XNAS -> "XNAS"
        | FIX_Exchange_XJAS -> "XJAS"
        | FIX_Exchange_XSHG -> "XSHG"
        | FIX_Exchange_SHSC -> "SHSC"
;;



let currency_to_json ( d ) : json =
    `String (currency_to_string d)
;;

let country_to_json ( d ) : json =
    `String (country_to_string d)
;;

let exchange_to_json ( d ) : json =
    `String (exchange_to_string d)
;;


let currency_opt_to_json ( d ) : json =
    match d with
        | None -> (`Null)
        | Some d -> (currency_to_json d)
;;

let country_opt_to_json ( d ) : json =
    match d with
        | None -> (`Null)
        | Some d -> (country_to_json d)
;;

let exchange_opt_to_json ( d ) : json =
    match d with
        | None -> (`Null)
        | Some d -> (exchange_to_json d)
;;