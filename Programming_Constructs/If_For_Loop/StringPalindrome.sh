#!/bin/bash -x
read -p "Enter a String to Check For Palindrome : " InputString
echo $InputString
newInput=$(tr '[:lower:]' '[:upper:]' <<<"$InputString")
echo $newInput
reverse=`echo $newInput | rev`
if [ $reverse == $newInput ]
then 
	echo THE GIVEN STRING IS A PALINDROME
else
	echo THE GIVEN STRING IS NOT A PALINDROME
fi
