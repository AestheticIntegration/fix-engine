(* Aesthetic Integration copyright 2018 *)
open Actions;;
open Model_messages;;

let isAction (str : string)  =
    (match str with
        | "Actions.FIX_Action_x" -> true
        | _ -> false
    )
;;

let isActionData (str : string)  =
    (match str with
        | "Actions.m_action_fix_x" -> true
        | _ -> false
    )
;;

let isActionField (str : string)  =
    (match str with
        | "Actions.mod_f_x_x" -> true
        | _ -> false
    )
;;

let isModelFieldTag (str : string)  =
    (match str with
        | "Model_tags.M_Field_ClOrdID_Tag" -> true
        | "Model_tags.M_Field_OrderID_Tag" -> true
        | "Model_tags.M_Field_ExecID_Tag" -> true
        | "Model_tags.M_Field_ExecType_Tag" -> true
        | "Model_tags.M_Field_AvgPx_Tag" -> true
        | "Model_tags.M_Field_Side_Tag" -> true
        | "Model_tags.M_Field_LeavesQty_Tag" -> true
        | "Model_tags.M_Field_CumQty_Tag" -> true
        | "Model_tags.M_Field_OrdStatus_Tag" -> true
        | "Model_tags.M_Field_Symbol_Tag" -> true
        | "Model_tags.M_Field_Text_Tag" -> true
        | "Model_tags.M_Field_TransactTime_Tag" -> true
        | "Model_tags.M_Field_OrdType_Tag" -> true
        | _ -> false
    )
;;

let isModelMessageTag (str : string)  =
    (match str with
        | "Model_tags.M_Msg_ExecutionReport_Tag" -> true
        | "Model_tags.M_Msg_NewOrderSingle_Tag" -> true
        | _ -> false
    )
;;

let isMessageField (str : string)  =
    (match str with
        | "Model_messages.mod_f_ExecutionReport_ClOrdID" -> true
        | "Model_messages.mod_f_ExecutionReport_OrderID" -> true
        | "Model_messages.mod_f_ExecutionReport_ExecID" -> true
        | "Model_messages.mod_f_ExecutionReport_ExecType" -> true
        | "Model_messages.mod_f_ExecutionReport_AvgPx" -> true
        | "Model_messages.mod_f_ExecutionReport_Side" -> true
        | "Model_messages.mod_f_ExecutionReport_LeavesQty" -> true
        | "Model_messages.mod_f_ExecutionReport_CumQty" -> true
        | "Model_messages.mod_f_ExecutionReport_OrdStatus" -> true
        | "Model_messages.mod_f_ExecutionReport_Instrument_Symbol" -> true
        | "Model_messages.mod_f_ExecutionReport_Text" -> true
        | "Model_messages.mod_f_NewOrderSingle_ClOrdID" -> true
        | "Model_messages.mod_f_NewOrderSingle_Side" -> true
        | "Model_messages.mod_f_NewOrderSingle_TransactTime" -> true
        | "Model_messages.mod_f_NewOrderSingle_OrdType" -> true
        | "Model_messages.mod_f_NewOrderSingle_Instrument_Symbol" -> true
        | _ -> false
    )
;;

let isMessage (str : string)  =
    (match str with
        | "Model_messages.FIX_Msg_ExecutionReport" -> true
        | "Model_messages.FIX_Msg_NewOrderSingle" -> true
        | _ -> false
    )
;;

let isMessageData (str : string)  =
    (match str with
        | "Model_messages.mod_executionreport_data" -> true
        | "Model_messages.mod_newordersingle_data" -> true
        | _ -> false
    )
;;

let isInternal (str : string)  =
    (match str with
        | _ -> false
    )
;;

let isInternalField (str : string)  =
    (match str with
        | _ -> false
    )
;;

let isAssignableField (str : string)  =
    (match str with
        | _ -> false
    )
;;

let isEnum (str : string)  =
    (match str with
        | "Model_app_enums.model_fix_ordstatus" -> true
        | "Model_app_enums.model_fix_ordtype" -> true
        | "Model_app_enums.model_fix_exectype" -> true
        | "Model_app_enums.model_fix_side" -> true
        | _ -> false
    )
;;

