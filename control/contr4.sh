#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - use a for loop to print the first 5 odd numbers from 0.
# 
# To run this file on a linux machine, use the command:
#
#   bash contr4.sh
#
# -or simply execute the file (make sure you have correct permissions):
#  
#   ./contr4.sh
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

# Control structures can be used like if statements and for loops.
# These are useful to create files that can run on a single Create a variable named "start"
# - A variable is created by defining a name followed by an "=" symbol.
# - To execute a command line, use "`" as delimiters of the command.
# 
# The following line executes "date +%s%N" and stores the output into
# variable start.



# For loop can be executed in multiple ways.

for i in {1..10}
do
	# The condition here is evaluating
	#  ( i + 1 ) % 2 == 0

	if [ "$(( ( i + 1 ) % 2 ))" == 0 ]; then

		echo -n "$i "
	fi
done

# This last echo is needed because all previous echo commands were
# executed with the -n flag, so no new line would be executed.
echo 


