#!/bin/bash -x
read -p "Enter a Number to check for Prime : " Number
limit=$((Number/2))
count=0
for(( counter=2; counter<=$limit;counter++ ))
do
	value=$(( Number%counter ))
	if [ $value -eq 0 ]
	then
		count=$(( count+1 ))
	fi
done
if [ $count -eq 0 ]
then
	echo "Its A Prime Number"
else
	echo "Not a Prime Number"
fi
