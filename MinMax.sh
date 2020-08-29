#!/bin/bash -x

rand1=$(( 100+ RANDOM%900 ))
rand2=$(( 100+ RANDOM%900 ))
rand3=$(( 100+ RANDOM%900 ))
rand4=$(( 100+ RANDOM%900 ))
rand5=$(( 100+ RANDOM%900 ))

echo $rand1 $rand2 $rand3 $rand4 $rand5

if [[ $rand1 -gt $rand2 && $rand1 -gt $rand3 && $rand1 -gt $rand4 && $rand1 -gt $rand5 ]]
then
        echo " Random number1 $rand1 is a Max number "
fi
if [[ $rand1 -lt $rand2 && $rand1 -lt $rand3 && $rand1 -lt $rand4 && $rand1 -lt $rand5 ]]
then
        echo " Random number1 $rand1 is a Min number "
fi
if [[ $rand2 -gt $rand1 && $rand2 -gt $rand3 && $rand2 -gt $rand4 && $rand2 -gt $rand5 ]]
then
   echo " Random number2 $rand2 is a Max number "
fi
if [[ $rand2 -lt $rand1 && $rand2 -lt $rand3 && $rand2 -lt $rand4 && $rand2 -lt $rand5 ]]
then
   echo " Random number2 $rand2 is a Min number "
fi
if [[ $rand3 -gt $rand1 && $rand3 -gt $rand2 && $rand3 -gt $rand4 && $rand3 -gt $rand5 ]]
then
   echo " Random number3 $rand3 is a Max number "
fi
if [[ $rand3 -lt $rand1 && $rand3 -lt $rand2 && $rand3 -lt $rand4 && $rand3 -lt $rand5 ]]
then
   echo " Random number3 $rand3 is a Min number "
fi
if [[ $rand4 -gt $rand1 && $rand4 -gt $rand2 && $rand4 -gt $rand3 && $rand4 -gt $rand5 ]]
then
   echo " Random number4 $rand4 is a Max number "
fi
if [[ $rand4 -lt $rand1 && $rand4 -lt $rand2 && $rand4 -lt $rand3 && $rand4 -lt $rand5 ]]
then
   echo " Random number4 $rand4 is a Min number "
fi
if [[ $rand5 -gt $rand1 && $rand5 -gt $rand2 && $rand5 -gt $rand3 && $rand5 -gt $rand4 ]]
then
   echo " Random number5 $rand5 is a Max number "
fi
if [[ $rand5 -lt $rand1 && $rand5 -lt $rand2 && $rand5 -lt $rand3 && $rand5 -lt $rand4 ]]
then
   echo " Random number5 $rand5 is a Min number "
fi

