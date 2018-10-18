(* Aesthetic Integration copyright 2018 *)
open Model_app_enums;;

let mod_ordstatus_to_string (d)  =
    (match d with
        | MOD_FIX_OrdStatus_PendingCancel -> "PendingCancel"
        | MOD_FIX_OrdStatus_Stopped -> "Stopped"
        | MOD_FIX_OrdStatus_PendingNew -> "PendingNew"
        | MOD_FIX_OrdStatus_Rejected -> "Rejected"
        | MOD_FIX_OrdStatus_Calculated -> "Calculated"
        | MOD_FIX_OrdStatus_Expired -> "Expired"
        | MOD_FIX_OrdStatus_Filled -> "Filled"
        | MOD_FIX_OrdStatus_Canceled -> "Canceled"
        | MOD_FIX_OrdStatus_Replaced -> "Replaced"
        | MOD_FIX_OrdStatus_PendingReplace -> "PendingReplace"
        | MOD_FIX_OrdStatus_DoneForDay -> "DoneForDay"
        | MOD_FIX_OrdStatus_Suspended -> "Suspended"
        | MOD_FIX_OrdStatus_New -> "New"
        | MOD_FIX_OrdStatus_PartiallyFilled -> "PartiallyFilled"
        | MOD_FIX_OrdStatus_AcceptedForBidding -> "AcceptedForBidding"
    )
;;

let mod_ordtype_to_string (d)  =
    (match d with
        | MOD_FIX_OrdType_LimitOrBetter -> "LimitOrBetter"
        | MOD_FIX_OrdType_NextFundValuationPoint -> "NextFundValuationPoint"
        | MOD_FIX_OrdType_WithOrWithout -> "WithOrWithout"
        | MOD_FIX_OrdType_PreviouslyIndicated -> "PreviouslyIndicated"
        | MOD_FIX_OrdType_Stop -> "Stop"
        | MOD_FIX_OrdType_Market -> "Market"
        | MOD_FIX_OrdType_OnBasis -> "OnBasis"
        | MOD_FIX_OrdType_Funari -> "Funari"
        | MOD_FIX_OrdType_Pegged -> "Pegged"
        | MOD_FIX_OrdType_LimitWithOrWithout -> "LimitWithOrWithout"
        | MOD_FIX_OrdType_StopLimit -> "StopLimit"
        | MOD_FIX_OrdType_ForexSwap -> "ForexSwap"
        | MOD_FIX_OrdType_MarketIfTouched -> "MarketIfTouched"
        | MOD_FIX_OrdType_MarketWithLeftOverAsLimit -> "MarketWithLeftOverAsLimit"
        | MOD_FIX_OrdType_PreviouslyQuoted -> "PreviouslyQuoted"
        | MOD_FIX_OrdType_Limit -> "Limit"
        | MOD_FIX_OrdType_PreviousFundValuationPoint -> "PreviousFundValuationPoint"
    )
;;

let mod_exectype_to_string (d)  =
    (match d with
        | MOD_FIX_ExecType_PendingCancel -> "PendingCancel"
        | MOD_FIX_ExecType_Stopped -> "Stopped"
        | MOD_FIX_ExecType_PendingNew -> "PendingNew"
        | MOD_FIX_ExecType_Restated -> "Restated"
        | MOD_FIX_ExecType_Rejected -> "Rejected"
        | MOD_FIX_ExecType_Calculated -> "Calculated"
        | MOD_FIX_ExecType_TradeCorrect -> "TradeCorrect"
        | MOD_FIX_ExecType_TradeCancel -> "TradeCancel"
        | MOD_FIX_ExecType_Expired -> "Expired"
        | MOD_FIX_ExecType_OrderStatus -> "OrderStatus"
        | MOD_FIX_ExecType_Trade -> "Trade"
        | MOD_FIX_ExecType_Canceled -> "Canceled"
        | MOD_FIX_ExecType_Replaced -> "Replaced"
        | MOD_FIX_ExecType_PendingReplace -> "PendingReplace"
        | MOD_FIX_ExecType_DoneForDay -> "DoneForDay"
        | MOD_FIX_ExecType_Suspended -> "Suspended"
        | MOD_FIX_ExecType_New -> "New"
    )
