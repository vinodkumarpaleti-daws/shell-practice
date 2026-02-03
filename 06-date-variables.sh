#!/bin/bash
echo "script started execution at : $(date '+%Y-%m-%d %H:%M:%S')" # Here this format will give detailed timestamp along with Date
START_TIME=$(date "+%s") 
# Bash arithmetic only works with integers, not formatted dates.
# (%Y- year; %m- month; %d- day of month (ex:01); %H- hour; %M- minute; %S- second))
sleep 10
END_TIME=$(date "+%s")       
echo "script execution ended at : $(date '+%Y-%m-%d %H:%M:%S')"
END_TIME=$(date +%s)
EXECUTION_TIME=$(($END_TIME-$START_TIME))
echo "script executed in $EXECUTION_TIME..sec"
