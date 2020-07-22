#!/bin/bash 
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
num1=$(( a+b*c ))
num2=$(( a%b+c ))
num3=$(( c+a/b ))
num4=$(( a*b+c ))
echo $num1 $num2 $num3 $num4

if(( $num1>$num2 )); then	
	if(( $num1>$num3 )); then
		if(( $num1>$num4 )); then 
			echo "$num1 is Maximum"
		else
			echo "$num4 is Maximum"
		fi
	elif(( $num3>$num4 )); then
		echo "$num3 is Maximum"
	else
		echo "$num4 is Maximum"
	fi
elif(( $num2>$num3 )); then
	if(( $num2>$num4 )); then 
		echo "$num2 is Maximum"
	else
		echo "$num4 is Maximum"
	fi
	elif(( $num3>$num4 )); then
		echo "$num3 is Maximum"
	else
		echo "$num4 is Maximum"
fi

if(( $num1<$num2 )); then
   if(( $num1<$num3 )); then
      if(( $num1<$num4 )); then
         echo "$num1 is Minimum"
      else
         echo "$num4 is Minimum"
      fi
   elif(( $num3<$num4 )); then
      echo "$num3 is Minimum"
   else
      echo "$num4 is Minimum"
   fi
elif(( $num2<$num3 )); then
   if(( $num2<$num4 )); then
      echo "$num2 is Minimum"
   else
      echo "$num4 is Minimum"
   fi
   elif(( $num3<$num4 )); then
      echo "$num3 is Minimum"
   else
      echo "$num4 is Minimum"
fi
