#!/bin/bash -x

read -p "Enter the Number : " N

number=$N
i=1
primeFactors=1
factors=2
for (( factors=2 ; $number%$factors!=0 ; factors++))
do
        factors=$factors
done
for (( factors=$factors ; $primeFactors*$i<$N ; factors=$i ))
do
        primeFactors=$primeFactors*$factors
        i=$factors
        number=$(( $number / $i ))
        echo "prime factors of $N = $primeFactors*$factors"
        if [[ $(( $number % $i )) -ne 0 && $(( $primeFactors * $i )) -lt $N ]]
        then
                for (( i=$i ; $number%$i != 0 ; $i ))
                do
                        i=$(( $i + 1 ))
                done
        fi
done

