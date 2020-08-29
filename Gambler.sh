#!/bin/bash -x

MoneyHad=100
Bet=1
BetsDone=0
NumberOfTimesWon=0

while [[ $MoneyHad -ne 0 ]] && [[ $MoneyHad -le  200 ]]
do
	Decision=$(( RANDOM % 2 ))
	case $Decision in
		0)
			MoneyHad=$(( MoneyHad - Bet ))
			;;
		*)
			MoneyHad=$(( MoneyHad + Bet ))
			((NumberOfTimesWon++))
			;;
	esac
	(( BetsDone++))
done
echo "Bets Done =$BetsDone"
echo " Wons = $NumberOfTimesWon"
