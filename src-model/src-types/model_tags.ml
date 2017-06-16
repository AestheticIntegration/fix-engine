type m_field_tag =
    | M_Field_ClOrdID_Tag 
    | M_Field_OrderID_Tag 
    | M_Field_ExecID_Tag 
    | M_Field_ExecType_Tag 
    | M_Field_AvgPx_Tag 
    | M_Field_Side_Tag 
    | M_Field_LeavesQty_Tag 
    | M_Field_CumQty_Tag 
    | M_Field_OrdStatus_Tag 
    | M_Field_Symbol_Tag 
    | M_Field_Price_Tag 
    | M_Field_TransactTime_Tag 
    | M_Field_OrdType_Tag 
;;

type m_msg_tag =
    | M_Msg_ExecutionReport_Tag 
    | M_Msg_NewOrderSingle_Tag 
;;
