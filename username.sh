#! /bin/bash
# username.sh
# author: Jimmy Kemp
# date: 10/15/2023
echo -n "Enter your username. Your username can only contain lower case characters, digits, and underscore: "
read -r USER
while true
do
   if ! [[ $USER =~ ^[a-z] ]]
   then
      echo "Username must start ith a lower case character."
   elif ! [[ $USER =~ ^[a-z0-9_]{3,12}$ ]]
   then
      echo "Username can only contain lower case characters, digits, and underscore."
      echo "Username has to be between 3 and 12 characters in length."
   else
      echo "User name is valid."
      exit 0
   fi
   read -p "Please try again: " USER
done
