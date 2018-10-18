(* Aesthetic Integration copyright 2018 *)
open Model_app_enums;;
open Model_messages;;
open Model_tags;;
open Numeric;;
open State;;

let reject_NewOrderSingle_missingfield (m_state : model_state) (reject_text : string)  =
    let msg_data_inner = {
        mod_f_ExecutionReport_AvgPx = float_Create_6 0;
        mod_f_ExecutionReport_ClOrdID = "None";
        mod_f_ExecutionReport_CumQty = float_Create_6 0;
        mod_f_ExecutionReport_ExecID = "Test";
        mod_f_ExecutionReport_ExecType = MOD_FIX_ExecType_Calculated;
        mod_f_ExecutionReport_Instrument_Symbol = "None";
        mod_f_ExecutionReport_LeavesQty = float_Create_6 0;
        mod_f_ExecutionReport_OrdStatus = MOD_FIX_OrdStatus_New;
        mod_f_ExecutionReport_OrderID = "None";
        mod_f_ExecutionReport_Side = MOD_FIX_Side_Buy;
        mod_f_ExecutionReport_Text = Some reject_text
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner) m_state in
    m_state
;;

let reject_NewOrderSingle_invalidfield (m_state : model_state) (msg_data : mod_newordersingle_data) (reject_text : string)  =
    let msg_data_inner = {
        mod_f_ExecutionReport_AvgPx = float_Create_6 0;
        mod_f_ExecutionReport_ClOrdID = msg_data.mod_f_NewOrderSingle_ClOrdID;
        mod_f_ExecutionReport_CumQty = float_Create_6 0;
        mod_f_ExecutionReport_ExecID = "Test";
        mod_f_ExecutionReport_ExecType = MOD_FIX_ExecType_Calculated;
        mod_f_ExecutionReport_Instrument_Symbol = msg_data.mod_f_NewOrderSingle_Instrument_Symbol;
        mod_f_ExecutionReport_LeavesQty = float_Create_6 0;
        mod_f_ExecutionReport_OrdStatus = MOD_FIX_OrdStatus_New;
        mod_f_ExecutionReport_OrderID = msg_data.mod_f_NewOrderSingle_ClOrdID;
        mod_f_ExecutionReport_Side = MOD_FIX_Side_Buy;
        mod_f_ExecutionReport_Text = Some reject_text
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner) m_state in
    m_state
;;

let reject_NewOrderSingle_invalid (m_state : model_state) (msg_data : mod_newordersingle_data) (reject_text : string)  =
    let msg_data_inner = {
        mod_f_ExecutionReport_AvgPx = float_Create_6 0;
        mod_f_ExecutionReport_ClOrdID = msg_data.mod_f_NewOrderSingle_ClOrdID;
        mod_f_ExecutionReport_CumQty = float_Create_6 0;
        mod_f_ExecutionReport_ExecID = "Test";
        mod_f_ExecutionReport_ExecType = MOD_FIX_ExecType_Calculated;
        mod_f_ExecutionReport_Instrument_Symbol = "None";
        mod_f_ExecutionReport_LeavesQty = float_Create_6 0;
        mod_f_ExecutionReport_OrdStatus = MOD_FIX_OrdStatus_New;
        mod_f_ExecutionReport_OrderID = msg_data.mod_f_NewOrderSingle_ClOrdID;
        mod_f_ExecutionReport_Side = MOD_FIX_Side_Buy;
        mod_f_ExecutionReport_Text = Some reject_text
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner) m_state in
    m_state
;;

let reject_field_missing (m_state : model_state) (missing_info : field_missing_data)  =
    (match (missing_info.field_missing_data_msg,missing_info.field_missing_data_field) with
        | (M_Msg_NewOrderSingle_Tag,M_Field_ClOrdID_Tag) -> (reject_NewOrderSingle_missingfield m_state "Field ClOrdID of Message NewOrderSingle is missing.")
        | (M_Msg_NewOrderSingle_Tag,M_Field_Side_Tag) -> (reject_NewOrderSingle_missingfield m_state "Field Side of Message NewOrderSingle is missing.")
        | (M_Msg_NewOrderSingle_Tag,M_Field_TransactTime_Tag) -> (reject_NewOrderSingle_missingfield m_state "Field TransactTime of Message NewOrderSingle is missing.")
        | (M_Msg_NewOrderSingle_Tag,M_Field_OrdType_Tag) -> (reject_NewOrderSingle_missingfield m_state "Field OrdType of Message NewOrderSingle is missing.")
        | (M_Msg_NewOrderSingle_Tag,M_Field_Symbol_Tag) -> (reject_NewOrderSingle_missingfield m_state "Field Symbol of Message NewOrderSingle is missing.")
    )
;;
