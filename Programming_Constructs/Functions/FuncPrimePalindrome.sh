#!/bin/bash 
read -p "Enter a number to check for Prime and Palindrome : " number


function CheckPalindrome(){
   num=$1
	checkNum=$1
   reverse=0
   while(( $num>0 ))
   do
      digit=$(( num%10 ))
		forRev=$(( reverse * 10 ))
      reverse=$(( digit+forRev ))
      num=$(( num/10 ))
   done
   if [ $reverse -eq $checkNum ]
   then
	   echo -n " Yes, IT IS A PALINDROMEIC PRIME NUMBER !!"
   else
      echo -n " Sorry.It is Prime, But  Not a Palindrome!"
   fi
}


function prime() {
num=$1
count=0
for(( counter=2; counter<=$(( num/2 ));counter++ ))
do

   if [ $num -eq 1 ]
   then
      echo "neither Prime nor Composite"
		return 1
   fi
	if [ $num -gt 1 ]
	then
      value=$(( $num%$counter ))
      if [ $value -eq 0 ]
      then
         count=$(( count+1 ))
      fi
   fi
done

if [ $count -eq 0 ]
then
	if [ $num -gt 10 ]
	then
  		CheckPalindrome $num
	else
		echo "It is a Single Digit Palindrome Number higher than 1 and less than 11"
	fi
else
   echo "Not a Prime Number"
fi
}

if [ $number -eq 1 ]
then
	echo 1 is a PALINDROMIC PRIME NUMBER
elif [ $number -gt 1 ]
then
	prime $number
else
	echo Invalid Input
fi
