#!/bin/bash

while IFS= read -r line
do 
    nslookup $line | grep Name: &> /home/centos/rough-practice/new.log 

done <<< 14-IP-Addresses