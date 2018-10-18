
(*** 

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2018
    
    parse_app_records.ml

*)
open Parser_utils.Parser;;
open Full_app_records;;
open Parse_base_types;;
open Parse_datetime;;
open Parse_app_enums;;


let parse_Instrument msg =   
    opt msg "225" parse_LocalMktDate @@ fun msg f_Instrument_IssueDate    ->
    opt msg "106" parse_string       @@ fun msg f_Instrument_Issuer       ->
    opt msg "167" parse_securitytype @@ fun msg f_Instrument_SecurityType ->
    opt msg "55"  parse_string       @@ fun msg f_Instrument_Symbol       ->
    opt msg "65"  parse_string       @@ fun msg f_Instrument_SymbolSfx    ->
    (ParseSuccess
    { f_Instrument_IssueDate   
    ; f_Instrument_Issuer      
    ; f_Instrument_SecurityType
    ; f_Instrument_Symbol      
    ; f_Instrument_SymbolSfx   
    },msg) 
;;