;;

let mod_side_to_string (d)  =
    (match d with
        | MOD_FIX_Side_AsDefined -> "AsDefined"
        | MOD_FIX_Side_Opposite -> "Opposite"
        | MOD_FIX_Side_Buy -> "Buy"
        | MOD_FIX_Side_CrossShortExempt -> "CrossShortExempt"
        | MOD_FIX_Side_Borrow -> "Borrow"
        | MOD_FIX_Side_BuyMinus -> "BuyMinus"
        | MOD_FIX_Side_Subscribe -> "Subscribe"
        | MOD_FIX_Side_Lend -> "Lend"
        | MOD_FIX_Side_SellShortExempt -> "SellShortExempt"
        | MOD_FIX_Side_Redeem -> "Redeem"
        | MOD_FIX_Side_SellPlus -> "SellPlus"
        | MOD_FIX_Side_Sell -> "Sell"
        | MOD_FIX_Side_Undisclosed -> "Undisclosed"
        | MOD_FIX_Side_Cross -> "Cross"
        | MOD_FIX_Side_CrossShort -> "CrossShort"
        | MOD_FIX_Side_SellShort -> "SellShort"
    )
;;

let string_to_mod_ordstatus_opt (d)  =
    (match d with
        | "PendingCancel" -> (Some (MOD_FIX_OrdStatus_PendingCancel))
        | "Stopped" -> (Some (MOD_FIX_OrdStatus_Stopped))
        | "PendingNew" -> (Some (MOD_FIX_OrdStatus_PendingNew))
        | "Rejected" -> (Some (MOD_FIX_OrdStatus_Rejected))
        | "Calculated" -> (Some (MOD_FIX_OrdStatus_Calculated))
        | "Expired" -> (Some (MOD_FIX_OrdStatus_Expired))
        | "Filled" -> (Some (MOD_FIX_OrdStatus_Filled))
        | "Canceled" -> (Some (MOD_FIX_OrdStatus_Canceled))
        | "Replaced" -> (Some (MOD_FIX_OrdStatus_Replaced))
        | "PendingReplace" -> (Some (MOD_FIX_OrdStatus_PendingReplace))
        | "DoneForDay" -> (Some (MOD_FIX_OrdStatus_DoneForDay))
        | "Suspended" -> (Some (MOD_FIX_OrdStatus_Suspended))
        | "New" -> (Some (MOD_FIX_OrdStatus_New))
        | "PartiallyFilled" -> (Some (MOD_FIX_OrdStatus_PartiallyFilled))
        | "AcceptedForBidding" -> (Some (MOD_FIX_OrdStatus_AcceptedForBidding))
        | _ -> (None)
    )
;;

