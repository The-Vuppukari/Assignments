#!/bin/bash -x

read -p "Enter the number: " Number
case $Number in
        1)
                echo "Unit Place"
                ;;
        10)
                echo "Ten place"
                ;;
        100)
                echo "Hundred place"
                ;;
        1000)
                echo "Thousand Place"
                ;;
        *)
                echo "The unit place you entered is not present"
                ;;
esac

