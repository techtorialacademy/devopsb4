#!/bin/bash

var=$1 #Value for the var is going to be assigned from the outside of file. 

echo "hello $var"

last_name=$2

echo "Your last name is $last_name"
#What happens when the number of command line argument is unknown? 
echo "All arguments $@"
echo "Number of total arguments $#"
