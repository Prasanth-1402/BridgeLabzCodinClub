#!/bin/bash -x
read -p "Enter a multiple of ten :" input
if [ $input -eq 10 ]
then
	echo TEN
elif [ $input -eq 100 ]
then 
	echo HUNDRED
elif [ $input -eq 1000 ]
then
	echo THOUSAND
elif [ $input -eq 10000 ]
then
	echo TEN THOUSAND
elif [ $input -eq 100000 ]
then
	echo ONE LAKH
else
	echo Invalid Input
fi

