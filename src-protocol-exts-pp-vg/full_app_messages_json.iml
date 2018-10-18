
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_app_messages_json.ml

*)
open Yojson;;
open Full_app_messages;;
open Base_types_json;;
open Full_app_enums_json;;
open Full_app_records_json;;
open TimeDefaults_json;;

let assoc_filter_nulls l : json =
    `Assoc ( List.filter (function ( _, `Null ) -> false | _ -> true ) l )
;;


let full_msg_new_order_single_to_json x = 
    [ ( "Account"      , string_opt_to_json        x.full_newOrderSingle_Account      )   
    ; ( "ClOrdID"      , string_opt_to_json        x.full_newOrderSingle_ClOrdID      ) 
    ; ( "OrigClOrdID"  , string_opt_to_json        x.full_newOrderSingle_OrigClOrdID  ) 
    ; ( "ExecInst"     , execinst_opt_to_json      x.full_newOrderSingle_ExecInst     ) 
    ; ( "HandlInst"    , handlinst_opt_to_json     x.full_newOrderSingle_HandlInst    ) 
    ; ( "TransactTime" , utctimestamp_opt_to_json  x.full_newOrderSingle_TransactTime ) 
    ; ( "Side"         , side_opt_to_json          x.full_newOrderSingle_Side         ) 
    ; ( "OrderQty"     , float_opt_to_json         x.full_newOrderSingle_OrderQty     ) 
    ; ( "OrdType"      , ordertype_opt_to_json     x.full_newOrderSingle_OrdType      ) 
    ; ( "Price"        , float_opt_to_json         x.full_newOrderSingle_Price        ) 
    ; ( "MinQty"       , float_opt_to_json         x.full_newOrderSingle_MinQty       ) 
    ; ( "TimeInForce"  , timeinforce_opt_to_json   x.full_newOrderSingle_TimeInForce  ) 
    ; ( "LocateReqd"   , bool_opt_to_json          x.full_newOrderSingle_LocateReqd   ) 
    ; ( "Currency"     , currency_opt_to_json      x.full_newOrderSingle_Currency     ) 
    ; ( "Instrument"   , instrument_to_json        x.full_newOrderSingle_Instrument   ) 
    ] |> assoc_filter_nulls
;;

let full_msg_order_cancel_replace_request_to_json x = 
    [ ( "Account"      , string_opt_to_json       x.full_orderCancelReplaceRequest_Account       )   
    ; ( "ClOrdID"      , string_opt_to_json       x.full_orderCancelReplaceRequest_ClOrdID       )   
    ; ( "HandlInst"    , handlinst_opt_to_json    x.full_orderCancelReplaceRequest_HandlInst     )   
    ; ( "OrigClOrdID"  , string_opt_to_json       x.full_orderCancelReplaceRequest_OrigClOrdID   )   
    ; ( "ExecInst"     , execinst_opt_to_json     x.full_orderCancelReplaceRequest_ExecInst      )   
    ; ( "TransactTime" , utctimestamp_opt_to_json x.full_orderCancelReplaceRequest_TransactTime  )   
    ; ( "Symbol"       , symbol_opt_to_json       x.full_orderCancelReplaceRequest_Symbol        )   
    ; ( "SymbolSfx"    , string_opt_to_json       x.full_orderCancelReplaceRequest_SymbolSfx     )   
    ; ( "Side"         , side_opt_to_json         x.full_orderCancelReplaceRequest_Side          )   
    ; ( "OrderQty"     , float_opt_to_json        x.full_orderCancelReplaceRequest_OrderQty      )   
    ; ( "OrdType"      , ordertype_opt_to_json    x.full_orderCancelReplaceRequest_OrdType       )   
    ; ( "Price"        , float_opt_to_json        x.full_orderCancelReplaceRequest_Price         )   
    ; ( "MinQty"       , float_opt_to_json        x.full_orderCancelReplaceRequest_MinQty        )   
    ; ( "TimeInForce"  , timeinforce_opt_to_json  x.full_orderCancelReplaceRequest_TimeInForce   )   
    ; ( "LocateReqd"   , bool_opt_to_json         x.full_orderCancelReplaceRequest_LocateReqd    )   
    ] |> assoc_filter_nulls
