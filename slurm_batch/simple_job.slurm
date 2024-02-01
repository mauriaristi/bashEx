#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a slurm batch file that:
#   - prints date & time at start of execution.
#   - prints "Hello world"
#   - waits 5 seconds
#   - prints the date & time at end of execution.
# 
# It is setup to execute on 
#   - single node
#   - single task
#   - single core
# 
# By executing this slurm batch file, two output files will be created:
#  - outFile.XXXXXX.txt: text file with the console output of your 
#    program.
#  - errFile.XXXXXX.txt: text file with the console output of your
#    program 
#          (XXXXXX  corresponds to the process ID of your job).
#
# To run this file, login to Arc via an ssh terminal connection and 
# type the following command line:
#
#   sbatch run_simple_job.slurm
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
# Last modification date: 01/21/2024
# Version: 0.2
# ======================================================================
#
#
# The following commands specify SLURM configuration:
# more information can be found on 
# https://slurm.schedmd.com/sbatch.html
#
#SBATCH -J job_name
#SBATCH -o outFile.%j.txt    # Name of 'stdout' output file.
#SBATCH -e errFile.%j.txt    # Name of 'stderr' error file.
#                            # NOTE: %j is a wildcard that supplies the 
#                            #       jobid for this slurm process.
#SBATCH -p compute1          # Queue (partition) name.
#SBATCH -N 1                 # Total number of nodes to be requested.
#SBATCH -n 1                 # Total number of tasks to be requested.
#SBATCH -c 1                 # Number of processors used by each task.
#SBATCH -t 00:05:00          # Maximum estimated run time (dd-hh:mm:ss)
#SBATCH --mail-type=ALL      # Mail events to notify (END, FAIL, ALL).
#SBATCH --mail-user your_@email.edu # Put your utsa-email here.
#
#
# The following are suggested guidelines to create an appropriate 
# slurm batch file:
#
# 0. Comment your file so that you can understand it better in the 
#    future. 
#    A suggestion is to add a "date" commands at start and finish of your 
#    program so you also have information about time stamps of your job on 
#    file.
#
# 1. Load the modules that are required to run your program. 
#    For example:
#
# module load intel/oneapi
#
# 2. If requried, setup the environment that your program requires
#    to execute. For example
#
# export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
# 
# 3. Use Bash file syntax to execute the required program.
#

# Print start time stamp
date

# Print "Hello World" to stdout stream
echo "Hello World"

# Wait for1 5 seconds.
sleep 15 

# Print end time stamp
date

