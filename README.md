# Quant
Quant stuff

# Environment variables

Before all, you need to set up the environment variables by modifying and running the init.sh file.
For example, you will set up the path of the project with :
export QUANT\_PATH=/home/adrien/Programmation/Projets/Quant

The main environment variables are :  

## Variables you need to change

- QUANT\_PATH : project path
- QUANT\_DATA_PATH : data path (where you save and get datasets)

## Other variables

- QUANT\_VERBOSE : true to activate verbose mode



# Launching dashboards from bash files

Before launching the dashboards, you just need to set the environment variable of the project location :
export QUANT\_PATH=/home/adrien/Programmation/Projets/Quant

Then, from the project base folder you can launch:
source launch\_all\_dashboards.sh

It will create a log file in logs/Dashboards and a txt file with the subprocess pids in the base directory
