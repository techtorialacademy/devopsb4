#!/bin/bash
#Create a bash script that takes student name as command line argument and
# checks if the student_name exists in the file. If student name exists in the file
# check if the student scored higher than 90 and print student exists and scored
# higher than 90. If student exists but not scored higher than 90 then
# print scored lower than 90 and exists.
# If student doesnt exist in the file then print Student record can't be found.

st_name=$1

#How can I check if the  studentgrades.csv contains the student name?
line=$(grep "$st_name" studentgrades.csv)
#Script above will get the line that contains value of $st_name. 
#What if there is no line that contains the $st_name? Then variable line would be EMPTY
if [ -n "$line" ]
then
   #If the variable line is NOT EMPTY this code is going to get executed.
   grade=$(echo $line | cut -d',' -f2)
   if [ $grade -gt 90 ]
   then
      echo "$st_name exists and grade of student is higher than 90"
   else
      echo "$st_name exist but grade of student is NOT higher than 90"
   fi
else
   echo "Can't find a student record with name $st_name ."
fi










