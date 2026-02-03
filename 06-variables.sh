#!/bin/bash

START_TIME=$(date "+%Y-%m-%d %H:%M:%S") # Here this format will give detailed timestamp along with Date

echo "script started executed at: $START_TIME"
sleep 13
END_TIME=$(date "+%Y-%m-%d %H:%M:%S")       # (%Y- year; %m- month; %d- day of month (ex:01); %H- hour; %M- minute; %S- second))
echo "script execution ended at: $END_TIME"
TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "script executed in $TOTAL_TIME..sec"