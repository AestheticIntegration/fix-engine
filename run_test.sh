
run_test () {
    echo "Runnning test $1"
    dune exec src-tests/test_runner.bc -- $1 | tr '\001' '|' > test.log
    cat test.log
    ! grep -i error test.log
    FOUND_ERROR=$?
    rm test.log
    if [ $FOUND_ERROR -ne 0 ]; then
        exit 1
    fi
}

trap "exit" INT TERM

echo "(dirs :standard \ *-vg)" > dune

dune exec src-simulation/test_server.bc > test_server.log &
sleep 1

run_test ./defs/10_MsgSeqNumEqual.def
run_test ./defs/10_MsgSeqNumGreater.def
run_test ./defs/10_MsgSeqNumLess.def
run_test ./defs/11a_NewSeqNoGreater.def
run_test ./defs/11b_NewSeqNoEqual.def
run_test ./defs/11c_NewSeqNoLess.def
run_test ./defs/13b_UnsolicitedLogoutMessage.def
run_test ./defs/14b_RequiredFieldMissing.def
run_test ./defs/14c_TagNotDefinedForMsgType.def
run_test ./defs/14d_TagSpecifiedWithoutValue.def
run_test ./defs/14f_IncorrectDataFormat.def
run_test ./defs/14h_RepeatedTag.def
run_test ./defs/14i_RepeatingGroupCountNotEqual.def
run_test ./defs/14j_modified_OutOfOrderRepeatingGroupMembers.def
run_test ./defs/1a_ValidLogonMsgSeqNumTooHigh.def
run_test ./defs/1a_ValidLogonWithCorrectMsgSeqNum.def
run_test ./defs/1d_InvalidLogonBadSendingTime.def
run_test ./defs/1d_InvalidLogonLengthInvalid.def
run_test ./defs/1d_InvalidLogonWrongBeginString.def
run_test ./defs/1e_NotLogonMessage.def
run_test ./defs/20_SimultaneousResendRequest.def
run_test ./defs/2a_MsgSeqNumCorrect.def
run_test ./defs/2b_MsgSeqNumTooHigh.def
run_test ./defs/2c_MsgSeqNumTooLow.def
run_test ./defs/2d_GarbledMessage.def
run_test ./defs/2e_PossDupAlreadyReceived.def
run_test ./defs/2e_PossDupNotReceived.def
run_test ./defs/2f_PossDupOrigSendingTimeTooHigh.def
run_test ./defs/2g_PossDupNoOrigSendingTime.def
run_test ./defs/3c_GarbledMessage.def
run_test ./defs/4a_NoDataSentDuringHeartBtInt.def
run_test ./defs/4b_ReceivedTestRequest.def
run_test ./defs/6_SendTestRequest.def
run_test ./defs/7_ReceiveRejectMessage.def
run_test ./defs/8_AdminAndApplicationMessages.def
run_test ./defs/8_OnlyAdminMessages.def
run_test ./defs/8_OnlyApplicationMessages.def
run_test ./defs/Imandra1_SessionRejectedBadSeqn.def
run_test ./defs/Imandra2_SeqResetWithGapFill.def
run_test ./defs/Imandra3_CacheReplayApplication.def
run_test ./defs/Imandra4_CacheReplayOutOfOrder.def
run_test ./defs/Imandra5_SeqResetWithGapFillOvershoot.def
run_test ./defs/Imandra6_CacheReplayAdminOnly.def

rm dune
