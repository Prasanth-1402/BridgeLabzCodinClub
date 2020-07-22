≈#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empSalary=2000;
empCheck=$((RANDOM%3))

case $empCheck in
	$isFullTime )
		empHr=8 
		;;
	$isPartTime )
		empHr=4 
		 ;;
	* )
		empHr=0 
		 ;;
esac
	echo $(($empHr*$empSalary))
