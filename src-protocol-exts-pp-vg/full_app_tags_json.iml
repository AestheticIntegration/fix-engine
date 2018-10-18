
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_app_tags_json.ml
    
*)

open Yojson;;
open Full_app_tags;;


let full_app_msg_tag_to_string = function
    | Full_Msg_ExecutionReport_Tag                         -> "ExecutionReport_Tag"  
    | Full_Msg_OrderCancelRequest_Tag                      -> "OrderCancelRequest_Tag"
    | Full_Msg_OrderCancelReplaceRequest_Tag               -> "OrderCancelReplaceRequest_Tag"
    | Full_Msg_NewOrderSingle_Tag                          -> "NewOrderSingle_Tag"
    | Full_Msg_CancelReject_Tag                            -> "CancelReject_Tag" 
;;


let full_app_field_tag_to_string = function
    | Full_Msg_Account_Tag        -> "Account_Tag"
    | Full_Msg_AvgPx_Tag          -> "AvgPx_Tag"
    | Full_Msg_ClOrdID_Tag        -> "ClOrdID_Tag"
    | Full_Msg_CumQty_Tag         -> "CumQty_Tag"
    | Full_Msg_Currency_Tag       -> "Currency_Tag"
    | Full_Msg_CxlRejReason_Tag   -> "CxlRejReason_Tag"
    | Full_Msg_ExecID_Tag         -> "ExecID_Tag"
    | Full_Msg_ExecInst_Tag       -> "ExecInst_Tag"
    | Full_Msg_ExecType_Tag       -> "ExecType_Tag"
    | Full_Msg_HandlInst_Tag      -> "HandlInst_Tag"
    | Full_Msg_IssueDate_Tag      -> "IssueDate_Tag"
    | Full_Msg_Issuer_Tag         -> "Issuer_Tag"
    | Full_Msg_LeavesQty_Tag      -> "LeavesQty_Tag"
    | Full_Msg_LocateBroker_Tag   -> "LocateBroker_Tag"
    | Full_Msg_LocateReqd_Tag     -> "LocateReqd_Tag"
    | Full_Msg_MinQty_Tag         -> "MinQty_Tag"
    | Full_Msg_OrdStatus_Tag      -> "OrdStatus_Tag"
    | Full_Msg_OrdType_Tag        -> "OrdType_Tag"
    | Full_Msg_OrderID_Tag        -> "OrderID_Tag"
    | Full_Msg_OrderQty_Tag       -> "OrderQty_Tag"
    | Full_Msg_OrigClOrdID_Tag    -> "OrigClOrdID_Tag"
    | Full_Msg_Price_Tag          -> "Price_Tag"
    | Full_Msg_SecurityType_Tag   -> "SecurityType_Tag"
    | Full_Msg_Side_Tag           -> "Side_Tag"
    | Full_Msg_Symbol_Tag         -> "Symbol_Tag"
    | Full_Msg_Text_Tag           -> "Text_Tag"
    | Full_Msg_TimeInForce_Tag    -> "TimeInForce_Tag"
    | Full_Msg_TransactTime_Tag   -> "TransactTime_Tag"
    | Full_Msg_TransactTimeon_Tag -> "TransactTimeon_Tag"
    | Full_Msg_SymbolSfx_Tag      -> "SymbolSfx_Tag"
;;


let full_app_msg_tag_to_json x : json = `String ( full_app_msg_tag_to_string   x ) ;; 

let full_app_msg_tag_opt_to_json = function None -> `Null  | Some x -> full_app_msg_tag_to_json   x ;;


let full_app_field_tag_to_json x : json = `String ( full_app_field_tag_to_string x ) ;; 

let full_app_field_tag_opt_to_json  = function None -> `Null | Some x -> full_app_field_tag_to_json x ;;