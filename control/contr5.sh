#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - use a for loop to print the first 10 odd numbers from 0.
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


# While loops can also be executed. 
# It should be defined as followsThere is a boolean condition
# and also must contain an exit condition
# For loop can be executed in multiple ways.

for i in {1..11..2}
do

	echo -n "$i "
done

# This last echo is needed because all previous echo commands were
# executed with the -n flag, so no new line would be executed.
echo 


