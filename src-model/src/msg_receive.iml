(* Aesthetic Integration copyright 2018 *)
open Model_app_enums;;
open Model_messages;;
open Numeric;;
open State;;

let receive_message_NewOrderSingle (m_state : model_state) (msg_data : mod_newordersingle_data)  =
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
        mod_f_ExecutionReport_Side = msg_data.mod_f_NewOrderSingle_Side;
        mod_f_ExecutionReport_Text = None
    } in
    let m_state = send_msg (FIX_Msg_ExecutionReport msg_data_inner) m_state in
    m_state
;;
