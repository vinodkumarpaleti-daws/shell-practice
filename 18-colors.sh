# This script shows how the color codes we can enable in Shell Script

#!/bin/bash

R="\e[31m"  # It will print in Red Color
G="\e[32m"  # It will print in Green Color
Y="\e[33m"  # It will print in Yellow Color
B="\e[34m"  # It will print in Blue Color
P="\e[35m"  # It will print in Pink Color
N="\e[0m"   # It will print in Normal Color

echo -e "$G Hello Vinod. $Y How are you? $B Welcome to the Shell Script $P take you seat $R WOW $N Nice!"
