#!/bin/bash -x
read -p "Enter the Day number: " dayNumber
if [[ $dayNumber -eq 1 ]]
then
        echo "Sunday"
elif [[ $dayNumber -eq 2 ]]
then
        echo "Monday"
elif [[ $dayNumber -eq 3 ]]
then
        echo "Tuesday"
elif [[ $dayNumber -eq 4 ]]
then
        echo "Wednesday"
elif [[ $dayNumber -eq 5 ]]
then
        echo "Thursday"
elif [[ $dayNumber -eq 6 ]]
then
        echo "Friday"
elif [[ $dayNumber -eq 7 ]]
then
        echo "Saturday"
else
        echo "The day you entered is not present"
fi

