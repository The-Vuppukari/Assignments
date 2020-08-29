#!/bin/bash -x

read -p "Enter minimum range: " minRange
read -p "Enter maximum range: " maxRange
numInBetween=$(( $maxRange - $minRange ))
arrayCounter=0
declare -a outputArray
declare -a array

#Stores value of minRange in array and iterates
for (( i=0 ; i<=$numInBetween ; i++ ))
do
	flag=1
	array[i]=$minRange
	((minRange++))
	if [ ${array[$i]} -ge 10 ]
	then
		flag=0
		num=${array[$i]}
		valueLength=${#array[$i]}

		#Takes one number from range and stores each digit in a new array
		for (( j=0 ; j<$(($valueLength-1)) ; j++ ))
		do
			numArray[j]=$(($num%10))
			num=$(($num/10))
			if [ $num -lt 10 ]
			then
				numArray[(($j+1))]=$num
			fi
		done

		#Compares all consecutive digits
		for (( k=0 ; k<$(($valueLength-1)) ; k++ ))
		do
			if [ ${numArray[$k]} -ne ${numArray[$(($k+1))]} ]
			then
				flag=1
				break
			fi
		done
	fi
	#Stores repeated digits in new array
	if [ $flag -eq 0 ]
	then
		outputArray[$arrayCounter]=${array[$i]}
		((arrayCounter++))
	fi
done
echo ${outputArray[@]}
