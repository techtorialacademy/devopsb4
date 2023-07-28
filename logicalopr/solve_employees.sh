#!/bin/bash

#Write a script that checks if a given employee 
#from the IT department is active, or if the employee is from the Marketing department
# and currently on leave.
#NOTE given emplyee name should come from command line argument. 

emp_n=$1

emp_info=$(grep "$emp_n" employees.txt)

#Extract the emplyee's department and status from the employee info

department=$(echo "$emp_info" | cut -d"," -f2)
status=$(echo "$emp_info" | cut -d"," -f3)

#When you groupd  the commands in if statement they have to be placed in the {} curly braces.
if { [ "$department" = "IT" ] && [ "$status" = "Active" ]; } || { [ "$department" = "Marketing" ] && [ "$status" = "On leave" ]; }
then
   echo "$emp_n meets the criteria"
else
   echo "$emp_n doesn't meet the criteria"
fi

 



