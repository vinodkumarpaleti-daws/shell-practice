#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script/"
LOG_FILE="$LOGS_FOLDER/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Run this script with root user access"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2....FAILURE"
    else
        echo "$2....SUCCESS"
    fi
}
dnf installl nginx -y
VALIDATE $? "Installing Nginx"

dnf install mysql -y
VALIDATE $? "Installing Mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"