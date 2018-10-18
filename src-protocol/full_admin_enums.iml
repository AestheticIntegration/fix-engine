
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_admin_enums.ml

*)

(** SessionRejectReason <373> field. *)
type fix_session_reject_reason =
    | InvalidTagNumber
    | RequiredTagMissing
    | TagNotDefinedForThisMessageType
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


(** BusinessRejectReason <380> field *)
type fix_business_reject_reason = 
    | ApplicationDown
    | MessageTypeNotSupported
    | FieldMissing
;;

(** Application rejection reasons -- used in internal message exchange between
    the engine and the venue model . *)
type fix_app_reject_reason = 
    | FIX_App_Reject_MissingReqField
    | FIX_App_Reject_InvalidField
    | FIX_App_Reject_Custom
;;


(** GapFillFlag <123> field *)
type fix_gapfillflag =
    | FIX_GapFillFlag_Y
    | FIX_GapFillFlag_N
;;

(** Encryption methods available. *)
type fix_encryption_method =
    | PKCS          
    | DES_ECB       
    | PKCS_DES      
    | PGP_DES       
    | PGP_DES_MD5   
    | PEM_DES_MD5   
    | NoEncryption
;;

(** Enum for the MsgDirection <385> field *)
type fix_msgdirection =
    | FIX_MsgDirection_Send 
    | FIX_MsgDirection_Receive 
;;

