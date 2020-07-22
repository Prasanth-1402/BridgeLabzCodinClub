#!/bin/bash -x
firstInput=$(( RANDOM%6 ))
secondInput=$(( RANDOM%6 ))
firstDiceResult=$(( $firstInput+1 ))
secondDiceResult=$(( $secondInput+1 ))
echo $(( firstDiceResult+secondDiceResult ))
