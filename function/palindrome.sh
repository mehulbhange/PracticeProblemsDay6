#!/bin/bash -x

function isPalindrome(){
    actual_number=$1
    number=$actual_number
    reverse=0

    echo $actual_number
    
    while [ $number -ne 0 ]
    do
        num=$(($number%10))
        reverse=$(($reverse *10 + $num))
        number=$(($number/10))
    done

    if [ $reverse -eq $actual_number ]
    then
        echo "Palindrome"
    else
        echo "Not palindrome"
    fi

}

isPalindrome 1001

isPalindrome 2122

isPalindrome 2002