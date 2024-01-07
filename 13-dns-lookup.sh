#!/bin/bash

READ_FILE=$(cat 14-IP-Addresses)

while IFS= read -r line
do 
    nslookup "$line" | awk '/^Name:/ {name=$2} /^Address:/ {ip=$2} END {print ip, name}' >> /home/centos/rough-practice/first.log 
done <<< "$READ_FILE"

# Print IP addresses and FQDNs
while read -r IP_Address FQDN
do 
    echo "$IP_Address $FQDN"
done < /home/centos/rough-practice/first.log
