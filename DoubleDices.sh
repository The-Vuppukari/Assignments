#!/bin/bash -x

Dice1=$(( 1+ RANDOM %6 ))
Dice2=$(( 1+ RANDOM %6 ))
echo "Adding two Dice"
total=$(( $Dice1 + $Dice2 ))
echo "The value of the Dice be $total "

