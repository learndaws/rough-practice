#!/bin/bash

# Clear the existing content of the log file
> /home/centos/rough-practice/first.log

while IFS= read -r line
do 
    result=$(nslookup "$line" | awk '/Name:/{name=$2} /Address:/{ip=$2} END{print ip, name}')
    echo "$result" >> /home/centos/rough-practice/first.log
done < 14-IP-Addresses

# Print IP addresses and FQDNs
cat /home/centos/rough-practice/first.log
