#!/bin/bash 

function FtoC(){
	F=$1
	firstInput=$(( F-32 ))
	secondInput=$(echo "scale=3; 5/9" | bc)
	C=$(echo "scale=3; $firstInput * $secondInput" | bc )
	echo The Converted value is $C
}

function CtoF(){
	C=$1
	firstInput=$(echo "scale=3; 9/5" | bc)
	inputConversion=$(echo "scale=3; $C*$firstInput" | bc ) 
	F=$(echo "scale=3; $inputConversion + 32" | bc )
	echo The Converted Value is $F
}


echo "1.Convert from F to C "
echo "2.Convert from C to F "
read -p "Your Choice :" conversion
if [ $conversion -eq 1 ]
then
	read -p "Enter the Fahrenhiet Value :" f
	FtoC $f
else
	read -p "Enter the celsius Value : " c
	CtoF $c
fi