let isEnumCase (str : string)  =
    (match str with
        | "Model_app_enums.MOD_FIX_OrdStatus_PendingCancel" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Stopped" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_PendingNew" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Rejected" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Calculated" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Expired" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Filled" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Canceled" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Replaced" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_PendingReplace" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_DoneForDay" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_Suspended" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_New" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_PartiallyFilled" -> true
        | "Model_app_enums.MOD_FIX_OrdStatus_AcceptedForBidding" -> true
        | "Model_app_enums.MOD_FIX_OrdType_LimitOrBetter" -> true
        | "Model_app_enums.MOD_FIX_OrdType_NextFundValuationPoint" -> true
        | "Model_app_enums.MOD_FIX_OrdType_WithOrWithout" -> true
        | "Model_app_enums.MOD_FIX_OrdType_PreviouslyIndicated" -> true
        | "Model_app_enums.MOD_FIX_OrdType_Stop" -> true
        | "Model_app_enums.MOD_FIX_OrdType_Market" -> true
        | "Model_app_enums.MOD_FIX_OrdType_OnBasis" -> true
        | "Model_app_enums.MOD_FIX_OrdType_Funari" -> true
        | "Model_app_enums.MOD_FIX_OrdType_Pegged" -> true
        | "Model_app_enums.MOD_FIX_OrdType_LimitWithOrWithout" -> true
        | "Model_app_enums.MOD_FIX_OrdType_StopLimit" -> true
        | "Model_app_enums.MOD_FIX_OrdType_ForexSwap" -> true
        | "Model_app_enums.MOD_FIX_OrdType_MarketIfTouched" -> true
        | "Model_app_enums.MOD_FIX_OrdType_MarketWithLeftOverAsLimit" -> true
        | "Model_app_enums.MOD_FIX_OrdType_PreviouslyQuoted" -> true
        | "Model_app_enums.MOD_FIX_OrdType_Limit" -> true
        | "Model_app_enums.MOD_FIX_OrdType_PreviousFundValuationPoint" -> true
        | "Model_app_enums.MOD_FIX_ExecType_PendingCancel" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Stopped" -> true
        | "Model_app_enums.MOD_FIX_ExecType_PendingNew" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Restated" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Rejected" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Calculated" -> true
        | "Model_app_enums.MOD_FIX_ExecType_TradeCorrect" -> true
        | "Model_app_enums.MOD_FIX_ExecType_TradeCancel" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Expired" -> true
        | "Model_app_enums.MOD_FIX_ExecType_OrderStatus" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Trade" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Canceled" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Replaced" -> true
        | "Model_app_enums.MOD_FIX_ExecType_PendingReplace" -> true
        | "Model_app_enums.MOD_FIX_ExecType_DoneForDay" -> true
        | "Model_app_enums.MOD_FIX_ExecType_Suspended" -> true
        | "Model_app_enums.MOD_FIX_ExecType_New" -> true
        | "Model_app_enums.MOD_FIX_Side_AsDefined" -> true
        | "Model_app_enums.MOD_FIX_Side_Opposite" -> true
        | "Model_app_enums.MOD_FIX_Side_Buy" -> true
        | "Model_app_enums.MOD_FIX_Side_CrossShortExempt" -> true
        | "Model_app_enums.MOD_FIX_Side_Borrow" -> true
        | "Model_app_enums.MOD_FIX_Side_BuyMinus" -> true
        | "Model_app_enums.MOD_FIX_Side_Subscribe" -> true
        | "Model_app_enums.MOD_FIX_Side_Lend" -> true
        | "Model_app_enums.MOD_FIX_Side_SellShortExempt" -> true
        | "Model_app_enums.MOD_FIX_Side_Redeem" -> true
        | "Model_app_enums.MOD_FIX_Side_SellPlus" -> true
        | "Model_app_enums.MOD_FIX_Side_Sell" -> true
        | "Model_app_enums.MOD_FIX_Side_Undisclosed" -> true
        | "Model_app_enums.MOD_FIX_Side_Cross" -> true
        | "Model_app_enums.MOD_FIX_Side_CrossShort" -> true
        | "Model_app_enums.MOD_FIX_Side_SellShort" -> true
        | _ -> false
    )
;;

let isRepeatingGroup (str : string)  =
    (match str with
        | _ -> false
    )
;;

let name_of_action (x)  =
    (match x with
        | FIX_Action_x _ -> "Action:x"
    )
;;

let name_of_model_msg (x)  =
    (match x with
        | FIX_Msg_ExecutionReport _ -> "Msg:ExecutionReport"
        | FIX_Msg_NewOrderSingle _ -> "Msg:NewOrderSingle"
    )
;;

let name_of_msg (x)  =
    (match x with
        | FIX_TL_Normal d -> (name_of_model_msg d)
        | FIX_TL_Req_Field_Missing _ -> "Msg:Field_missing"
        | FIX_TL_PossibleResend _ -> "Msg:Possible_resend"
        | FIX_TL_None -> "Msg:None"
    )
;;