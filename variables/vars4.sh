#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - receives a variable from the command line
#   - Creates a new variable "Var1" that uses the input parameter
#   - Prints the input received and "Var1" to console. 
#
# To run this file on a linux machine, use the command:
#
#   bash vars3.sh
#
# -or simply execute the file (make sure you have correct permissions):
#  
#   ./vars3.sh
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
# Last modification date: 01/28/2024
# Version: 0.2
# ====================================================================== 



Var1=NameReceived_$1.txt

echo The value received from input command was $1
echo the new variable created with the input command is ${Var1}
