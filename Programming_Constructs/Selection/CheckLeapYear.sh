#!/bin/bash -x
read -p "Enter a Year :" year

if [ $((year % 4)) -eq 0 ]
then
  if [ $((year % 100)) -eq 0 ]
    then
    if [ $((year % 400)) -eq 0 ]
          then
        echo "It is a Leap Year"
    else
           echo "It is Not a Leap Year"
    fi
  else
  echo "It is a Leap Year"
  fi
else
 echo "It is Not a Leap Year"
fi
