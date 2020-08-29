#!/bin/bash -x

numberOfHeads=0
numberOfTails=0

while [[ $NumberOfHeads -le 11 ]] && [[ $NumberOfTails -le 11 ]]
do
	Toss=$(( RANDOM % 2 ))
	if [[ $Toss -eq 0 ]]
	then
		((NumberOfHeads++))
	else
		((NumberOfTails++))
	fi
done
if [[ $NumberOfHeads -eq 11 ]]
then
	echo " Heads wins 11 times "
else
	echo " Tails wins 11 times "
fi
