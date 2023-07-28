#!/bin/bash

#We know values for the variables can come from outside the file
#There are two ways to get the value from outside the file  
# 1 -> Command line arguments $1, $2 etc
# 2-> Using read command we will be able to read the  given input

#Read command will ask the necessary input by interupting the running process, while command line arguments
#must be provided before the code execution starts.
#Let's create a one variable and get the value for that variable from the commandline argument
num1=$1 #num1 is assigned using command line argument.
read -p "Enter the second num: " num2 #In this case num2 is assigned using the read command.

#Let's find sum of given two numbers above
sum=$((num1+num2)) 
echo "Addition of $num1 and $num2 is $sum"

#read command: The `read` command is used to get input from the user interactively while the script is running.
#It is beneficial when you want to ask the user for input during the execution of the script. 

#command line arguments: They are used to provide input when script is invoked. They are beneficial when you know the inputs 
#at the time of invoking the script and you don't want or need user interaction during the execution. 

