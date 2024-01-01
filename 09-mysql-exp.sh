#!/bin/bash

ROOTACCESSCHECK=$(id -u)

INSTALL_4=$4
INSTALL_5=$5

EXIT_CHECK() 
{
    if [ $1 != 0 ];
        then
            echo "$2"
            exit 1
        else
            echo "$3"
fi
}

EXIT_CHECK "$ROOTACCESSCHECK" "FAILURE-1: you don't have root access" "SUCCESS-1: you have root access"


yum install ${INSTALL_4} -y

EXIT_CHECK "$?" "FAILURE-4: Mysql installation is failed" "SUCCESS-4: Mysql installation is success"

yum install ${INSTALL_5} -y

EXIT_CHECK "$?" "FAILURE-5: git installation is failed" "SUCCESS-5: git installation is success"