#!/bin/bash -x

read -p "Enter the Number: " number1
read -p "Enter the last number: " number2
for (( number=$number1; number<=$number2; number++ ))
do
        for (( i=2; i<=$number/2 ; i++ ))
        do
                if [[ $(( $number % $i )) -eq 0 ]]
        then
                temp=1
        fi
        done
        if [[ $temp -eq 1 ]]
        then
        temp=0
        else
        temp1="$temp1","$number"
        fi
done
echo "$temp1 are prime numbers"
