(** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017
    
    fix_iso_types.ml

*)

(* @meta[imandra_ignore] on @end *)
open Imandra_pervasives;;
(* @meta[imandra_ignore] off @end *)

type fix_symbol = int;;
type fix_string = int;;
type fix_bool = bool;;

type fix_yes_no_type = 
    | FIX_Yes 
    | FIX_No 
    | FIX_YesNo_Invalid
;;


(** Session rejection reasons. *)
type fix_session_reject_reason =
    | InvalidTagNumber
    | RequiredTagMissing
    | TagNotDefined
    | UndefinedTag
    | TagSecifiedWithoutAValue
    | ValueIsIncorrect
    | IncorrectDataFormatForValue
    | DecryptionProblem
    | SignatureProblem
    | CompIDProblem
    | SendingTimeAccuracyProblem
    | InvalidMsgType
    | XMLValidationError
    | TagAppearsMoreThanOnce
    | TagSpecifiedOutOfRequiredOrder
    | RepeatingGroupFieldsOutOfOrder
    | IncorrectNumInGroupCountForRepeatingGroup
    | NonDataValueIncludesFieldDelimiter
;;

(* Business rejection reasons *)
type fix_business_reject_reason = 
    | ApplicationDown
    | MessageTypeNotSupported
    | FieldMissing
;;

(* Application rejection reasons. *)
type fix_app_reject_reason = 
    | FIX_App_Reject_MissingReqField
    | FIX_App_Reject_InvalidField
    | FIX_App_Reject_Custom
;;

type fix_last_liquidity_ind = 
    | FIX_LastLiquidityInd_AddedLiquidity
    | FIX_LastLiquidityInd_RemovedLiquidity
    | FIX_LastLiquidityInd_LiquidityRoutedOut
;;


(** This should be built-in. *)
type fix_currency =
    | GBP
    | USD
;;

(** Country *)
type fix_country = 
    | UK
    | USA
    | France
    | Germany
;;

