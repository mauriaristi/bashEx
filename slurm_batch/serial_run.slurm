#!/bin/bash
#
# ======================================================================
# This file provides an example for a run with multiple tasks:
#   - launches 3 tasks, each waiting 2, 5, 10 seconds each.
#   - waits for all of them to run
#   - prints the execution time at end of execution.
# 
# To run this file, login to Arc via an ssh terminal connection and 
# type the following command line:
#
#   sbatch serial_job.slurm
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
#SBATCH -J serial1
#SBATCH -o outFile.%j.txt   # Name of 'stdout' output file.
#SBATCH -e errFile.%j.txt   # Name of 'stderr' error file.
#                           # NOTE: %j is a wildcard that supplies the 
#                           #       jobid for this slurm process.
#SBATCH -p compute1         # Partition
#SBATCH -N 1                # Total number of nodes to be requested.
#SBATCH -n 1                # Total number of tasks to be requested.
#SBATCH -c 2                # Number of threads used by each task.
#SBATCH -t 00:05:00         # Maximum estimated run time (dd-hh:mm:ss)
#SBATCH --mail-type=ALL     # Mail events to notify (END, FAIL, ALL).
#SBATCH --mail-user your_@email.edu # Put your utsa-email here.


# Print start time stamp
tstart=`date +%s%N` 

# Printing Environment variables
echo "Starting Job"


sleep  2 & 
sleep  5 &
sleep 10 &

echo Waiting for all executions to complete
wait

# Print end time stamp
tend=`date +%s%N`


tdiff=$(( (tend-tstart)/1000000 ))

echo "Calculations ended"
echo "Total CPU time $tdiff [ms]"
