#!/bin/bash

#Except the first line in the bash shell starting the line with # symbol is going to create comments.
#Which will not be included in executing process.

#I need to list all directories and files and save them in a new file

ls | tee directoriesandfiles
