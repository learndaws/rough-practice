#!/bin/bash

echo "Enter USERNAME:"

read -s ADMIN

echo "Enter PASSWORD:"

read -s HELLO

if [ $ADMIN != testadmin ];
    then 
        echo "username is incorrect"
        exit 1
    else
        echo "username is correct"
fi 

if [ $HELLO != testpassword ];
    then 
        echo "password is incorrect"
    else
        echo "password is correct"
fi 


echo "Entered username is ${ADMIN}"
echo "Entered password is ${HELLO}"