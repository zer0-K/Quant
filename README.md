# Quant
Quant stuff

# Environment variables

Before all, set up the following environment variable so that all the programs know where the root directory of the project is :
export QUANT\_PATH=/home/adrien/Programmation/Projets/Quant

Other environment variables:

Verbose print:
export QUANT\_VERBOSE=true



# Launching dashboards from bash files

Before launching the dashboards, you just need to set the environment variable of the project location :
export QUANT\_PATH=/home/adrien/Programmation/Projets/Quant

Then, from the project base folder you can launch:
source launch\_all\_dashboards.sh

It will create a log file in logs/Dashboards and a txt file with the subprocess pids in the base directory
