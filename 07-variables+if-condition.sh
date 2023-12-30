#/bin/bash

echo "USERNAME:"
read -s username
echo "PASSWORD:"
read -s password

username=admin
password=hello

if [ $username = admin ];
then
    echo "username is correct"
else
    echo "username is incorrect"
fi

