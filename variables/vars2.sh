#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - saves the start time of execution into a variable.
#   - prints "Hello world"
#   - waits 5 miliseconds
#   - saves the finish time into a variable.
#   - computes and shows the total execution time in [ns].
# 
# To run this file on a linux machine, use the command:
#
#   bash simple1.sh
#
# -or simply execute the file (make sure you have correct permissions):
#  
#   ./simple1.sh
#
#
# DISCLAIMER: 
#
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

# Create a variable named "start"
# - A variable is created by defining a name followed by an "=" symbol.
# - To execute a command line, use "`" as delimiters of the command.
# 
# The following line executes "date +%s%N" and stores the output into
# variable start.

start=`date +%s%N`


echo Hello world

# Sleep 5 miliseconds.
sleep 0.005

# store finish time on variable end.
end=`date +%s%N`


# 

echo Execution time was `expr $end - $start` nanoseconds

# There is another way to execute an expression. You can embed 
# the operation in parenthesis preceeded by a "$" symbol 

tdiff=$(($end - $start)) 
echo tdiff:  $tdiff nanoseconds
