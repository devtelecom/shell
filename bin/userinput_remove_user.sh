#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
AQUA="\033[36m"
RESET="\033[0m"

read -p "Enter user name: " username

#echo -e "$GREEN user wants to delete $username system" $RESET

if grep -qi $username /etc/passwd
    then echo -e "$GREEN User Found!! $RESET " 
         sleep 1 
         echo -e "Removing user from system" 
         sleep 2
         userdel -r $username
         sleep 3
         echo -e "$GREEN username  $username deletion from OS is Successul:" $RESET
else
      echo -e "$YELLOW Sorry $username  not Found in OS!!" $RESET
fi
