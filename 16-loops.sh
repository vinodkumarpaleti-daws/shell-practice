#!/bin/bash

USERID=$(id -u) # check the root USER ID
LOGS_FOLDER="/var/logs/shell-script/"
LOGS_FILE="$LOGS_FOLDER/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2......FAILURE" | tee -a $LOGS_FILE
    else
        echo "$2.....SUCCESS"  | tee -a $LOGS_FILE
    fi
}

for package in $@  # Here $@ will initiate the All arguments whatever we pass through command line (Ex: sudo sh 16-loops.sh nginx mysql nodejs)
do
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "Installing $package"
done

# Command to run on the CLI: "sudo sh 16-loops.sh nginx mysql nodejs"
