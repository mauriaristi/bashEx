#!/bin/bash 
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - prints date & time at start of execution.
#   - prints message onto the console output.
#   - waits 3 seconds
#   - waits 5 seconds
#   - prints the date & time at end of execution.
# 
# To run this file on a linux machine, use the following command line:
#
#   bash simple3.sh
#
# or just type
#   simple3.sh
#
# DISCLAIMER: 
#   This file was created for educational purposes to be used in the
#   ME 5773 High Performance Computing course at the University of Texas 
#   at San Antonio within the Arc HPC cluster. 
#   Use it at your own risk.
# 
#
# Authors: Mauricio Aristizabal, PhD
#
# Last modification date: 01/26/2024
# Version: 0.1
# ====================================================================== 

# print in console the start date.
date

echo "Hello $USER! Doing a process that takes about 3 seconds" 

sleep 3

echo "Will execute another process that takes 5 seconds"

sleep 5

# Print in console the finish date
date



