#!/bin/bash -x

read -p "Enter the number: " Number
if [[ $Number -eq 1 ]]
then
        echo "Unit"
elif [[ $Number -eq 10 ]]
then
        echo "Ten"
elif [[ $Number -eq 100 ]]
then
        echo "Hundred"
elif [[ $Number -eq 1000 ]]
then
        echo "Thousand"
else
        echo "The unit place you entered is not present"
fi
