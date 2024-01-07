#!/bin/bash

READ_FILE=$(cat 14-IP-Addresses)

# Clear the existing content of the log file
> /home/centos/rough-practice/first.log

while IFS= read -r line
do 
    result=$(nslookup "$line" | grep -E "Name:|Address:" | awk '{print $2}')
    IP_Address=$(echo "$result" | awk 'NR==1')
    FQDN=$(echo "$result" | awk 'NR==2')
    echo "$IP_Address $FQDN" >> /home/centos/rough-practice/first.log
done <<< "$READ_FILE"

# Print IP addresses and FQDNs
while read -r IP_Address FQDN
do 
    echo "$IP_Address $FQDN"
done < /home/centos/rough-practice/first.log
