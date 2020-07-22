#!/usr/local/bin/bash 
declare -A resultContainerDictionary
decalre -a resultContainerArray
read -p "Get a:" a
read -p "Get b:" b
read -p "Get c:" c

#computation
result=$(($((a+b))*$c))
result1=$(($((c+b))*$a))
result2=$(($((a/b))+$c))
result3=$(($((a%b))+$c))

#Putting the computed values inside a dictionary
resultContainerDictionary[FirstResult]=$result
resultContainerDictionary[SecondResult]=$result1
resultContainerDictionary[ThirdResult]=$result2
resultContainerDictionary[FourthResult]=$result3


#storing data from dictionary to array
resultContainerArray[0]=$result
resultContainerArray[1]=$result1
resultContainerArray[2]=$result2
resultContainerArray[3]=$result3



echo SHOWING RESULTS FROM DICTIONARY

echo First_Result=${resultContainerDictionary[FirstResult]}
echo Second_Result=${resultContainerDictionary[SecondResult]}
echo Third_Result=${resultContainerDictionary[ThirdResult]}
echo Fourth_Result=${resultContainerDictionary[FourthResult]}


echo SHOWING RESULTS FROM ARRAY

for((i=0;$i<4;i++))
do
	echo ${resultContainerArray[$i]}
done


echo ARRAY : ${resultContainerArray[*]}


SortedArrayDescending=( $(
    for i in "${resultContainerArray[@]}"
    do
        echo "$i "
    done | sort -nr) )

echo SORTED ARRAY IN DESCENDING ORDER : ${SortedArrayDescending[*]}	


SortedArrayAscending=( $(
    for i in "${resultContainerArray[@]}"
    do
        echo "$i "
    done | sort -n) )

echo SORTED ARRAY IN DESCENDING ORDER : ${SortedArrayAscending[*]}

