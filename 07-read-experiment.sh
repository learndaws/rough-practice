#!/bin/bash

echo "Enter USERNAME:"

read -s ADMIN

echo "Enter PASSWORD:"

read -s HELLO

if [ $ADMIN == testadmin ];
    then 
        echo "username is correct"
    else
        echo "username is incorrect"
fi 

if [ $HELLO == testpassword ];
    then 
        echo "password is correct"
    else
        echo "password is incorrect"
fi 


echo "Entered username is ${ADMIN}"
echo "Entered password is ${HELLO}"