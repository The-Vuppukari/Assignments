#!/bin/bash -x

read -p " Enter a number to check if pallindrome are not: " firstNumber
read -p " Enter a number to check if Pallindrome are not: " SecondNumber

function Pallindrome(){
	input=$1
	reverse=0
	while [[ $input -gt 0 ]]
	do
		a=$(( $input%10 ))
		input=$(( $input/10 ))
		reverse=$(( ($reverse*10)+a ))
	done
	if [[ $1 -eq $reverse ]]
	then
	echo "The $1 is a palindrome"
	else
	echo "The $1 is not a palindrome"
	fi
}

echo " $( Pallindrome $firstNumber ) "
echo " $( Pallindrome $SecondNumber ) "

