#!/bin/bash -x

read -p " Enter the Number : " number
flag=0
function PrimeNumber(){
	number=$1
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
		flag=$number
	fi
}

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

PrimeNumber $number
Pallindrome $number

if [[ $flag -eq $reverse ]]
then
	echo " The $number is Pallindrome and prime "
else
	echo " Not both Prime Pallindrome Number "
fi
