#!/bin/bash -x
echo "1.Feet to Inch"
echo "2.Feet to Meter"
echo "3.Inch to Feet"
echo "4.Meter to Feet"
read -p "Enter a input : " input
case $input in 
1) read -p "Enter the Feet :" feet
	units "$feet feet" inch
	;; 
2) read -p "Enter the Feet :" feet
	units "$feet feet" meter
	;;
3) read -p "Enter the Inch :" inch
	units "$inch inch" feet
	;;
4) read -p "Enter the Meter : " meter
	units "$meter meter" feet
	;;
*)echo "Invalid Input"
	;;
esac
