#!/bin/bash

USERID=$(id -u) # Check the root user

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "$2.....Failure"
    else
        echo "$2.....Success"
    fi
}

dnf install nginx -y 
validate $? "Installing Nginx"  
# Here we are passing two arguments to the validate function.
# In the First Argument it will check the previous command status ($?)
# So, now it will check the 'dnf install nginx -y' command success or not and pass it to the validate function first argument.
# Then if the command success or failure it will pass to the second argument.
# In the second Argument it will check the Installation command.