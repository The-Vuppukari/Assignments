#!/bin/bash -x
read -p "Enter number for which you need factors: " inputNumber
Array[0]=0
innerCounter=0
for (( counter=2 ; counter<=$inputNumber; counter++ ))
do
	if [ $(($inputNumber%counter)) -eq 0 ]
	then
		Array[((innerCounter++))]=$counter
		inputNumber=$(($inputNumber/counter))
		counter=1
	fi
done
echo ${Array[@]}
