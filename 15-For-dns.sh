#!/bin/bash

READ_FILE=$(cat 14-IP-Addresses)

for STORE in $READ_FILE 
do 
    nslookup $line | grep name &>> /home/centos/rough-practice/latest.log 
done