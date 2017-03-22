(**

    Usage examples.

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    fix_examples.ml
*)

open Datetime
open Base_types
open Numeric
open Fix_engine
open Fix_engine_json
open Fix_global
open Full_session_core
open Full_admin_messages
open Full_app_messages
open Full_messages

let pe = print_endline;;

let (>>=) s f = f s;;

let examples = ref [];;

let record_example x =
    examples := x :: (!examples)
;;

(** Instantiate a new session between 2 fix engines. *)
let example_1 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id = 1;
    } in
    let msgs = [
        `INT_MSG ( TimeChange ( make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None ) ));
        `INT_MSG ( CreateSession { dest_comp_id = 123 } );
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ("// Example 1: Session Creation\n", example_1);;

let example_2 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id = 1;
    } in
    let msgs = [
        `INT_MSG ( TimeChange ( make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None ) ) );
        `INT_MSG ( CreateSession { dest_comp_id = 123 } );
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ("// Example 2: Session termination\n", example_2);;

let init_full_fix_msg_logon_data =
  { ln_encrypt_method = NoEncryption
  ; ln_heartbeat_interval = make_duration ( None, None, None, None, None, Some 30 )
  ; ln_raw_data_length = Some 123
  ; ln_raw_data = None
  ; ln_reset_seq_num_flag = None
  ; ln_next_expected_msg_seq_num = None
  ; ln_max_message_size = None
  ; ln_test_message_indicator = None
  ; ln_username = None
  ; ln_password = None
}

(** Login, then send an application data message, ensure it gets to the second fix engine. *)
let example_3 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id = 1;
    } in
    let msgs = [
        `INT_MSG ( TimeChange ( make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None ) ) );
        `INT_MSG ( CreateSession { dest_comp_id = 123 } );
        `FIX_MSG (
            ValidMsg {
                full_msg_header = {
                    default_fix_header with
                        h_target_comp_id = 1;
                };


                full_msg_data = Full_FIX_Admin_Msg(
                    Full_Msg_Logon init_full_fix_msg_logon_data);

                full_msg_trailer = default_fix_trailer;
            });
    ] in
    run_through_msgs ( engine, msgs )
;;

record_example ( "// Example 3: successfully created a session\n", example_3 );;


(** Login, then send an application data message, ensure it gets to the second fix engine. *)
let example_4 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id              = 1;
    } in
    let msgs = [
        `INT_MSG ( TimeChange ( make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None ) ) );
        `INT_MSG ( CreateSession { dest_comp_id = 123 });
        `FIX_MSG ( ValidMsg {
            full_msg_header = {
                default_fix_header with
                    h_target_comp_id = 1;
            };
            full_msg_data = Full_FIX_Admin_Msg (
                Full_Msg_Logon init_full_fix_msg_logon_data);
            full_msg_trailer = default_fix_trailer;
         });

         `INT_MSG ( ApplicationData (
                Full_Msg_NewOrderSingle {
                    full_newOrderSingle_Account                     = Some 0;
                    full_newOrderSingle_ClOrdID                     = Some 0;
                    full_newOrderSingle_OrigClOrdID                 = Some 0;
                    full_newOrderSingle_ExecInst                    = Some FIX_ExecInst_MidpointPeg;
                    full_newOrderSingle_HandlInst                   = Some FIX_HandlInst_Automated_NoInt;
                    full_newOrderSingle_TransactTime                = Some ( make_utctimestamp (2017, 1, 1, 0, 1, 0, None) );
                    full_newOrderSingle_Symbol                      = Some 0;
                    full_newOrderSingle_SymbolSfx                   = Some 0;
                    full_newOrderSingle_Side                        = Some FIX_Side_Buy;
                    full_newOrderSingle_OrderQty                    = Some ( make_Float ( 10.0, 2) );
                    full_newOrderSingle_OrdType                     = Some FIX_Ord_Type_Market;
                    full_newOrderSingle_Price                       = None;
                    full_newOrderSingle_MinQty                      = Some ( make_Float ( 0.0, 0) );
                    full_newOrderSingle_TimeInForce                 = Some FIX_TimeInForce_Day;
                    full_newOrderSingle_LocateReqd                  = Some false;
                    full_newOrderSingle_LocateBroker                = None;
                    full_newOrderSingle_Currency                    = Some GBP;
                }
        ));
    ] in
    run_through_msgs ( engine, msgs )
;;

record_example ( "// Example 4: successfully created a session + submit application message \n", example_4 );;

(* Process an out-of-sequence message and transition into recovery *)
let example_5 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id              = 1;
            fe_curr_mode            = ActiveSession;
            fe_initiator            = Some false;
            incoming_seq_num        = 1;
    } in
    let msgs = [
        `FIX_MSG ( ValidMsg {
            full_msg_header = {
                default_fix_header with
                    h_target_comp_id = 1;
                    h_msg_seq_num = 3;        (* Should be 2 *)
            };
            full_msg_data = Full_FIX_App_Msg (
                Full_Msg_ExecutionReport {
                    init_fix_msg_execution_report_data with
                        full_executionReport_OrderID    = Some 1;
                        full_executionReport_CumQty     = Some ( make_Float ( 20.0, 0 ));
            });
            full_msg_trailer = default_fix_trailer;
        }
        )
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ( "// Example 5: transition into Recovery when processing an out-of-sequence message \n", example_5 );;


