#!/bin/bash

FUNCTION()
{
    for ((PRINT_1TO5=1; PRINT_1TO5<=$1; PRINT_1TO5++))
    do
        echo "Number: ${PRINT_1TO5}"
    done
}

FUNCTION $1
