#!/bin/bash

# run the init.sh file first


########### logging ###########


session_ID=$(date +"%Y-%m-%d_%H:%M:%S")


# create pid list file
path_pids=${QUANT_PATH}/process_pids_${session_ID}.txt
touch $path_pids
echo "File containing the dashboard subprocess pids created at $path_pids"


# create log file
path_log=${QUANT_PATH}/logs/Dashboards/log_all_dashboards_${session_ID}.txt
touch $path_log




########### launch all dashboards ###########


exec Dashboards/MainDashboard/launch_main_dashboard.sh &
echo $! > $path_pids

########### kill all dashboards ###########


# to kill all dashboards : press q
sleep 2
kill_input="a"
while [ "$kill_input" != "q" ]
do
    read -p "Press q to kill all dashboards : " kill_input
done


# kill all dashboards from pid list
while IFS= read -r line
do
    echo "Killing $line..."
    pkill -P $line
done < "$path_pids"

# remove pid list
rm $path_pids
echo "$path_pids removed"
