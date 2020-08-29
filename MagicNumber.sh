#!/bin/bash -x

StartingNumber=0
EndingNumber=100

MidNumber=0
Choice=4

while [[ $Choice -ne 0 ]]
do
	MidNumber=$(( $(( StartingNumber + EndingNumber)) / 2 ))
	echo " Press 1 if the number is greaterthan $MidNumber : "
	echo " Press 2 if the number is lessthan $MidNumber : "
	echo " Press 3 if the number is equal to the $MidNumber : "
	read -p " Enter the choice " Choice
	case $Choice in
		0)
			echo " The magic number is $MidNumber "
			;;
		1)
			StartingNumber=$MidNumber
			;;
		2)
			EndingNumber=$MidNumber
			;;
	esac
done

