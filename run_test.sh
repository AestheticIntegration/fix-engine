!#/bin/bash

make server
cp _build/default/src-simulation/server.bc .

make build_tests
cp _build/default/src-tests/test_runner.bc .

run_test () {
    echo "Runnning test $1"
    ./server.bc > /dev/null & pid_server=$! 
    sleep 1
    ./test_runner.bc $1 | tr '\001' '|'
    kill $pid_server
}

run_test ./defs/1a_ValidLogonMsgSeqNumTooHigh.def
run_test ./defs/1a_ValidLogonWithCorrectMsgSeqNum.def
run_test ./defs/1e_NotLogonMessage.def
run_test ./defs/2a_MsgSeqNumCorrect.def
run_test ./defs/2b_MsgSeqNumTooHigh.def
run_test ./defs/2c_MsgSeqNumTooLow.def
