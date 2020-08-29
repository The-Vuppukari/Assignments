#!/bin/bash -x

echo " Press 1 if the conversion type is degF "
echo " Press 2 if the conversion type is degC "

read -p " Select the Conversion type : " type
read -p " Enter the Value: " inputValue
function convertToDegF(){
	if [[ $inputValue -ge 0 ]] && [[ $inputValue -le 100 ]]
	then
		awk " BEGIN {print ($inputValue*9/5) + 32 }"
	else
		echo "Value not within freezing and boiling point of water "
	fi
}

function convertToDegC(){
   if [[ $inputValue -ge 32 ]] && [[ $inputValue -le 212 ]]
   then
      awk " BEGIN {print ($inputValue*9/5) + 32 }"
   else
      echo "Value not within freezing and boiling point of water "
   fi
}
case $type in
	1)
		echo "$(convertToDegF $inputValue)"
		;;
	2)
		echo "$(convertToDegC $inputValue)"
		;;
esac
