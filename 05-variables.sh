#!/bin/bash

# read the input from the command line

echo "Hi, Please enter your username"
read username
echo "Please enter your password"
read -s -p password

echo "Welcome, $username..your password is $password" 