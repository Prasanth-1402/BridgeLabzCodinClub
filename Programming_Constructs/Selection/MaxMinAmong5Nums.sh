#!/bin/bash -x
i=1
while [ $i -le 5 ]
do
	num=${RANDOM:2:3}
	if [ $i -eq 1 ]
	then 
		max=$num
		min=$num
	else
		if [ $num -gt $max ]
		then
			max=$num
		fi
		if [ $num -lt $min ]
		then
			min=$num
		fi
	fi
	i=$(( i+1 ))
done

echo $max $min
