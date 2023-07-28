#!/bin/bash

#Check if the number is not in between 10 and 20 inclusive
num=30

if [ $num -lt 10 ] || [ $num -gt 20 ]
then
   echo "$num is not between 10 and 20"
else
   echo "$num is between 10 and 20 inclusive"
fi


