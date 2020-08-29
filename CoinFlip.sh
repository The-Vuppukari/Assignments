#!/bin/bash -x
heads=1
coinFlip=$((RANDOM%2))
if [ $coinFlip -eq $heads ]
then
        echo "Heads"
else
        echo "Tails"
fi

