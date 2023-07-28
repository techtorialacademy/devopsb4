#!/bin/bash

#Let's get the name of server we are interested in from the command line argument

server_name=$1

#Find the line in the servers.txt file, that contains information for the server.
server_info=$(grep "$server_name" servers.txt)

#Let's extract the server's location ,number of users, and uptime from the server_info

location=$(echo "$server_info" | cut -d"," -f2)
users=$(echo "$server_info" | cut -d"," -f3)
uptime=$(echo "$server_info" | cut -d"," -f4)

#Check if the server is located in the US and has more than 200 users


if [ "$location" = "US" ] && [ $users -gt 200 ]
then
   echo "$server_name is located in the US and has more 200 users."
else
   echo "$server_name is NOT located in the US or doesn't have more than 200 users"
fi



#Check if the server is up more than 300 days or has more than 400 users

if [ $uptime -gt 300 ] || [ $users -gt 400 ]
then
   echo "These servers need maintanence"
else
   echo "These servers are not up more than 300 days and they have less than 400 users"
fi

