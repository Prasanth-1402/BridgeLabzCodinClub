#!/bin/bash 
read -p "Enter the Date : " date
read -p "Enter the Month : " month
case $month in 
3) if(( $date > 20 )); then
	  if(( $date < 32 )); then
		echo VALID DATE FROM MARCH
	  fi
	else
		echo INVALID DATE
	fi
		;;
4) if(($date > 0)); then
		if(( $date < 31 )); then
			echo VALID DATE FROM APRIL
 		fi
	else
		echo INVALID DATE
	fi
		;;
5)  if(($date > 0)); then
      if(( $date < 32 )); then
         echo VALID DATE FROM MAY
      fi
   else
      echo INVALID DATE
   fi
      ;;
6) if(( $date < 20 )); then
     if(( $date > 0 )); then
      echo VALID DATE FROM JUNE
     fi
   else
      echo INVALID DATE
   fi
      ;;
*) echo INVALID MONTH
	;;
esac
