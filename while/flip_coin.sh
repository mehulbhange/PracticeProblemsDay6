#!/bin/bash -x

head=0
tails=0

while [[ $head -lt 11 && $tails -lt 11 ]]
do
    random=$((RANDOM%2))
    if [ $random -eq 1 ]
    then   
        ((head++))
        echo "Head : $head"
    else
        ((tails++))
        echo "Tails : $tails"
    fi
done