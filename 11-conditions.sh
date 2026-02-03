#!/bin/bash

echo "Please enter a Number : "
read Number

if [ $Number -gt 10 ]; then
    echo "Entered Number is $Number greater than 10"
elif [ $Number -eq 10 ]; then
    echo "Entered Number is $Number is equal 10"
else
    echo "Entered Number is $Number less than 10"
fi