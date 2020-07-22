#!/bin/bash -x
read -p "Enter a Number to find its Factorial : " number
factorialValue=1
echo $factorialValue factorial - $factorialValue! = 1
for((counter=2;counter<=number;counter++))
do
	factorialValue=$(( counter * factorialValue ))
	echo * $counter
done
echo = $factorialValue
