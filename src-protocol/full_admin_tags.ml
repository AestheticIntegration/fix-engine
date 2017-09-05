
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017
    
    full_admin_tags.ml

*)

(** Message and field tag datatypes for administrative FIX messages.*)

(** Admin message tags *)
type full_admin_msg_tag = 
    | Full_Msg_Heartbeat_Tag
    | Full_Msg_Logon_Tag
    | Full_Msg_Logoff_Tag
    | Full_Msg_Reject_Tag
    | Full_Msg_Business_Reject_Tag
    | Full_Msg_Resend_Request_Tag
    | Full_Msg_Sequence_Reset_Tag
    | Full_Msg_Test_Request_Tag
;;

(** Admin message fields tags *)
type full_admin_field_tag =
    | Full_Msg_BeginSeqNo_Tag
    | Full_Msg_BeginString_Tag
    | Full_Msg_BodyLength_Tag
    | Full_Msg_CheckSum_Tag
    | Full_Msg_EndSeqNo_Tag
    | Full_Msg_MsgSeqNum_Tag                 
    | Full_Msg_NewSeqNo_Tag
    | Full_Msg_PossDupFlag_Tag                   
    | Full_Msg_RefSeqNum_Tag
    | Full_Msg_SenderCompID_Tag              
    | Full_Msg_SenderSubID_Tag                  
    | Full_Msg_SendingTime_Tag                   
    | Full_Msg_TargetCompID_Tag              
    | Full_Msg_TargetSubID_Tag                  
    | Full_Msg_Text_Tag
    | Full_Msg_Signature_Tag
    | Full_Msg_SecureDataLen_Tag                
    | Full_Msg_SecureData_Tag                    
    | Full_Msg_SignatureLength_Tag
    | Full_Msg_RawDataLength_Tag
    | Full_Msg_RawData_Tag
    | Full_Msg_PossResend_Tag                     
    | Full_Msg_EncryptMethod_Tag
    | Full_Msg_HeartBtInt_Tag
    | Full_Msg_TestReqID_Tag
    | Full_Msg_OnBehalfOfLocationID_Tag      
    | Full_Msg_OnBehalfOfCompID_Tag         
    | Full_Msg_OnBehalfOfSubID_Tag           
    | Full_Msg_OrigSendingTime_Tag             
    | Full_Msg_GapFillFlag_Tag
    | Full_Msg_DeliverToCompID_Tag            
    | Full_Msg_DeliverToSubID_Tag             
    | Full_Msg_ResetSeqNumFlag_Tag
    | Full_Msg_SenderLocationID_Tag            
    | Full_Msg_TargetLocationID_Tag            
    | Full_Msg_DeliverToLocationID_Tag        
    | Full_Msg_XMLDataLen_Tag                  
    | Full_Msg_XMLData_Tag                      
    | Full_Msg_MessageEnconding_Tag             
    | Full_Msg_EncodedTextLen_Tag
    | Full_Msg_EncodedText_Tag
    | Full_Msg_LastMsgSeqNumProcessed_Tag    
    | Full_Msg_RefTagID_Tag  
    | Full_Msg_RefMsgType_Tag
    | Full_Msg_SessionRejectReason_Tag
    | Full_Msg_BusinessRejectReason_Tag
    | Full_Msg_MaxMessageSize_Tag
    | Full_Msg_TestMessageIndicator_Tag
    | Full_Msg_Username_Tag
    | Full_Msg_Password_Tag
    | Full_Msg_NoHops_Tag                      
    | Full_Msg_NextExpectedMsgSeqNum_Tag          
;;


