#!/bin/bash -x

declare -A diceDictionary
diceDictionary[roll1]=0
diceDictionary[roll2]=0
diceDictionary[roll3]=0
diceDictionary[roll4]=0
diceDictionary[roll5]=0
diceDictionary[roll6]=0
while [ ${diceDictionary[roll1]} -ne 10 ] && [ ${diceDictionary[roll2]} -ne 10 ] && [ ${diceDictionary[roll3]} -ne 10 ] && [ ${diceDictionary[roll4]} -ne 10 ] && [ ${diceDictionary[roll5]} -ne 10 ] && [ ${diceDictionary[roll6]} -ne 10 ]
do
	diceRoll=$((RANDOM%6+1))
	case $diceRoll in
		1)
			((diceDictionary[roll1]++))
			;;
		2)
			((diceDictionary[roll2]++))
			;;
		3)
			((diceDictionary[roll3]++))
			;;
		4)
			((diceDictionary[roll4]++))
			;;
		5)
			((diceDictionary[roll5]++))
			;;
		6)
			((diceDictionary[roll6]++))
			;;
	esac
done
i=0
for value in `echo ${diceDictionary[@]}`
do
	numArray[i]=$value
	((i++))
done
i=0
for value in `echo ${!diceDictionary[@]}`
do
	rollArray[i]=$value
	((i++))
done
max=0
maxCounter=0
for (( counter=0; counter<6; counter++ ))
do
	if [ ${numArray[$counter]} -gt $max ]
	then
		max=${numArray[counter]}
		maxCounter=$counter
	fi
done
echo "The number rolled maximum times is ${rollArray[$maxCounter]} and it was rolled $max times"
min=$max
minCounter=0
for (( counter=0; counter<6; counter++ ))
do
	if [ ${numArray[$counter]} -lt $min ]
	then
		min=${numArray[$counter]}
		minCounter=$counter
	fi
done
echo "The number rolled minimum times is ${rollArray[$minCounter]} and it was rolled $min times"
