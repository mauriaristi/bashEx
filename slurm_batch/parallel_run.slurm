#!/bin/bash
#
# ======================================================================
# This file provides an example slurm job file to handle multitasking
# with heterogeneous tasks within a bash file:
#   - Three different tasks are started:
#     * Wait for  5 secs.
#     * Wait for 10 secs.
#     * Wait for 15 secs.
#   - They are started in 'background mode' and wait for execution.
#   - total time is measured with a nanosecond date counter.
# 
#   sbatch parallel_run.slurm
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
#SBATCH -J paralRun
#SBATCH -o outFile.%j.txt    # Name of 'stdout' output file.
#SBATCH -e errFile.%j.txt    # Name of 'stderr' error file.
#SBATCH -p compute1          # Partition
#SBATCH -N 1                 # Total number of nodes to be requested.
#SBATCH -n 2                 # Total number of tasks to be requested.
#SBATCH -c 2                 # Number of threads used by each task.
#SBATCH -t 00:05:00          # Maximum estimated run time (dd-hh:mm:ss)
#SBATCH --mail-type=ALL      # Mail events to notify (END, FAIL, ALL).
#SBATCH --mail-user your_@email.edu # Put your utsa-email here.
#

# Print start time stamp
tstart=`date +%s%N` 
echo Starting job - `date`


srun --exclusive -N 1 -n 1 -c $SLURM_CPUS_PER_TASK sleep  5 & 
srun --exclusive -N 1 -n 1 -c $SLURM_CPUS_PER_TASK sleep 10 & 
srun --exclusive -N 1 -n 1 -c $SLURM_CPUS_PER_TASK sleep 15 & 

echo Waiting for all executions to complete

wait

# Print end time stamp
tend=`date +%s%N`

# Calculate the difference in end and start times
tdiff=$(( (tend-tstart)/1000000 ))

# Output calculation time.
echo "Calculations ended"
echo "Total CPU time $tdiff [ms]"
