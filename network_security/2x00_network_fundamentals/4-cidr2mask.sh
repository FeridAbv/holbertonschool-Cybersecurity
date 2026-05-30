#!/bin/bash

cidr=$1

for i in 1 2 3 4
do
    if [ $cidr -ge 8 ]; then
        octet=255
        cidr=$((cidr-8))
    else
        octet=$((256-2**(8-cidr)))
        [ $cidr -eq 0 ] && octet=0
        cidr=0
    fi

    printf "%d" "$octet"
    [ $i -lt 4 ] && printf "."
done

echo
