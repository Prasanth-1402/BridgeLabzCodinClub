#!/bin/bash 
read -p "Enter a Number :" number
count=0

prime(){
	for((counter=2;counter<=$(( number/2 ));counter ))
	do
		if [ $(( $1/counter )) -eq 0 ]
		then
			count=$count+1
		fi
	if [ count -eq 0 ]
	then 
		echo IT IS A PRIME NUMBER
	fi
	done

echo prime $number
