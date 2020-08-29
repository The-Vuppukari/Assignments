#!/bin/bash -x
read -p "Enter the Day number: " dayNumber
case $dayNumber in
        1)
                echo "Sunday"
                ;;
        2)
                echo "Monday"
                ;;
        3)
                echo "Tuesday"
                ;;
        4)
                echo "Wednesday"
                ;;
        5)
                echo "Thursday"
                ;;
        6)
                echo "Friday"
                ;;
        7)
                echo "Saturday"
                ;;
        *)
                echo "The day you entered is not present"
                ;;
esac

