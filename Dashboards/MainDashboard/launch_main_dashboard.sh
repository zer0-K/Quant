#!/bin/bash


########### logging ###########


session_ID=$(date +"%Y-%m-%d_%H:%M:%S")

# create log file
path_log=${QUANT_PATH}/logs/Dashboards/MainDashboard/log_main_dashboard_${session_ID}.txt
touch $path_log

echo "Launching main dashboard"
streamlit run Dashboards/MainDashboard/app.py > $path_log