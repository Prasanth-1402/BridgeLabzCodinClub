#!/bin/bash 
read -p "Enter a Number to find Prime Factors :" input
echo THE PRIME FACTORS ARE : 
for(( i=2;i<=$input;i++ ))
do
  	while [ $(($input%$i)) -eq 0 ]
  	do
		echo  $i
		input=$(($input/$i))
	done
done

