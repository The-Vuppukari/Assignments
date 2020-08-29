#!/bin/bash -x

read -p "Enter the Number: " n

pow=1
value=0

while [ $pow -le $n ] && [ $value -le 256 ]
do
	echo "2 power of $pow = $value"
	value=$(( 2**$pow ))
	$(( pow++ ))
done

