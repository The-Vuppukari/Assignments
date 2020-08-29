#!/bin/bash -x
read -p "Enter a Number : " number
if [ $(($number%10)) -eq $number ]
then
        singleDigitNumber=$number
fi
if [[ $singleDigitNumber -eq 1 ]]
then
        echo "One"
elif [[ $singleDigitNumber -eq 2 ]]
then
        echo "Two"
elif [[ $singleDigitNumber -eq 3 ]]
then
        echo "Three"
elif [[ $singleDigitNumber -eq 4 ]]
then
        echo "Four"
elif [[ $singleDigitNumber -eq 5 ]]
then
        echo "Five"
elif [[ $singleDigitNumber -eq 6 ]]
then
        echo "Six"
elif [[ $singleDigitNumber -eq 7 ]]
then
        echo "Seven"
elif [[ $singleDigitNumber -eq 8 ]]
then
        echo "Eight"
elif [[ $singleDigitNumber -eq 9 ]]
then
        echo "Nine"
else
        echo "The given number is not a Single digit number"
fi

