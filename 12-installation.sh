#!/bin/bash

USERID=$(id -u)  # It will check weather the user is root user or not (id -u)

if [$USERID -ne 0]; then
    echo "Please run this script with root user"
    exit 1  # It stops the script reteurn status code '1' (error/failure)
fi

# Installing Nginx
echo "Installing Nginx"
dnf install nginx -y    # It will install the Nginx

if [$? -ne 0]; then # Previous command status($?) not success it will exit the script
    echo "Installing Nginx...Failure"
    exit 1
else 
    echo "Installing Nginx...Success"
fi

# Installing Mysql

echo "Installing Mysql..."
dnf install mysql -y
if [$? -ne 0]; then
    echo "Installing Mysql...Failure"
    exit 1
else 
    echo "Installing Mysql...Success"
fi

# Installing Nodejs

echo "Installing NodeJs.."
dnf install nodejs -y
if [$? -ne 0]; then
    echo "Installing Nodejs...Failure"
    exit 1
else
    echo "Installing Nodeja...SUCCESS"
fi