#!/bin/bash 
shopt -s extglob
read -p "Enter First Name: " Fname

pat="^[A-Z]{1}[a-zA-z]{2,}"

if [[ $Fname =~ $pat ]]
then
	 read -p "Enter Last Name: " Lname
   if [[ $Lname =~ $pat ]]
   then
      echo First and Last Names are Verified and Valid
   else
      echo Improper Last Name - Invalid
   fi
else
	echo Invalid First Name
fi


read -p "Enter Email-ID : " mailID

Emailpat="^[a-z0-9]+([.+-]{1}[a-z0-9]{3,}){0,2}\@[a-z]+([.]{1}[a-z]{2,4}){1,2}$"


if [[ $mailID =~ $Emailpat ]]
then

	echo Email-ID  is  valid
else
	echo Invalid Email-ID 
fi


read -p "Enter your mobile Number: " phNumber
phNumPattern="^91[[:space:]]{1}[0-9]{10}"

if [[ $phNumber =~ $phNumPattern ]]
then
	echo Valid Number
else
	echo Invalid Number
fi


read -p "Enter the Password: " pwd


if [[ $pwd =~ ^(.{0,7}|[^A-Z]*|[^0-9]*|[@#$%]{2,})$ ]]
then 
        echo Password is Invalid
else
	echo Password is Valid
fi


