#!/bin/bash -x
read -p "Enter a Number : " input
case $input in 
10) echo TEN ;;
100) echo HUNDRED ;;
1000) echo THOUSAND ;;
10000) echo TEN THOUSAND ;;
100000) echo ONE LAKH ;;
*) echo "INVALID INPUT" ;;
esac
