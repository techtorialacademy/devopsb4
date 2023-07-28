#!/bin/bash

#Find all error messages with application names in the logs. Use a combination of grep and awk to achieve this.

#timestamp,app_name,log_level,message > structure of the log file.

grep -i "error" application.log | awk -F ',' '{print $2,$4}' 

#Count the number of error messages per application. Use awk and sort for this.

grep -i "error" application.log | awk -F ',' '{print $2}' | sort | uniq -c


#Replace `all` WARNING messages with WARN.

sed 's/WARNING/WARN/g' application.log
#Since the sed command used without `i` option, original file will not be changed.



#Find out how many unique applications are in the logs.

awk -F ',' '{print $2}' application.log | sort | uniq

