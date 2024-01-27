# 
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - prints date & time at start of execution.
#   - prints message onto the console output.
#   - waits 10 seconds
#   - prints the date & time at end of execution.
# 
# To run this file on a linux machine, use the following command line:
#
#   bash simple1.sh
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

echo "Hello $USER! You are successfully running a bash script file" 

# A simple process to stop processing for 10 seconds
sleep 10

# Print in console the finish date
date



