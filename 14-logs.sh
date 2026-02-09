#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script/" # It will create the Logs folder in that directory.
LOG_FILE="$LOGS_FOLDER/$0.log"  # It will create the Logs file in that directory.

if [ $USERID -ne 0 ]; then
    echo "Run this script with root user access"| tee -a  $LOG_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER   # Creating the Logs Folder
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2....FAILURE" | tee -a  $LOG_FILE  # tee command will print on the screen and redirect the logs to the Logs file.
    else
        echo "$2....SUCCESS" | tee -a  $LOG_FILE
    fi
}
dnf install nginx -y &>> $LOG_FILE    # &>> $LOGS_FILE -- redirects the logs in the logs file.
VALIDATE $? "Installing Nginx"

dnf installl mysql -y &>> $LOG_FILE
VALIDATE $? "Installing Mysql"

dnf install nodejs -y &>> $LOG_FILE
VALIDATE $? "Installing nodejs"