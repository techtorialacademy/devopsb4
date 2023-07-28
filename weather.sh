#!/bin/bash

#Write a bash script that checks if the file exists, if so
#it should read the weather report for `San Francisco` and `New York`
#if the temperature in SF is higher than NY, it should print It is warmer in SF than in NY,
#otherwise print it is colder in SF than in NY.
filename=$1

#check if the file exists
if [ -e $filename ]
then
   SF_temp=$(grep -A1 "San Francisco" $filename | tail -n 1 | cut -d":" -f2)
   NY_temp=$(grep -A1 "New York" $filename | tail -n 1 | cut -d":" -f2)
   if [ $SF_temp -gt $NY_temp ]
   then
      echo "It is warmer in SF than in NY"
   else
      echo "It is colder in SF than in NY"
   fi
else
   echo "$filename doesn't exists"
fi


