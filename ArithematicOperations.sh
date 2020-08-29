#!/bin/bash -x

read -p "Enter a value" a
read -p "Enter b value" b
read -p "Enter c value" c

exp1=$(( $a + $b * $c ))
exp2=$(( $c + $a / $b ))
exp3=$(( $a % $b + $c ))
exp4=$(( $a * $b + $c ))

if [[ $exp1 -ge $exp2 && $exp1 -ge $exp3 && $exp1 -ge $exp4 ]];
then
        echo " exp1=$exp1 is the maximum "
elif [[ $exp2 -ge $exp1 && $exp2 -ge $exp3 && $exp2 -ge $exp4 ]];
then
   echo " exp2=$exp2 is the maximum "
elif [[ $exp3 -ge $exp1 && $exp3 -ge $exp2 && $exp3 -ge $exp4 ]];
then
   echo " exp3=$exp3 is the maximum "
elif [[ $exp4 -ge $exp1 && $exp4 -ge $exp2 && $exp4 -ge $exp3 ]];
then
   echo " exp4=$exp4 is the maximum "
fi
if [[ $exp1 -le $exp2 && $exp1 -le $exp3 && $exp1 -le $exp4 ]];
then
   echo " exp1=$exp1 is the minimum "
elif [[ $exp2 -le $exp1 && $exp2 -le $exp3 && $exp2 -le $exp4 ]];
then
   echo " exp2=$exp2 is the miniimum "
elif [[ $exp3 -le $exp1 && $exp3 -le $exp2 && $exp3 -le $exp4 ]];
then
   echo " exp3=$exp3 is the minimum "
elif [[ $exp4 -le $exp1 && $exp4 -le $exp2 && $exp4 -le $exp3 ]];
then
   echo " exp4=$exp4 is the minimum "
fi
