# This script will install the packages and check if the packages are already available or not.

#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-sript/"
LOGS_FILE="$LOGS_FOLDER/$0.logs"

if [ $USERID -ne 0 ]; then
    echo " Run this Script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER  # It will create the logs folder if it does not exist.

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2.....FAILURE" | tee -a $LOGS_FILE
    else
        echo "$2....SUCCESS" | tee -a $LOG_FILE
    fi
}

# Here we validate weather Package exists or not

for package in $@
do
  dnf list installed $package &>>$LOGS_FILE
  if [ $? -ne 0 ]; then
    echo "$package not Installed...Installing now"
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "Installing $package"
  else
    echo "$package already installed..skiping installation"
  fi 
done
