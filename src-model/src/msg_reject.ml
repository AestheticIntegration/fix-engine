(* Aesthetic Integration copyright 2018 *)
open State;;
open Model_app_enums;;
open Numeric;;
open Model_tags;;
open Model_messages;;

let reject_NewOrderSingle_missingfield ( m_state , reject_text : model_state * string ) =
    let msg_data_inner = {
        f_ExecutionReport_LeavesQty = Float_4 0;
        f_ExecutionReport_ExecID = "a";
        f_ExecutionReport_ExecType = MOD_FIX_ExecType_Calculated;
        f_ExecutionReport_OrderID = "b";
        f_ExecutionReport_OrdStatus = MOD_FIX_OrdStatus_New;
        f_ExecutionReport_Text = Some reject_text;
        f_ExecutionReport_AvgPx = Float_4 0;
        f_ExecutionReport_Side = MOD_FIX_Side_Buy;
        f_ExecutionReport_Instrument_Symbol = "b";
        f_ExecutionReport_CumQty = Float_4 0;
        f_ExecutionReport_ClOrdID = "b"
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner,m_state) in
    m_state
;;

let reject_NewOrderSingle_invalidfield ( m_state , msg_data , reject_text : model_state * mod_newordersingle_data * string ) =
    let msg_data_inner = {
        f_ExecutionReport_OrderID = "b";
        f_ExecutionReport_Side = MOD_FIX_Side_Buy;
        f_ExecutionReport_Text = Some reject_text;
        f_ExecutionReport_AvgPx = Float_4 0;
        f_ExecutionReport_LeavesQty = Float_4 0;
        f_ExecutionReport_ExecType = MOD_FIX_ExecType_Calculated;
        f_ExecutionReport_OrdStatus = MOD_FIX_OrdStatus_New;
        f_ExecutionReport_ClOrdID = "b";
        f_ExecutionReport_CumQty = Float_4 0;
        f_ExecutionReport_Instrument_Symbol = "b";
        f_ExecutionReport_ExecID = "a"
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner,m_state) in
    m_state
;;

let reject_NewOrderSingle_invalid ( m_state , msg_data , reject_text : model_state * mod_newordersingle_data * string ) =
    let msg_data_inner = {
        f_ExecutionReport_LeavesQty = Float_4 0;
        f_ExecutionReport_Side = MOD_FIX_Side_Buy;
        f_ExecutionReport_AvgPx = Float_4 0;
        f_ExecutionReport_OrderID = "b";
        f_ExecutionReport_ExecID = "a";
        f_ExecutionReport_OrdStatus = MOD_FIX_OrdStatus_New;
        f_ExecutionReport_CumQty = Float_4 0;
        f_ExecutionReport_Instrument_Symbol = "b";
        f_ExecutionReport_ExecType = MOD_FIX_ExecType_Calculated;
        f_ExecutionReport_Text = Some reject_text;
        f_ExecutionReport_ClOrdID = "b"
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner,m_state) in
    m_state
;;

let reject_field_missing ( m_state , missing_info : model_state * field_missing_data ) =
    (match (missing_info.field_missing_data_msg,missing_info.field_missing_data_field) with
        | (M_Msg_NewOrderSingle_Tag,M_Field_ClOrdID_Tag) -> (reject_NewOrderSingle_missingfield (m_state,"rej1"))
        | (M_Msg_NewOrderSingle_Tag,M_Field_Side_Tag) -> (reject_NewOrderSingle_missingfield (m_state,"rej2"))
        | (M_Msg_NewOrderSingle_Tag,M_Field_TransactTime_Tag) -> (reject_NewOrderSingle_missingfield (m_state,"rej3"))
        | (M_Msg_NewOrderSingle_Tag,M_Field_OrdType_Tag) -> (reject_NewOrderSingle_missingfield (m_state,"rej4"))
        | (M_Msg_NewOrderSingle_Tag,M_Field_Symbol_Tag) -> (reject_NewOrderSingle_missingfield (m_state,"rej5"))
        | (_,_) -> m_state
    )
;;
