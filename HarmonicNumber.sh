#!/bin/bash -x

read -p "Enter the value of n: " n

Hn=0
for (( temp=1; temp<=n; temp++ ))
do
        value=$(echo $temp | awk '{ printf "%0.4f",1/$1}')
        harmonicNum=$(echo $harmonicNum $value | awk '{ printf "%0.4f",$1+$2}')
        Hn=$Hn+"1"/$temp
done
echo "The nth Harmonic number is 1/$(($temp-1))"
echo "Hn = $Hn = $harmonicNum"
