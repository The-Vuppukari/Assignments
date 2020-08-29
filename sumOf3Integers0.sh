#!/bin/bash -x

declare -a array
read -p "Enter length of array: " arrayLength
for (( counter=0; counter<$arrayLength; counter++ ))
do
	read -p "Enter array values: " arrayValue
	array[counter]=$arrayValue
done
for (( i=0; i<$(($arrayLength-2)); i++ ))
do
	for (( j=$(($i+1)); j<$(($arrayLength-1)); j++ ))
	do
		for (( k=$(($j+1)); k<$arrayLength; k++ ))
		do
			if [ $((${array[$i]}+${array[$j]}+${array[$k]})) == 0 ]
			then
				echo "Sum of ${array[$i]} ${array[$j]} ${array[$k]} are zero"
			fi
		done
	done
done
