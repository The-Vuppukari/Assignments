#!/bin/bash -x

#Array declaration
for (( counter=0; counter<10; counter++ ))
do
	randomArray[((counter))]=$((RANDOM%900+100))
done

#Variables
max=0
largestCounter=0
secondMax=0
least=0
leastCounter=0
secondLeast=0

#Finds the greatest value in array
for (( counter=0; counter<10; counter++ ))
do
	if [ ${randomArray[((counter))]} -gt $max ]
	then
		max=${randomArray[((counter))]}
		largestCounter=$counter
	fi
done

#Finds the second greatest value in array
for (( counter=0; counter<10; counter++ ))
do
	if [ $counter -eq $largestCounter ]
	then
		continue
	elif [ ${randomArray[((counter))]} -gt $secondMax ]
	then
		secondMax=${randomArray[((counter))]}
	fi
done
echo "Maximum: $max SecondMaximum: $secondMax"

least=$max
secondLeast=$max
#Finds the least value in array
for (( counter=0; counter<10; counter++ ))
do
        if [ ${randomArray[((counter))]} -lt $least ]
        then
                least=${randomArray[((counter))]}
                leastCounter=$counter
        fi
done

#Finds the second least value in array
for (( counter=0; counter<10; counter++ ))
do
        if [ $counter -eq $leastCounter ]
        then
                continue
        elif [ ${randomArray[((counter))]} -lt $secondLeast ]
        then
	        secondLeast=${randomArray[((counter))]}
        fi
done
echo "Least: $least SecondLeast: $secondLeast"
echo ${randomArray[@]}