let string_to_mod_ordtype_opt (d)  =
    (match d with
        | "LimitOrBetter" -> (Some (MOD_FIX_OrdType_LimitOrBetter))
        | "NextFundValuationPoint" -> (Some (MOD_FIX_OrdType_NextFundValuationPoint))
        | "WithOrWithout" -> (Some (MOD_FIX_OrdType_WithOrWithout))
        | "PreviouslyIndicated" -> (Some (MOD_FIX_OrdType_PreviouslyIndicated))
        | "Stop" -> (Some (MOD_FIX_OrdType_Stop))
        | "Market" -> (Some (MOD_FIX_OrdType_Market))
        | "OnBasis" -> (Some (MOD_FIX_OrdType_OnBasis))
        | "Funari" -> (Some (MOD_FIX_OrdType_Funari))
        | "Pegged" -> (Some (MOD_FIX_OrdType_Pegged))
        | "LimitWithOrWithout" -> (Some (MOD_FIX_OrdType_LimitWithOrWithout))
        | "StopLimit" -> (Some (MOD_FIX_OrdType_StopLimit))
        | "ForexSwap" -> (Some (MOD_FIX_OrdType_ForexSwap))
        | "MarketIfTouched" -> (Some (MOD_FIX_OrdType_MarketIfTouched))
        | "MarketWithLeftOverAsLimit" -> (Some (MOD_FIX_OrdType_MarketWithLeftOverAsLimit))
        | "PreviouslyQuoted" -> (Some (MOD_FIX_OrdType_PreviouslyQuoted))
        | "Limit" -> (Some (MOD_FIX_OrdType_Limit))
        | "PreviousFundValuationPoint" -> (Some (MOD_FIX_OrdType_PreviousFundValuationPoint))
        | _ -> (None)
    )
;;

let string_to_mod_exectype_opt (d)  =
    (match d with
        | "PendingCancel" -> (Some (MOD_FIX_ExecType_PendingCancel))
        | "Stopped" -> (Some (MOD_FIX_ExecType_Stopped))
        | "PendingNew" -> (Some (MOD_FIX_ExecType_PendingNew))
        | "Restated" -> (Some (MOD_FIX_ExecType_Restated))
        | "Rejected" -> (Some (MOD_FIX_ExecType_Rejected))
        | "Calculated" -> (Some (MOD_FIX_ExecType_Calculated))
        | "TradeCorrect" -> (Some (MOD_FIX_ExecType_TradeCorrect))
        | "TradeCancel" -> (Some (MOD_FIX_ExecType_TradeCancel))
        | "Expired" -> (Some (MOD_FIX_ExecType_Expired))
        | "OrderStatus" -> (Some (MOD_FIX_ExecType_OrderStatus))
        | "Trade" -> (Some (MOD_FIX_ExecType_Trade))
        | "Canceled" -> (Some (MOD_FIX_ExecType_Canceled))
        | "Replaced" -> (Some (MOD_FIX_ExecType_Replaced))
        | "PendingReplace" -> (Some (MOD_FIX_ExecType_PendingReplace))
        | "DoneForDay" -> (Some (MOD_FIX_ExecType_DoneForDay))
        | "Suspended" -> (Some (MOD_FIX_ExecType_Suspended))
        | "New" -> (Some (MOD_FIX_ExecType_New))
        | _ -> (None)
    )
;;

let string_to_mod_side_opt (d)  =
    (match d with
        | "AsDefined" -> (Some (MOD_FIX_Side_AsDefined))
        | "Opposite" -> (Some (MOD_FIX_Side_Opposite))
        | "Buy" -> (Some (MOD_FIX_Side_Buy))
        | "CrossShortExempt" -> (Some (MOD_FIX_Side_CrossShortExempt))
        | "Borrow" -> (Some (MOD_FIX_Side_Borrow))
        | "BuyMinus" -> (Some (MOD_FIX_Side_BuyMinus))
        | "Subscribe" -> (Some (MOD_FIX_Side_Subscribe))
        | "Lend" -> (Some (MOD_FIX_Side_Lend))
        | "SellShortExempt" -> (Some (MOD_FIX_Side_SellShortExempt))
        | "Redeem" -> (Some (MOD_FIX_Side_Redeem))
        | "SellPlus" -> (Some (MOD_FIX_Side_SellPlus))
        | "Sell" -> (Some (MOD_FIX_Side_Sell))
        | "Undisclosed" -> (Some (MOD_FIX_Side_Undisclosed))
        | "Cross" -> (Some (MOD_FIX_Side_Cross))
        | "CrossShort" -> (Some (MOD_FIX_Side_CrossShort))
        | "SellShort" -> (Some (MOD_FIX_Side_SellShort))
        | _ -> (None)
    )
;;
