#!/bin/bash

# Clear the existing content of the log file
> /home/centos/rough-practice/first.log

while IFS= read -r line
do 
    nslookup "$line" | awk '/in-addr.arpa/{ip=tolower($5); sub(/\.$/, "", ip)} /name/{name=tolower($2); sub(/\.$/, "", name)} END {print ip, name}' >> /home/centos/rough-practice/first.log 
done < 14-IP-Addresses

# Print IP addresses and FQDNs
cat /home/centos/rough-practice/first.log
