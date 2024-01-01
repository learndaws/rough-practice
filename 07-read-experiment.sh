#!/bin/bash

echo "Enter USERNAME:"

read -s ADMIN

echo "Enter PASSWORD:"

read -s HELLO

if [ ${ADMIN} -eq admin ];
then
echo "Correct Credentials"
else
echo "Incorrect Credentials"
fi