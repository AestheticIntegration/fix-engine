
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    parse_app_enums.ml
    
*)


open Full_app_enums;;

let parse_pricetype = function 
    | "1" -> Some FIX_Price_Percentage
    | "2" -> Some FIX_Price_PerUnit
    | "3" -> Some FIX_Price_FixedAmount
    | "4" -> Some FIX_Price_Discount
    | "5" -> Some FIX_Price_Premium
    | "6" -> Some FIX_Price_Spread
    | "7" -> Some FIX_Price_TEDPrice
    | "8" -> Some FIX_Price_TEDYield
    | "9" -> Some FIX_Price_Yield
    |  _  -> None 
;;

let parse_commtype = function 
    | "1" -> Some FIX_CommType_PerUnit
    | "2" -> Some FIX_CommType_Percentage
    | "3" -> Some FIX_CommType_Absolute
    | "4" -> Some FIX_CommType_CashDiscount
    | "5" -> Some FIX_CommType_EnhancedUnits
    |  _  -> None 
;;

let parse_ordstatus = function 
    | "0" -> Some FIX_Ord_Status_New
    | "1" -> Some FIX_Ord_Status_PartiallyFilled
    | "2" -> Some FIX_Ord_Status_Filled
    | "3" -> Some FIX_Ord_Status_DoneForDay
    | "4" -> Some FIX_Ord_Status_Canceled
    | "5" -> Some FIX_Ord_Status_Replaced
    | "6" -> Some FIX_Ord_Status_PendingCancel
    | "7" -> Some FIX_Ord_Status_Stopped
    | "8" -> Some FIX_Ord_Status_Rejected
    | "9" -> Some FIX_Ord_Status_Suspended
    | "A" -> Some FIX_Ord_Status_PendingNew
    | "B" -> Some FIX_Ord_Status_Calculated
    | "C" -> Some FIX_Ord_Status_Expired
    | "D" -> Some FIX_Ord_Status_AcceptedForBidding
    | "E" -> Some FIX_Ord_Status_PendingReplace
    |  _  -> None 
;;

let parse_timeinforce = function 
    | "0" -> Some FIX_TimeInForce_Day           
    | "3" -> Some FIX_TimeInForce_IOC           
    | "2" -> Some FIX_TimeInForce_OPG           
    | "4" -> Some FIX_TimeInForce_FOK           
    | "1" -> Some FIX_TimeInForce_GTK           
    | "6" -> Some FIX_TimeInForce_GoodTillDate  
    |  _  -> None
;;

let parse_execinst = function 
    | "1" -> Some FIX_ExecInst_NotHeld          
    | "2" -> Some FIX_ExecInst_Work             
    | "3" -> Some FIX_ExecInst_GoAlong          
    | "4" -> Some FIX_ExecInst_OverTheDay       
    | "5" -> Some FIX_ExecInst_Held             
    | "M" -> Some FIX_ExecInst_MidpointPeg      
    | "P" -> Some FIX_ExecInst_MarketPeg        
    | "R" -> Some FIX_ExecInst_PrimaryPeg       
    |  _  -> None
;;

let parse_handlinst = function 
    | "1" -> Some FIX_HandlInst_Automated_NoInt 
    | "2" -> Some FIX_HandlInst_Automated_Int   
    | "3" -> Some FIX_HandlInst_Manual          
    |  _  -> None
;;

let parse_exectype = function 
    | "0" -> Some FIX_ExecType_New                       
    | "1" -> Some FIX_ExecType_PartialFill               
    | "2" -> Some FIX_ExecType_Fill                      
    | "3" -> Some FIX_ExecType_DoneForDay                
    | "4" -> Some FIX_ExecType_Canceled                  
    | "5" -> Some FIX_ExecType_Replace                   
    | "6" -> Some FIX_ExecType_PendingCancel             
    | "7" -> Some FIX_ExecType_Stopped                   
    | "8" -> Some FIX_ExecType_Rejected                  
    | "9" -> Some FIX_ExecType_Suspended                 
    | "A" -> Some FIX_ExecType_PendingNew                
    | "B" -> Some FIX_ExecType_Calculated                
    |  _  -> None