let example_6 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id              = 1;
            fe_curr_mode            = Recovery;
            fe_initiator            = Some false;
            incoming_seq_num        = 1;
            fe_cache                = [

            ];
    } in
    let msgs = [
        `FIX_MSG ( ValidMsg {
            full_msg_header = {
                default_fix_header with
                    h_target_comp_id = 1;
                    h_msg_seq_num = 3;
            };

            full_msg_data = Full_FIX_App_Msg (
                Full_Msg_ExecutionReport {
                    init_fix_msg_execution_report_data with
                        full_executionReport_OrderID    = Some 1;
                        full_executionReport_CumQty     = Some ( make_Float ( 20.0, 0 ));
            });

            full_msg_trailer = default_fix_trailer;
        })
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ( "// Example 6: In Recovery mode, receiving missing message and recovering.\n", example_6 );;

let example_7 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id              = 1;
            fe_curr_mode            = ActiveSession;
            fe_initiator            = Some false;
            incoming_seq_num        = 1;
            fe_cache                = [];
    } in
    let msgs = [
        `FIX_MSG ( ValidMsg {
            full_msg_header = {
                default_fix_header with
                    h_target_comp_id = 1;
                    h_msg_seq_num = 3;
            };

            full_msg_data = Full_FIX_App_Msg (
                Full_Msg_ExecutionReport {
                    init_fix_msg_execution_report_data with
                        full_executionReport_OrderID    = Some 1;
                        full_executionReport_CumQty     = Some ( make_Float ( 20.0, 0 ));
            });

            full_msg_trailer = default_fix_trailer;
        })
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ( "// Example 7: In Recovery mode and adding further msgs into the cache.\n", example_7 );;

let example_8 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id              = 1;
            fe_curr_time            = make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None );
            fe_last_data_received   = make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None );
            fe_heartbeat_interval   = make_duration ( None, None, None, None, None, Some 30 );

            fe_curr_mode            = ActiveSession;
            fe_initiator            = Some false;
            incoming_seq_num        = 1;
    } and
    msgs = [
        `INT_MSG ( TimeChange ( make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None ) ) )
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ( "// Example 8: Internal time clock is updated, yet no heartbeat - transitioning to Shutdown mode.", example_8 );;

let example_9 () =
    let engine = {
        init_fix_engine_state with
            fe_comp_id              = 1;
            fe_curr_time            = make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None );
    } in
    let msgs = [
        `INT_MSG ( TimeChange ( make_utctimestamp ( 2017, 1, 1, 0, 0, 0, None ) ) )
    ] in
    run_through_msgs (engine, msgs)
;;

record_example ( "// Example 9: In ActiveSession mode and received resend request.", example_9 );;
