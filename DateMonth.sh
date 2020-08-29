#!/bin/bash -x

read -p " Enter the Date: " Date
read -p " Enter the Month: " Month

if [[ $Date -gt 20 && $Date -le 31 && "$(echo $Month | tr '[:upper:]' '[:lower:]')" == "march" ]]
then
        echo " True "
        true=1
fi
if [[ $Date -ge 1 && $Date -le 30 &&  "$(echo $Month | tr '[:upper:]' '[:lower:]')" == "april" ]]
then
   echo " True "
        true=1
fi
if [[ $Date -ge 1 && $Date -le 31 &&  "$(echo $Month | tr '[:upper:]' '[:lower:]')" == "may" ]]
then
   echo " True "
        true=1
fi
if [[ $Date -ge 1 && $Date -lt 20 &&  "$(echo $Month | tr '[:upper:]' '[:lower:]')" == "june" ]]
then
   echo " True "
        true=1
fi
if [[ $true -ne 1 ]]
then
        echo " False "
fi

