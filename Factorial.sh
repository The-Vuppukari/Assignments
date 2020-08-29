#!/bin/bash -x

read -p "Enter the number : " number
factorial=1
temp="1"
for (( i=2 ; i<=$number ; i++ ))
do
        factorial=$(( factorial*i ))
        temp="$temp"*"$i"
done
echo " Factorial of $number ! = "$temp" = "$factorial" "
