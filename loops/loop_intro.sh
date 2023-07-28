#!/bin/bash

for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

#Let's do same thing above with while loop as well.

echo "USING WHILE LOOP"

counter=1

while [ $counter -le 5 ]
do
   echo "COUNT: $counter"
   counter=$(($counter+1))
done
