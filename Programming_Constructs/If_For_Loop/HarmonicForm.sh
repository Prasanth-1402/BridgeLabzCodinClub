#!/bin/bash
sum=0
read -p "Enter the limit : " limit
for(( counter=1; counter<=limit; counter++ ))
do	
	div=`echo 1 $counter | awk '{print $1/$2}' | bc `		
	sum=`echo  $div $sum | awk '{print $2=$1+$2}' | bc `
	echo Harmonic Sum till 1/$counter is $sum
done
echo SUM = $sum

