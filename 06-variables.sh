# #!/bin/bash

# START_TIME=$(date "+%Y-%m-%d %H:%M:%S") # Here this format will give detailed timestamp along with Date

# echo "script started executed at: $START_TIME"
# sleep 13
# END_TIME=$(date "+%Y-%m-%d %H:%M:%S")       # (%Y- year; %m- month; %d- day of month (ex:01); %H- hour; %M- minute; %S- second))
# echo "script execution ended at: $END_TIME"
# TOTAL_TIME=$(($END_TIME-$START_TIME))
# echo "script executed in $TOTAL_TIME..sec"

#!/bin/bash

echo "script started executed at: $(date '+%Y-%m-%d %H:%M:%S')"

start_time=$(date +%s)

sleep 5   # your script work

end_time=$(date +%s)

echo "script execution ended at: $(date '+%Y-%m-%d %H:%M:%S')"

execution_time=$((end_time - start_time))

echo "Total execution time: ${execution_time} seconds"