;;

let parse_ordertype = function 
    | "1" -> Some FIX_Ord_Type_Market                    
    | "2" -> Some FIX_Ord_Type_Limit                     
    | "3" -> Some FIX_Ord_Type_Stop                      
    | "4" -> Some FIX_Ord_Type_StopLimit                 
    | "5" -> Some FIX_Ord_Type_MarketOnClose             
    | "6" -> Some FIX_Ord_Type_WithOrWithout             
    | "7" -> Some FIX_Ord_Type_LimitOrBetter             
    | "8" -> Some FIX_Ord_Type_LimitWithOrWithout        
    | "9" -> Some FIX_Ord_Type_OnBasis                   
    | "A" -> Some FIX_Ord_Type_OnClose                   
    | "B" -> Some FIX_Ord_Type_LimitOnClose              
    | "C" -> Some FIX_Ord_Type_ForexMarket               
    | "D" -> Some FIX_Ord_Type_PreviouslyQuoted          
    | "E" -> Some FIX_Ord_Type_PreviouslyIndicated       
    | "F" -> Some FIX_Ord_Type_ForexLimit                
    | "G" -> Some FIX_Ord_Type_ForexSwap                 
    | "H" -> Some FIX_Ord_Type_ForexPreviouslyQuoted     
    | "I" -> Some FIX_Ord_Type_Funari                    
    | "J" -> Some FIX_Ord_Type_MarketIfTouched           
    | "K" -> Some FIX_Ord_Type_MarketWithLeftOverAsLimit 
    | "L" -> Some FIX_Ord_Type_PreviousFundValuationPoint
    | "M" -> Some FIX_Ord_Type_NextFundValuationPoint    
    | "P" -> Some FIX_Ord_Type_Pegged                    
    |  _  -> None
;;

let parse_side = function 
    | "1" -> Some FIX_Side_Buy                           
    | "2" -> Some FIX_Side_Sell                          
    | "3" -> Some FIX_Side_BuyMinus                      
    | "4" -> Some FIX_Side_SellPlus                      
    | "5" -> Some FIX_Side_SellShort                     
    | "6" -> Some FIX_Side_SellShortExempt               
    | "7" -> Some FIX_Side_Undisclosed                   
    | "8" -> Some FIX_Side_Cross                         
    | "9" -> Some FIX_Side_CrossShort                    
    | "A" -> Some FIX_Side_CrossShortExempt              
    | "B" -> Some FIX_Side_AsDefined                     
    | "C" -> Some FIX_Side_Opposite                      
    | "D" -> Some FIX_Side_Subscribe                     
    | "E" -> Some FIX_Side_Redeem                        
    | "F" -> Some FIX_Side_Lend                          
    | "G" -> Some FIX_Side_Borrow                        
    |  _  -> None
;;

