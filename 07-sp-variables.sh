#!/bin/bash

#### Special Variables ####
echo "All args passed to script: $@"
echo "Number of vars passed to script: $#" # It will give how many number of args we passed to the script
echo "Script name: $0"  # It returns script name
echo "Present directory: $PWD" 
echo "Who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of this script: $$" # It will give process instance ID 
sleep 100 & # Process will run at the Background
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"