#!/bin/bash

READ_FILE=$(cat 14-IP-Addresses)

while IFS= read -r line
do 
    nslookup $line | grep name &>> /home/centos/rough-practice/first.log 

done <<< $READ_FILE

while IFS=" " read -r IP_Address name equals FQDN
do 
    echo  "$IP_Address"
    echo  "$name"
    echo  "$equals"
    echo  "$FQDN"

done < /home/centos/rough-practice/first.log