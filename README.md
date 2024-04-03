# Quant
Quant stuff

# Launching dashboards from bash files

Before launching the dashboards, you just need to set the environment variable of the project location :
export PROJECT\_PATH=/home/adrien/Programmation/Projets/Quant

Then, from the project base folder you can launch:
source launch\_all\_dashboards.sh

It will create a log file in logs/Dashboards and a txt file with the subprocess pids in the base directory
