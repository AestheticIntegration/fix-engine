
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018

    parse_app_messages.ml

*)


open Parser_utils.Parser;;
open Full_app_tags;;
open Full_app_messages;;
open Parse_base_types;;
open Parse_app_enums;;
open Parse_app_records;;
open TimeDefaults_parser;;



let parse_msg_new_order_single_data msg =
  block msg parse_Instrument @@ fun msg full_newOrderSingle_Instrument ->
  opt msg "1"   parse_string       @@ fun msg full_newOrderSingle_Account      ->
  opt msg "11"  parse_string       @@ fun msg full_newOrderSingle_ClOrdID      ->
  opt msg "41"  parse_string       @@ fun msg full_newOrderSingle_OrigClOrdID  ->
  opt msg "18"  parse_execinst     @@ fun msg full_newOrderSingle_ExecInst     ->
  opt msg "21"  parse_handlinst    @@ fun msg full_newOrderSingle_HandlInst    ->
  opt msg "60"  parse_UTCTimestamp @@ fun msg full_newOrderSingle_TransactTime ->
  opt msg "54"  parse_side         @@ fun msg full_newOrderSingle_Side         ->
  opt msg "38"  parse_float        @@ fun msg full_newOrderSingle_OrderQty     ->
  opt msg "40"  parse_ordertype    @@ fun msg full_newOrderSingle_OrdType      ->
  opt msg "44"  parse_float        @@ fun msg full_newOrderSingle_Price        ->
  opt msg "110" parse_float        @@ fun msg full_newOrderSingle_MinQty       ->
  opt msg "59"  parse_timeinforce  @@ fun msg full_newOrderSingle_TimeInForce  ->
  opt msg "114" parse_bool         @@ fun msg full_newOrderSingle_LocateReqd   ->
  opt msg "15"  parse_Currency     @@ fun msg full_newOrderSingle_Currency     -> 
  (ParseSuccess
     { full_newOrderSingle_Account
     ; full_newOrderSingle_ClOrdID
     ; full_newOrderSingle_OrigClOrdID
     ; full_newOrderSingle_ExecInst
     ; full_newOrderSingle_HandlInst
     ; full_newOrderSingle_TransactTime
     ; full_newOrderSingle_Side
     ; full_newOrderSingle_OrderQty
     ; full_newOrderSingle_OrdType
     ; full_newOrderSingle_Price
     ; full_newOrderSingle_MinQty
     ; full_newOrderSingle_TimeInForce
     ; full_newOrderSingle_LocateReqd
     ; full_newOrderSingle_Currency
     ; full_newOrderSingle_Instrument
     } ,msg)
;;


let parse_msg_order_cancel_replace_request_data msg = 
  opt msg "1"   parse_string        @@ fun msg full_orderCancelReplaceRequest_Account       -> 
  opt msg "11"  parse_string        @@ fun msg full_orderCancelReplaceRequest_ClOrdID       -> 
  opt msg "21"  parse_handlinst     @@ fun msg full_orderCancelReplaceRequest_HandlInst     -> 
  opt msg "41"  parse_string        @@ fun msg full_orderCancelReplaceRequest_OrigClOrdID   -> 
  opt msg "18"  parse_execinst      @@ fun msg full_orderCancelReplaceRequest_ExecInst      -> 
  opt msg "60"  parse_UTCTimestamp  @@ fun msg full_orderCancelReplaceRequest_TransactTime  -> 
  opt msg "55"  parse_symbol        @@ fun msg full_orderCancelReplaceRequest_Symbol        -> 
  opt msg "65"  parse_string        @@ fun msg full_orderCancelReplaceRequest_SymbolSfx     -> 
  opt msg "54"  parse_side          @@ fun msg full_orderCancelReplaceRequest_Side          -> 
  opt msg "38"  parse_float         @@ fun msg full_orderCancelReplaceRequest_OrderQty      -> 
  opt msg "40"  parse_ordertype     @@ fun msg full_orderCancelReplaceRequest_OrdType       -> 
  opt msg "44"  parse_float         @@ fun msg full_orderCancelReplaceRequest_Price         -> 
  opt msg "110" parse_float         @@ fun msg full_orderCancelReplaceRequest_MinQty        -> 
  opt msg "59"  parse_timeinforce   @@ fun msg full_orderCancelReplaceRequest_TimeInForce   -> 
  opt msg "114" parse_bool          @@ fun msg full_orderCancelReplaceRequest_LocateReqd    ->  
  (ParseSuccess
     { full_orderCancelReplaceRequest_Account     
     ; full_orderCancelReplaceRequest_ClOrdID     
     ; full_orderCancelReplaceRequest_HandlInst   
     ; full_orderCancelReplaceRequest_OrigClOrdID 
     ; full_orderCancelReplaceRequest_ExecInst    
     ; full_orderCancelReplaceRequest_TransactTime
     ; full_orderCancelReplaceRequest_Symbol      
     ; full_orderCancelReplaceRequest_SymbolSfx   
     ; full_orderCancelReplaceRequest_Side        
     ; full_orderCancelReplaceRequest_OrderQty    
     ; full_orderCancelReplaceRequest_OrdType     
     ; full_orderCancelReplaceRequest_Price       
     ; full_orderCancelReplaceRequest_MinQty      
     ; full_orderCancelReplaceRequest_TimeInForce 
     ; full_orderCancelReplaceRequest_LocateReqd  
     } , msg)