let parse_securitytype = function
    | "FUT"       -> Some FIX_SecurityType_Future                                    
    | "OPT"       -> Some FIX_SecurityType_Option                                    
    | "EUSUPRA"   -> Some FIX_SecurityType_EuroSupranationalCoupons                  
    | "FAC"       -> Some FIX_SecurityType_FederalAgencyCoupon                       
    | "FADN"      -> Some FIX_SecurityType_FederalAgencyDiscountNote                 
    | "PEF"       -> Some FIX_SecurityType_PrivateExportFunding                      
    | "SUPRA"     -> Some FIX_SecurityType_USDSupranationalCoupons                   
    | "CORP"      -> Some FIX_SecurityType_CorporateBond                             
    | "CPP"       -> Some FIX_SecurityType_CorporatePrivatePlacement                 
    | "CB"        -> Some FIX_SecurityType_ConvertibleBond                           
    | "DUAL"      -> Some FIX_SecurityType_DualCurrency                              
    | "EUCORP"    -> Some FIX_SecurityType_EuroCorporateBond                         
    | "XLINKD"    -> Some FIX_SecurityType_IndexedLinked                             
    | "STRUCT"    -> Some FIX_SecurityType_StructuredNotes                           
    | "YANK"      -> Some FIX_SecurityType_YankeeCorporateBond                       
    | "FOR"       -> Some FIX_SecurityType_ForeignExchangeContract                   
    | "CS"        -> Some FIX_SecurityType_CommonStock                               
    | "PS"        -> Some FIX_SecurityType_PreferredStock                            
    | "BRADY"     -> Some FIX_SecurityType_BradyBond                                 
    | "EUSOV"     -> Some FIX_SecurityType_EuroSovereigns                            
    | "TBOND"     -> Some FIX_SecurityType_USTreasuryBond                            
    | "TINT"      -> Some FIX_SecurityType_InterestStripFromAnyBondOrNote            
    | "TIPS"      -> Some FIX_SecurityType_TreasuryInflationProtectedSecurities      
    | "TCAL"      -> Some FIX_SecurityType_PrincipalStripOfACallableBondOrNote       
    | "TPRN"      -> Some FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote  
    | "UST"       -> Some FIX_SecurityType_USTreasuryNoteOld                         
    | "USTB"      -> Some FIX_SecurityType_USTreasuryBillOld                         
    | "TNOTE"     -> Some FIX_SecurityType_USTreasuryNote                            
    | "TBILL"     -> Some FIX_SecurityType_USTreasuryBill                            
    | "REPO"      -> Some FIX_SecurityType_Repurchase                                
    | "FORWARD"   -> Some FIX_SecurityType_Forward                                   
    | "BUYSELL"   -> Some FIX_SecurityType_BuySellback                               
    | "SECLOAN"   -> Some FIX_SecurityType_SecuritiesLoan                            
    | "SECPLEDGE" -> Some FIX_SecurityType_SecuritiesPledge                          
    | "TERM"      -> Some FIX_SecurityType_TermLoan                                  
    | "RVLV"      -> Some FIX_SecurityType_RevolverLoan                              
    | "RVLVTRM"   -> Some FIX_SecurityType_Revolver                                  
    | "BRIDGE"    -> Some FIX_SecurityType_BridgeLoan                                
    | "LOFC"      -> Some FIX_SecurityType_LetterOfCredit                            
    | "SWING"     -> Some FIX_SecurityType_SwingLineFacility                         
    | "DINP"      -> Some FIX_SecurityType_DebtorInPossession                        
    | "DEFLTED"   -> Some FIX_SecurityType_Defaulted                                 
    | "WITHDRN"   -> Some FIX_SecurityType_Withdrawn                                 
    | "REPLACD"   -> Some FIX_SecurityType_Replaced                                  
    | "MATURED"   -> Some FIX_SecurityType_Matured                                   
    | "AMENDED"   -> Some FIX_SecurityType_Amended                                   
    | "RETIRED"   -> Some FIX_SecurityType_Retired                                   
    | "BA"        -> Some FIX_SecurityType_BankersAcceptance                         
    | "BN"        -> Some FIX_SecurityType_BankNotes                                 
    | "BOX"       -> Some FIX_SecurityType_BillOfExchanges                           
    | "CD"        -> Some FIX_SecurityType_CertificateOfDeposit                      
    | "CL"        -> Some FIX_SecurityType_CallLoans                                 
    | "CP"        -> Some FIX_SecurityType_CommercialPaper                           
    | "DN"        -> Some FIX_SecurityType_DepositNotes                              
    | "EUCD"      -> Some FIX_SecurityType_EuroCertificateOfDeposit                  
    | "EUCP"      -> Some FIX_SecurityType_EuroCommercialPaper                       
    | "LQN"       -> Some FIX_SecurityType_LiquidityNote                             
    | "MTN"       -> Some FIX_SecurityType_MediumTermNotes                           
    | "ONITE"     -> Some FIX_SecurityType_Overnight                                 
    | "PN"        -> Some FIX_SecurityType_PromissoryNote                            
    | "PZFJ"      -> Some FIX_SecurityType_PlazosFijos                               
    | "STN"       -> Some FIX_SecurityType_ShortTermLoanNote                         
    | "TD"        -> Some FIX_SecurityType_TimeDeposit                               
    | "XCN"       -> Some FIX_SecurityType_ExtendedCommNote                          
    | "YCD"       -> Some FIX_SecurityType_YankeeCertificateOfDeposit                
    | "ABS"       -> Some FIX_SecurityType_AssetBackedSecurities                     
    | "CMBS"      -> Some FIX_SecurityType_Corp                                      
    | "CMO"       -> Some FIX_SecurityType_CollateralizedMortgageObligation          
    | "IET"       -> Some FIX_SecurityType_IOETTEMortgage                            
    | "MBS"       -> Some FIX_SecurityType_MortgageBackedSecurities                  
    | "MIO"       -> Some FIX_SecurityType_MortgageInterestOnly                      
    | "MPO"       -> Some FIX_SecurityType_MortgagePrincipalOnly                     
    | "MPP"       -> Some FIX_SecurityType_MortgagePrivatePlacement                  
    | "MPT"       -> Some FIX_SecurityType_MiscellaneousPassThrough                  
    | "PFAND"     -> Some FIX_SecurityType_Pfandbriefe                               
    | "TBA"       -> Some FIX_SecurityType_ToBeAnnounced                             
    | "AN"        -> Some FIX_SecurityType_OtherAnticipationNotes                    
    | "COFO"      -> Some FIX_SecurityType_CertificateOfObligation                   
    | "COFP"      -> Some FIX_SecurityType_CertificateOfParticipation                
    | "GO"        -> Some FIX_SecurityType_GeneralObligationBonds                    
    | "MT"        -> Some FIX_SecurityType_MandatoryTender                           
    | "RAN"       -> Some FIX_SecurityType_RevenueAnticipationNote                   
    | "REV"       -> Some FIX_SecurityType_RevenueBonds                              
    | "SPCLA"     -> Some FIX_SecurityType_SpecialAssessment                         
    | "SPCLO"     -> Some FIX_SecurityType_SpecialObligation                         
    | "SPCLT"     -> Some FIX_SecurityType_SpecialTax                                
    | "TAN"       -> Some FIX_SecurityType_TaxAnticipationNote                       
    | "TAXA"      -> Some FIX_SecurityType_TaxAllocation                             
    | "TECP"      -> Some FIX_SecurityType_TaxExemptCommercialPaper                  
    | "TRAN"      -> Some FIX_SecurityType_TaxRevenueAnticipationNote                
    | "VRDN"      -> Some FIX_SecurityType_VariableRateDemandNote                    
    | "WAR"       -> Some FIX_SecurityType_Warrant                                   
    | "MF"        -> Some FIX_SecurityType_MutualFund                                
    | "MLEG"      -> Some FIX_SecurityType_MultilegInstrument                        
    | "NONE"      -> Some FIX_SecurityType_NoSecurityType                            
    | _ -> (None)
;;

let parse_Currency ( str ) =
    match str with
        | "EUR" -> (Some (FIX_Currency_EUR))
        | "GBP" -> (Some (FIX_Currency_GBP))
        | "USD" -> (Some (FIX_Currency_USD))
        | _ -> (None)
;;

let parse_Country ( str ) =
    match str with
        | "DE" -> (Some (FIX_Country_DE))
        | "GB" -> (Some (FIX_Country_GB))
        | "US" -> (Some (FIX_Country_US))
        | _ -> (None)
;;

let parse_Exchange ( str ) =
    match str with
        | "XLON" -> (Some (FIX_Exchange_XLON))
        | "XNYS" -> (Some (FIX_Exchange_XNYS))
        | "XNAS" -> (Some (FIX_Exchange_XNAS))
        | "XJAS" -> (Some (FIX_Exchange_XJAS))
        | "XSHG" -> (Some (FIX_Exchange_XSHG))
        | "SHSC" -> (Some (FIX_Exchange_SHSC))
        | _ -> (None)
;;
