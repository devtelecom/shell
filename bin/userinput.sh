#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
AQUA="\033[36m"
RESET="\033[0m"

read -p "Enter user name: " username

echo -e " $GREEN user wants to add  $username in system" $RESET

if grep -qi $username /etc/passwd
    then echo -e "$RED Awww!! User already Present $RESET "
else 
    echo -e "Adding user in system" 
    sleep 2
    useradd -m $username
    sleep 3
    echo -e "$GREEN username $username addition in linux box is Successul:" $RESET
fi