;;


let parse_msg_order_cancel_request_data msg = 

  opt msg "11" parse_string        @@ fun msg full_orderCancelRequest_ClOrdID      -> 
  opt msg "41" parse_string        @@ fun msg full_orderCancelRequest_OrigClOrdID  -> 
  opt msg "37" parse_string        @@ fun msg full_orderCancelRequest_OrderID      -> 
  opt msg "60" parse_UTCTimestamp  @@ fun msg full_orderCancelRequest_TransactTime -> 
  opt msg "55" parse_symbol        @@ fun msg full_orderCancelRequest_Symbol       -> 
  opt msg "65" parse_symbol        @@ fun msg full_orderCancelRequest_SymbolSfx    -> 
  opt msg "54" parse_side          @@ fun msg full_orderCancelRequest_Side         ->
  (ParseSuccess
     { full_orderCancelRequest_ClOrdID      
     ; full_orderCancelRequest_OrigClOrdID  
     ; full_orderCancelRequest_OrderID      
     ; full_orderCancelRequest_TransactTime 
     ; full_orderCancelRequest_Symbol       
     ; full_orderCancelRequest_SymbolSfx    
     ; full_orderCancelRequest_Side         
     } ,msg)
;;


let parse_msg_cancel_reject_data msg = 
  opt msg "1"   parse_string       @@ fun msg full_cancelReject_Account       ->
  opt msg "11"  parse_string       @@ fun msg full_cancelReject_ClOrdID       ->
  opt msg "41"  parse_string       @@ fun msg full_cancelReject_OrigClOrdID   ->
  opt msg "37"  parse_string       @@ fun msg full_cancelReject_OrderID       ->
  opt msg "39"  parse_ordstatus    @@ fun msg full_cancelReject_OrdStatus     ->
  opt msg "102" parse_string       @@ fun msg full_cancelReject_CxlRejReason  ->
  opt msg "58"  parse_string       @@ fun msg full_cancelReject_Text          -> 
  (ParseSuccess
     { full_cancelReject_Account     
     ; full_cancelReject_ClOrdID     
     ; full_cancelReject_OrigClOrdID 
     ; full_cancelReject_OrderID     
     ; full_cancelReject_OrdStatus   
     ; full_cancelReject_CxlRejReason
     ; full_cancelReject_Text        
     },msg )
;;


let parse_msg_execution_report_data msg = 
  opt msg "37"  parse_string        @@ fun msg full_executionReport_OrderID  -> 
  opt msg "11"  parse_string        @@ fun msg full_executionReport_ClOrdID  -> 
  opt msg "18"  parse_exectype      @@ fun msg full_executionReport_ExecType -> 
  opt msg "17"  parse_string        @@ fun msg full_executionReport_ExecID   -> 
  opt msg "1"   parse_string        @@ fun msg full_executionReport_Account  -> 
  opt msg "54"  parse_side          @@ fun msg full_executionReport_Side     -> 
  opt msg "40"  parse_ordertype     @@ fun msg full_executionReport_OrdType  -> 
  opt msg "39"  parse_ordstatus     @@ fun msg full_executionReport_OrdStatus-> 
  opt msg "6"   parse_float         @@ fun msg full_executionReport_AvgPx    -> 
  opt msg "151" parse_float         @@ fun msg full_executionReport_LeavesQty-> 
  opt msg "14"  parse_float         @@ fun msg full_executionReport_CumQty   -> 
  (ParseSuccess
     { full_executionReport_OrderID  
     ; full_executionReport_ClOrdID  
     ; full_executionReport_ExecType 
     ; full_executionReport_ExecID   
     ; full_executionReport_Account  
     ; full_executionReport_Side     
     ; full_executionReport_OrdType  
     ; full_executionReport_OrdStatus
     ; full_executionReport_AvgPx    
     ; full_executionReport_LeavesQty
     ; full_executionReport_CumQty   
     } ,msg)
;;


let parse_app_msg_data msg_tag msg = 
  match msg_tag with
  | Full_Msg_ExecutionReport_Tag -> ((>>=) (fst (parse_msg_execution_report_data msg)) (fun f -> ParseSuccess (Full_Msg_ExecutionReport f)))
  | Full_Msg_OrderCancelRequest_Tag        -> ((>>=) (fst (parse_msg_order_cancel_request_data  msg)) (fun f -> ParseSuccess (Full_Msg_OrderCancelRequest f)))
  | Full_Msg_OrderCancelReplaceRequest_Tag -> ((>>=) (fst (parse_msg_order_cancel_replace_request_data  msg)) (fun f -> ParseSuccess (Full_Msg_OrderCancelReplaceRequest f)))
  | Full_Msg_NewOrderSingle_Tag            -> ((>>=) (fst (parse_msg_new_order_single_data  msg)) (fun f -> ParseSuccess (Full_Msg_NewOrderSingle f)))          
  | Full_Msg_CancelReject_Tag              -> ((>>=) (fst (parse_msg_cancel_reject_data  msg)) (fun f -> ParseSuccess (Full_Msg_CancelReject f)))
;;
