#!/bin/bash

num=15

#Check if the variable num above is between 10 and 20 exclusive

if [ $num -gt 10 ] && [ $num -lt 20 ]
then
   echo "Number is betwen 10 and 20"
else
   echo "Number is not between 10 and 20"
fi



