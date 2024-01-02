#!/bin/bash

FUNCTION()
{
    for ((NUMBER=1; NUMBER<=$1; NUMBER++))
    for ((NUMBER=1; NUMBER<=$2; NUMBER++))
    do
        echo "Number: ${NUMBER}"
    done
}

FUNCTION $1 $2
