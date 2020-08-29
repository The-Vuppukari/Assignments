#!/bin/bash -x

read -p "Enter the Number: " number

for (( i=2; i<=$number/2 ; i++ ))
do
        if [[ $(( $number % $i )) -eq 0 ]]
        then
                temp=1
        fi
done
if [[ $temp -eq 1 ]]
then
        echo "The $number is Not a Prime Number"
else
        echo "The $number is Prime"
fi

