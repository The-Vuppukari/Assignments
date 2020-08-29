#!/bin/bash -x

#echo "The argument n is created as it is taken from the command line"
read -p "Enter the n argument: " n

#echo "Intially declaring value as 0"
value=0

#echo "Using for loop to iterate along the loop until the value reaches 2^n"
for (( power=1; power<=n; power++ ))
do
        value=$(( 2**$power ))
        echo "2 power of $power = $value"
done
