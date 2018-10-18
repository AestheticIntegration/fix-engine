
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    full_admin_tags_json.ml

*)

open Yojson;;
open Full_admin_tags;;


let full_admin_msg_tag_to_string = function
    | Full_Msg_Heartbeat_Tag       -> "Heartbeat_Tag"      
    | Full_Msg_Logon_Tag           -> "Logon_Tag"          
    | Full_Msg_Logoff_Tag          -> "Logoff_Tag"         
    | Full_Msg_Reject_Tag          -> "Reject_Tag"         
    | Full_Msg_Business_Reject_Tag -> "Business_Reject_Tag"
    | Full_Msg_Resend_Request_Tag  -> "Resend_Request_Tag" 
    | Full_Msg_Sequence_Reset_Tag  -> "Sequence_Reset_Tag" 
    | Full_Msg_Test_Request_Tag    -> "Test_Request_Tag"   
;;


let full_admin_field_tag_to_string = function
    | Full_Msg_BeginSeqNo_Tag                -> "BeginSeqNo"
    | Full_Msg_BeginString_Tag               -> "BeginString"
    | Full_Msg_BodyLength_Tag                -> "BodyLength"
    | Full_Msg_CheckSum_Tag                  -> "CheckSum"
    | Full_Msg_EndSeqNo_Tag                  -> "EndSeqNo"
    | Full_Msg_MsgSeqNum_Tag                 -> "MsgSeqNum"
    | Full_Msg_NewSeqNo_Tag                  -> "NewSeqNo"
    | Full_Msg_PossDupFlag_Tag               -> "PossDupFlag"    
    | Full_Msg_RefSeqNum_Tag                 -> "RefSeqNum"
    | Full_Msg_SenderCompID_Tag              -> "SenderCompID"
    | Full_Msg_SenderSubID_Tag               -> "SenderSubID"   
    | Full_Msg_SendingTime_Tag               -> "SendingTime"    
    | Full_Msg_TargetCompID_Tag              -> "TargetCompID"
    | Full_Msg_TargetSubID_Tag               -> "TargetSubID"   
    | Full_Msg_Text_Tag                      -> "Text"
    | Full_Msg_Signature_Tag                 -> "Signature"
    | Full_Msg_SecureDataLen_Tag             -> "SecureDataLen"   
    | Full_Msg_SecureData_Tag                -> "SecureData"    
    | Full_Msg_SignatureLength_Tag           -> "SignatureLength"
    | Full_Msg_RawDataLength_Tag             -> "RawDataLength"
    | Full_Msg_RawData_Tag                   -> "RawData"
    | Full_Msg_PossResend_Tag                -> "PossResend"     
    | Full_Msg_EncryptMethod_Tag             -> "EncryptMethod"
    | Full_Msg_HeartBtInt_Tag                -> "HeartBtInt"
    | Full_Msg_TestReqID_Tag                 -> "TestReqID"
    | Full_Msg_OnBehalfOfLocationID_Tag      -> "OnBehalfOfLocationID"
    | Full_Msg_OnBehalfOfCompID_Tag          -> "OnBehalfOfCompID"
    | Full_Msg_OnBehalfOfSubID_Tag           -> "OnBehalfOfSubID"
    | Full_Msg_OrigSendingTime_Tag           -> "OrigSendingTime"  
    | Full_Msg_GapFillFlag_Tag               -> "GapFillFlag"
    | Full_Msg_DeliverToCompID_Tag           -> "DeliverToCompID" 
    | Full_Msg_DeliverToSubID_Tag            -> "DeliverToSubID" 
    | Full_Msg_ResetSeqNumFlag_Tag           -> "ResetSeqNumFlag"
    | Full_Msg_SenderLocationID_Tag          -> "SenderLocationID"  
    | Full_Msg_TargetLocationID_Tag          -> "TargetLocationID"  
    | Full_Msg_DeliverToLocationID_Tag       -> "DeliverToLocationID" 
    | Full_Msg_XMLDataLen_Tag                -> "XMLDataLen"  
    | Full_Msg_XMLData_Tag                   -> "XMLData"   
    | Full_Msg_MessageEnconding_Tag          -> "MessageEnconding"   
    | Full_Msg_EncodedTextLen_Tag            -> "EncodedTextLen"
    | Full_Msg_EncodedText_Tag               -> "EncodedText"
    | Full_Msg_LastMsgSeqNumProcessed_Tag    -> "LastMsgSeqNumProcessed"
    | Full_Msg_RefTagID_Tag                  -> "RefTagID"
    | Full_Msg_RefMsgType_Tag                -> "RefMsgType"
    | Full_Msg_SessionRejectReason_Tag       -> "SessionRejectReason"
    | Full_Msg_BusinessRejectReason_Tag      -> "BusinessRejectReason"
    | Full_Msg_MaxMessageSize_Tag            -> "MaxMessageSize"
    | Full_Msg_TestMessageIndicator_Tag      -> "TestMessageIndicator"
    | Full_Msg_Username_Tag                  -> "Username"
    | Full_Msg_Password_Tag                  -> "Password"
    | Full_Msg_NoHops_Tag                    -> "NoHops"  
    | Full_Msg_NextExpectedMsgSeqNum_Tag     -> "NextExpectedMsgSeqNum"     
;;


let full_admin_msg_tag_to_json x : json = `String (full_admin_msg_tag_to_string x);;

let full_admin_msg_tag_opt_to_json = function None -> `Null | Some x -> full_admin_msg_tag_to_json x;;


let full_admin_field_tag_to_json x : json = `String (full_admin_field_tag_to_string x );;

let full_admin_field_tag_opt_to_json = function None -> `Null | Some x -> full_admin_field_tag_to_json x ;;
