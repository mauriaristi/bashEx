#!/bin/bash
#
# ======================================================================
# This file provides an example slurm job file to execute Hello world
# calls within a single job.
#   - Outputs information from the main task thread. (no srun)
#   - Use srun to run an echo command.
# Then, to clarify what is happening:
#   - Call the file run.sh without srun command.
#   - Use srun to execute the file 'run.sh'.
# 
#   sbatch parallel_hello_run.slurm
#
# DISCLAIMER: 
# This file was created for educational purposes to be used in the
# ME 5773 High Performance Computing course at the University of Texas 
# at San Antonio to be used with Arc HPC cluster. 
# Use it at your own risk.
# 
#
# Authors: Mauricio Aristizabal, PhD
#          Harry Millwater, PhD
#
# Last modification date: 01/31/2024
# Version: 0.1
# ======================================================================
#
#
# The following commands specify SLURM configuration:
# more information can be found on 
# https://slurm.schedmd.com/sbatch.html
#
#SBATCH -J parHello
#SBATCH -o outFile.%j.txt    # Name of 'stdout' output file.
#SBATCH -e errFile.%j.txt    # Name of 'stderr' error file.
#SBATCH -p compute1          # Partition
#SBATCH -N 2                 # Total number of nodes to be requested.
#SBATCH -n 4                 # Total number of tasks to be requested.
#SBATCH -c 40                # Number of threads used by each task.
#SBATCH -t 00:05:00          # Maximum estimated run time (dd-hh:mm:ss)
#SBATCH --mail-type=ALL      # Mail events to notify (END, FAIL, ALL).
#SBATCH --mail-user your_@email.edu # Put your utsa-email here.
#

# Print hello world to ouptut file.
echo "HELLO WORLD"

# Print hello world using the srun command
srun echo "hello world"

echo " " 
echo "Calling run.sh"
./run.sh

echo " "
echo "Calling run.sh with the srun command."

srun ./run.sh
