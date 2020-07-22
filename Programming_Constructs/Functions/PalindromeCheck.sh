#!/bin/bash 
echo -n “Let us Check for Palindrome \! ”
read -p "Enter the First Value : " number1
read -p "Enter the Second Value : " number2


function CheckPalindrome(){
	num1=$1
	num2=$2
	reverse=0
	while(($num1 > 0))
	do
		digit=$(( num1%10 ))
		reverse=$(( digit + $(( reverse*10 )) ))
		num1=$(( num1/10 ))
	done
	if [ $reverse -eq $num2 ]
	then
		echo -n "They are Palindrome"
	else
		echo -n "Sorry, Not a Palindrome!"
	fi 
		
}
CheckPalindrome $number1 $number2
