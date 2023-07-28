#!/bin/bash

student_name=$1

#From the file i have to find the line that student name exists
grade_of_student=$(grep "$student_name" studentgrades.csv | cut -d',' -f2)

if [ $grade_of_student -gt 80 ]
then
   echo "$student_name passed the class"
else
   echo "$student_name was not able to pass the class"
fi


