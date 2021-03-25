#!/bin/bash -x

#CONSTANTS
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_RATE_PER_HR=20;
MAX_HRS_IN_MONTH=50;
NUM_WORKING_DAYS=20;

#variables
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do

   ((totalWorkingDays++))
   empCheck=$((RANDOM%3));

   case $empCheck in
      $IS_FULL_TIME)
         workHrs=$(($workHrs+8))
      ;;
      $IS_PART_TIME)
         workHrs=$(($workHrs+4))
      ;;
      *)
         workHrs=$(($workHrs+0))
      ;;
   esac

totalEmpHrs=$(($totalEmpHrs+$workHrs))

done

totalsalary=$(($EMP_RATE_PER_HR*$totalEmpHrs));

