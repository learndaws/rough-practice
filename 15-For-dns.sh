#!/bin/bash

#Below is a error program so don't trust

READ_FILE=$(cat 14-IP-Addresses)
echo "$READ_FILE"

for STORE in $READ_FILE 
do 
    nslookup $line | grep name &>> /home/centos/rough-practice/latest.log 
done