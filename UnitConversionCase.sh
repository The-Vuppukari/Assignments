#!/bin/bash -x

read -p "Enter your value : " value

read -p "Select your option
                                1 : feets to inch
                                2 : inches to feet
                                3 : feets to meters
                                4 : meters to feets : " option
case $option in
   1)
       convertedValue=$(echo 12 $value | awk '{printf "%0.3f\n",$1*$2}')
       echo "$value ft = $convertedValue in"
        ;;
   2)
      convertedValue=$(echo 0.8333 $value | awk '{printf "%0.3f\n",$1*$2}')
      echo "$value in = $convertedValue ft"
      ;;
   3)
      convertedValue=$(echo 0.3048 $value | awk '{printf "%0.3f\n",$1*$2}')
      echo "$value ft = $convertedValue m"
      ;;
   4)
      convertedValue=$(echo 3.28084 $value | awk '{printf "%0.3f\n",$1*$2}')
      echo "$value m = $convertedValue ft"
      ;;
esac
