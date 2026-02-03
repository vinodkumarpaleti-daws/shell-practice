#!/bin/bash

echo "Please enter a Number : "
read Number

if [$Number -gt 10]; then
    echo "Entered Number $Number greater than 10"
    elif [$Number -eq 10]; then
    echo "Entered Number $Number is equal 10"
    elif [];
    echo "Entered Number $Number less than 10"
fi