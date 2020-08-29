#!/bin/bash -x
read -p "Enter the year : " year;

if [[ $(($year%4)) -eq 0 && $(($year%100)) -ne 0 || $(($year%400)) -eq 0 ]];
then
        if [[ $(($year%4)) -eq 0 && $(($year%100)) -ne 0 ]];
        then
                echo " $year is a Leap year"
        fi
        if [[ $(($year%400)) -eq 0 ]]
        then
                echo " $year is a Leap year "
        fi
else
        echo " $year is not a leap year "
fi
