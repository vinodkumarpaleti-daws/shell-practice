# This script will install the packages and check if the packages are already available or not.

#!/bin/bash
R="\e[31m"  # It will print in Red Color
G="\e[32m"  # It will print in Green Color
Y="\e[33m"  # It will print in Yellow Color
B="\e[34m"  # It will print in Blue Color
P="\e[35m"  # It will print in Pink Color
N="\e[0m"   # It will print in Normal Color

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-sript/"
LOGS_FILE="$LOGS_FOLDER/$0.logs"

if [ $USERID -ne 0 ]; then
    echo " $R Run this Script with root user access $N" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER  # It will create the logs folder if it does not exist.

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2.....$R FAILURE $N" | tee -a $LOGS_FILE
    else
        echo "$2....$G SUCCESS $N" | tee -a $LOG_FILE
    fi
}

# Here we validate weather Package exists or not

for package in $@
do
  dnf list installed $package &>>$LOGS_FILE
  if [ $? -ne 0 ]; then
    echo "$G $package not Installed...Installing now. $N"
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "Installing $package"
  else
    echo "$Y $package already installed..skiping installation $N"
  fi 
done
