#!/bin/bash

filename="notexist.txt"

#If the file given above doesn't exist print file doesn't exist.

if [ ! -e "$filename" ]
then
   echo "File doesn't exist"
fi


