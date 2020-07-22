
#!/bin/bash -x
read -p "Enter the starting Range : " start
read -p "Enter the Ending Range : " end
for(( traverse=$start; traverse<=$end; traverse++ ))
do
	limit=$((traverse/2))
	count=0
	for(( counter=2; counter<=$limit;counter++ ))
	do
  		 value=$(( traverse%counter ))
  		 if [ $value -eq 0 ]
  		 then
      		count=$(( count+1 ))
   	 fi
	done
	if [ $count -eq 0 ]
	then
  		 echo $traverse
	fi
done
