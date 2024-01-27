#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - assigns the value to a variable "Var1".
#   - Creates a new variable "Var2" that depends on "Var1". 
#   - Prints the new variable "Var2" to console. 
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
# Last modification date: 01/26/2024
# Version: 0.1
# ====================================================================== 

Var1=300

Var2=runFile${Var1}.txt

echo Var2: $Var2 
