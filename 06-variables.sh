#!/bin/bash
echo "script started execution at : $(date '+%Y-%m-%d %H:%M:%S')"
START_TIME=$(date "+%s") # Here this format will give detailed timestamp along with Date

sleep 10
END_TIME=$(date "+%s")       # (%Y- year; %m- month; %d- day of month (ex:01); %H- hour; %M- minute; %S- second))
echo "script execution ended at : $(date '+%Y-%m-%d %H:%M:%S')"
END_TIME=$(date +%s)
EXECUTION_TIME=$(($END_TIME-$START_TIME))
echo "script executed in $EXECUTION_TIME..sec"

# #!/bin/bash

# echo "script started executed at: $(date '+%Y-%m-%d %H:%M:%S')"

# start_time=$(date +%s)

# sleep 5   # your script work

# end_time=$(date +%s)

# echo "script execution ended at: $(date '+%Y-%m-%d %H:%M:%S')"

# execution_time=$((end_time - start_time))

# echo "Total execution time: ${execution_time} seconds"