(** There's a list for this as well. *)
type fix_exchange = 
    | BATS
    | DBSuperX
;;

type fix_timeinforce =
    | FIX_TimeInForce_Day
    | FIX_TimeInForce_IOC
    | FIX_TimeInForce_OPG
    | FIX_TimeInForce_FOK
    | FIX_TimeInForce_GTK
    | FIX_TimeInForce_GoodTillDate
;;

type fix_execinst = 
    | FIX_ExecInst_NotHeld
    | FIX_ExecInst_Work
    | FIX_ExecInst_GoAlong
    | FIX_ExecInst_OverTheDay
    | FIX_ExecInst_Held
    | FIX_ExecInst_MidpointPeg
    | FIX_ExecInst_MarketPeg
    | FIX_ExecInst_PrimaryPeg
;;

type fix_handlinst =
    | FIX_HandlInst_Automated_NoInt
    | FIX_HandlInst_Automated_Int
    | FIX_HandlInst_Manual
;;

type fix_exectype = 
    | FIX_ExecType_New
    | FIX_ExecType_PartialFill
    | FIX_ExecType_Fill
    | FIX_ExecType_DoneForDay
    | FIX_ExecType_Canceled
    | FIX_ExecType_Replace
    | FIX_ExecType_PendingCancel
    | FIX_ExecType_Stopped
    | FIX_ExecType_Rejected
    | FIX_ExecType_Suspended
    | FIX_ExecType_PendingNew
    | FIX_ExecType_Calculated
;;

type fix_ordertype = 
    | FIX_OrderType_Market
    | FIX_OrderType_Limit
;;

type fix_side =
    | FIX_Side_Buy
    | FIX_Side_Sell
    | FIX_Side_BuyMinus
    | FIX_Side_SellPlus
    | FIX_Side_SellShort
    | FIX_Side_SellShortExempt
    | FIX_Side_Undisclosed
    | FIX_Side_Cross
    | FIX_Side_CrossShort
    | FIX_Side_CrossShortExempt
    | FIX_Side_AsDefined
    | FIX_Side_Opposite
    | FIX_Side_Subscribe
    | FIX_Side_Redeem
    | FIX_Side_Lend
    | FIX_Side_Borrow
;;

type fix_ordstatus =
    | FIX_OrdStatus_PendingCancel
    | FIX_OrdStatus_PendingReplace
    | FIX_OrdStatus_DoneForDay
    | FIX_OrdStatus_Calculated
    | FIX_OrdStatus_Stopped
    | FIX_OrdStatus_Suspended
    | FIX_OrdStatus_Replaced
    | FIX_OrdStatus_Rejected
    | FIX_OrdStatus_PendingNew
    | FIX_OrdStatus_AcceptedForBidding
    | FIX_OrdStatus_New
    | FIX_OrdStatus_PartiallyFilled
    | FIX_OrdStatus_Filled
    | FIX_OrdStatus_Canceled
    | FIX_OrdStatus_Expired
;;

type fix_float_data = {
    fix_float_whole       : int;
    fix_float_fraction    : int;
}
;;

type fix_float = 
    | Float_0 of fix_float_data
    | Float_1 of fix_float_data
    | Float_2 of fix_float_data
    | Float_3 of fix_float_data
    | Float_4 of fix_float_data
;;

let float_Create ( data, num_decs : fix_float_data * int ) =
    match num_decs with
    | 0 -> Float_0 data
    | 1 -> Float_1 data
    | 2 -> Float_2 data
    | 3 -> Float_3 data
    | _ -> Float_4 data
;;

let float_GetData ( f : fix_float ) =
    match f with 
    | Float_0 d -> d
    | Float_1 d -> d
    | Float_2 d -> d
    | Float_3 d -> d
    | Float_4 d -> d
;;

let float_GetDecs ( f : fix_float ) =
    match f with 
    | Float_0 _ -> 0
    | Float_1 _ -> 1
    | Float_2 _ -> 2
    | Float_3 _ -> 3
    | _         -> 4
;;

let float_GetFloat ( f : fix_float ) =
    match f with 
    | Float_0 d ->   float_of_int  ( d.fix_float_whole ) 
    | Float_1 d -> ( float_of_int  ( d.fix_float_whole ) ) +. ( float_of_int ( d.fix_float_fraction ) /. 10.0 )
    | Float_2 d -> ( float_of_int  ( d.fix_float_whole ) ) +. ( float_of_int ( d.fix_float_fraction ) /. 100.0) 
    | Float_3 d -> ( float_of_int  ( d.fix_float_whole ) ) +. ( float_of_int ( d.fix_float_fraction ) /. 1000.0)
    | Float_4 d -> ( float_of_int  ( d.fix_float_whole ) ) +. ( float_of_int ( d.fix_float_fraction ) /. 10000.0)
;;

let getDecPow ( d ) = 
    match d with 
    | 0 -> 1.0
    | 1 -> 10.0
    | 2 -> 100.0
    | 3 -> 1000.0
    | _ -> 10000.0
;;

let make_Float ( f, dec : float * int ) = 
    let d = {
        fix_float_whole     = int_of_float f;
        fix_float_fraction  = int_of_float (( f -. float_of_int ( int_of_float (f))) *. getDecPow (dec)) ;
    } in 
    match dec with 
    | 0 -> Float_0 d
    | 1 -> Float_1 d 
    | 2 -> Float_2 d
    | 3 -> Float_3 d
    | _ -> Float_4 d
;;

let float_Add ( fOne, fTwo : fix_float * fix_float ) =
    let dOne = float_GetDecs ( fOne ) in 
    let dTwo = float_GetDecs ( fTwo ) in 

    let data1 = float_GetFloat ( fOne ) in
    let data2 = float_GetFloat ( fTwo ) in 

    make_Float ( data1 +. data2, min (dOne, dTwo))
;;

let float_Div ( fOne, fTwo : fix_float * fix_float ) = 
    let dOne = float_GetDecs ( fOne ) in 
    let dTwo = float_GetDecs ( fTwo ) in 

    let data1 = float_GetFloat ( fOne ) in
    let data2 = float_GetFloat ( fTwo ) in 

    make_Float ( data1 /. data2, min (dOne, dTwo))
;;

let float_Mult ( fOne, fTwo : fix_float * fix_float ) =
    let dOne = float_GetDecs ( fOne ) in 
    let dTwo = float_GetDecs ( fTwo ) in 

    let one = float_GetFloat ( fOne ) in 
    let two = float_GetFloat ( fTwo ) in 

    make_Float ( one *. two, min (dOne, dTwo) )
;;

let float_GreaterThan ( fOne, fTwo : fix_float * fix_float ) =
    float_GetFloat ( fOne ) > float_GetFloat ( fTwo )
;;

let float_LessThan ( fOne, fTwo : fix_float * fix_float ) =
    float_GetFloat ( fOne ) < float_GetFloat ( fTwo )
;;

let float_GreaterThanEqual ( fOne, fTwo : fix_float * fix_float ) =
    not (float_LessThan ( fOne, fTwo ))
;;

(** TODO need to do something intelligent here. *)
let float_Equal ( fOne, fTwo : fix_float * fix_float ) =
    let fractQOne = float_GetFloat ( fOne ) in 
    let fractQTwo = float_GetFloat ( fTwo ) in
    fractQOne = fractQTwo
;;

let float_LessThanEqual ( fOne, fTwo : fix_float * fix_float ) =
    float_LessThan (fOne, fTwo) || float_Equal (fOne, fTwo)
;;