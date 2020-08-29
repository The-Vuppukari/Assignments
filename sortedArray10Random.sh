#!/bin/bash -x

for (( counter=0; counter<10; counter++ ))
do
        randomArray[((counter))]=$((RANDOM%900+100))
done

echo -n "Second greatest is: "
printf '%s\n' "${randomArray[@]}" | sort -nr | head -2 | tail -1

echo -n "second least is: "
printf '%s\n' "${randomArray[@]}" | sort -n | head -2 | tail -1

echo "The array is: ${randomArray[@]}"
