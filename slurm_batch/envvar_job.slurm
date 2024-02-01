#!/bin/bash
#
# ======================================================================
# This file provides an example of environment variables generated
# in a slurm Job:
#   - prints out multiple environment variables out on the output file.
# 
# 
#   sbatch envvar_job.slurm
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
#SBATCH -J envVars
#SBATCH -o outFile.%j.txt    # Name of 'stdout' output file.
#SBATCH -e errFile.%j.txt    # Name of 'stderr' error file.
#                            # NOTE: %j is a wildcard that supplies the 
#                            #       jobid for this slurm process.
#SBATCH -p compute1          # Queue (partition) name.
#SBATCH -N 2                 # Total number of nodes to be requested.
#SBATCH -n 10                # Total number of tasks to be requested.
#SBATCH -c 4                 # Number of processors used by each task.
#SBATCH -t 00:05:00          # Maximum estimated run time (dd-hh:mm:ss)
#SBATCH --mail-type=ALL      # Mail events to notify (END, FAIL, ALL).
#SBATCH --mail-user your_@email.edu # Put your utsa-email here.
#
#
# The following are suggested guidelines to create an appropriate 
# slurm batch file:
#


# Print start time stamp
date

# Print environment variables that appear on a 
# SLURM Job:
echo "- Job Name------------- ${SLURM_JOB_NAME}"
echo "- Job Node list-------- ${SLURM_JOB_NODELIST}"
echo "- Current task node---- ${SLURMD_NODENAME}"
echo "- Number of nodes------ ${SLURM_NNODES}"
echo "- Number of processes-- ${SLURM_NPROCS}"
echo "- CPUs per task-------- ${SLURM_CPUS_PER_TASK}"
echo "- Total num. of tasks-- ${SLURM_NTASKS}"
echo "- NCPUs on Node-------- ${SLURM_CPUS_ON_NODE}"
echo "- Job's NCPUS per node- ${SLURM_JOB_CPUS_PER_NODE}"

# Print end time stamp
date