;;

let full_msg_order_cancel_request_to_json x = 
    [ ( "ClOrdID"      , string_opt_to_json        x.full_orderCancelRequest_ClOrdID       )
    ; ( "OrigClOrdID"  , string_opt_to_json        x.full_orderCancelRequest_OrigClOrdID   )
    ; ( "OrderID"      , string_opt_to_json        x.full_orderCancelRequest_OrderID       )
    ; ( "TransactTime" , utctimestamp_opt_to_json  x.full_orderCancelRequest_TransactTime  )
    ; ( "Symbol"       , symbol_opt_to_json        x.full_orderCancelRequest_Symbol        )
    ; ( "SymbolSfx"    , symbol_opt_to_json        x.full_orderCancelRequest_SymbolSfx     )
    ; ( "Side"         , side_opt_to_json          x.full_orderCancelRequest_Side          )
    ] |> assoc_filter_nulls
;;

let full_msg_cancel_reject_to_json x = 
    [ ( "Account"      , string_opt_to_json    x.full_cancelReject_Account       )     
    ; ( "ClOrdID"      , string_opt_to_json    x.full_cancelReject_ClOrdID       )     
    ; ( "OrigClOrdID"  , string_opt_to_json    x.full_cancelReject_OrigClOrdID   )     
    ; ( "OrderID"      , string_opt_to_json    x.full_cancelReject_OrderID       )     
    ; ( "OrdStatus"    , ordstatus_opt_to_json x.full_cancelReject_OrdStatus     )    
    ; ( "CxlRejReason" , string_opt_to_json    x.full_cancelReject_CxlRejReason  )     
    ; ( "Text"         , string_opt_to_json    x.full_cancelReject_Text          )     
    ] |> assoc_filter_nulls
;;

let full_msg_execution_report_to_json x = 
    [ ( "OrderID"   , string_opt_to_json    x.full_executionReport_OrderID       )
    ; ( "ClOrdID"   , string_opt_to_json    x.full_executionReport_ClOrdID       )
    ; ( "ExecType"  , exectype_opt_to_json  x.full_executionReport_ExecType      )
    ; ( "ExecID"    , string_opt_to_json    x.full_executionReport_ExecID        )
    ; ( "Account"   , string_opt_to_json    x.full_executionReport_Account       )
    ; ( "Side"      , side_opt_to_json      x.full_executionReport_Side          )
    ; ( "OrdType"   , ordertype_opt_to_json x.full_executionReport_OrdType       )
    ; ( "OrdStatus" , ordstatus_opt_to_json x.full_executionReport_OrdStatus     )
    ; ( "AvgPx"     , float_opt_to_json     x.full_executionReport_AvgPx         )
    ; ( "LeavesQty" , float_opt_to_json     x.full_executionReport_LeavesQty     )
    ; ( "CumQty"    , float_opt_to_json     x.full_executionReport_CumQty        )
    ] |> assoc_filter_nulls
;;

let full_app_msg_to_json x : json = match x with
    | Full_Msg_ExecutionReport            x -> 
            `Assoc [( "ExecutionReport"           , full_msg_execution_report_to_json             x )] 
    | Full_Msg_OrderCancelRequest         x -> 
            `Assoc [( "OrderCancelRequest"        , full_msg_order_cancel_request_to_json         x )] 
    | Full_Msg_OrderCancelReplaceRequest  x -> 
            `Assoc [( "OrderCancelReplaceRequest" , full_msg_order_cancel_replace_request_to_json x )] 
    | Full_Msg_NewOrderSingle             x -> 
            `Assoc [( "NewOrderSingle"            , full_msg_new_order_single_to_json             x )] 
    | Full_Msg_CancelReject               x -> 
            `Assoc [( "CancelReject"              , full_msg_cancel_reject_to_json                x )]  
;;