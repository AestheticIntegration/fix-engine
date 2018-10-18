(** Parser for application tags. *)
(***
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_app_tags.ml

*)

open Full_app_tags;;


let parse_app_msg_tag = function
    | "8" -> Some Full_Msg_ExecutionReport_Tag
    | "F" -> Some Full_Msg_OrderCancelRequest_Tag
    | "G" -> Some Full_Msg_OrderCancelReplaceRequest_Tag
    | "D" -> Some Full_Msg_NewOrderSingle_Tag
    | "9" -> Some Full_Msg_CancelReject_Tag               
    |  _  -> None
;;


let parse_app_field_tag = function
    | "1"   -> Some Full_Msg_Account_Tag
    | "102" -> Some Full_Msg_CxlRejReason_Tag
    | "106" -> Some Full_Msg_Issuer_Tag       
    | "11"  -> Some Full_Msg_ClOrdID_Tag
    | "110" -> Some Full_Msg_MinQty_Tag           
    | "114" -> Some Full_Msg_LocateReqd_Tag       
    | "14"  -> Some Full_Msg_CumQty_Tag
    | "15"  -> Some Full_Msg_Currency_Tag    
    | "151" -> Some Full_Msg_LeavesQty_Tag
    | "167" -> Some Full_Msg_SecurityType_Tag 
    | "17"  -> Some Full_Msg_ExecID_Tag
    | "18"  -> Some Full_Msg_ExecType_Tag
    | "21"  -> Some Full_Msg_HandlInst_Tag        
    | "225" -> Some Full_Msg_IssueDate_Tag    
    | "37"  -> Some Full_Msg_OrderID_Tag
    | "38"  -> Some Full_Msg_OrderQty_Tag    
    | "39"  -> Some Full_Msg_OrdStatus_Tag
    | "40"  -> Some Full_Msg_OrdType_Tag
    | "41"  -> Some Full_Msg_OrigClOrdID_Tag
    | "44"  -> Some Full_Msg_Price_Tag       
    | "54"  -> Some Full_Msg_Side_Tag
    | "55"  -> Some Full_Msg_Symbol_Tag      
    | "58"  -> Some Full_Msg_Text_Tag
    | "59"  -> Some Full_Msg_TimeInForce_Tag      
    | "6"   -> Some Full_Msg_AvgPx_Tag
    | "60"  -> Some Full_Msg_TransactTimeon_Tag
    | "65"  -> Some Full_Msg_SymbolSfx_Tag   
    |  _  -> None
;;
