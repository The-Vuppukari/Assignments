#!/bin/bash -x

echo "Creating five Random two digit values"
Value1=$(( 10+ RANDOM %90 ))
echo "First Value = $Value1"
Value2=$(( 10+ RANDOM %90 ))
echo "Second Value = $Value2"
Value3=$(( 10+ RANDOM %90 ))
echo "Third Value = $Value3"
Value4=$(( 10+ RANDOM %90 ))
echo "Fourth Value = $Value4"
Value5=$(( 10+ RANDOM %90 ))
echo "Fifth Value = $Value5"

SumOfValues=$(( $Value1 + $Value2 + $Value3 + $Value4 + $Value5 ))
echo "The Sum of all the five values = $SumOfValues"

AverageOfValues=$(echo $SumOfValues | awk '{printf "%0.3f\n",$SumOfValues/5}')
echo "The Average of the Values = $AverageOfValues"
