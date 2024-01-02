#!/bin/bash

FUNCTION()
{
    for ((NUMBER=1; NUMBER<=$1; NUMBER++))
    do
        echo "Number${NUMBER}: ${NUMBER}"
    done
}

FUNCTION $1
