#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - saves the start time of execution into a variable.
#   - prints "Hello world"
#   - waits 10 seconds
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

# Print date at beginning of execution of the file.
date
echo -

# To create a variable 
# - Defining a name immediatelly followed by a "=" symbol.
# - Use double-quote character (") to define 

Var1="This is Var1 explicit text"

Var2=3

Var3=1,2,3,4,5

# NOTE(1): variables will be "visible" only this file and will not be 
#          accessible to other files or programs. (This is not a global 
#          definition)
# 
# NOTE(2): A variable is defined by a contiguous set of characters. Any 
#          blank space that is not contained within quote characters.
# 
# 


# You can show the contents of a variable using the name of the variable 
# preceeded by a "$" symbol. For example, we can show in console the 
# contents of a variable using the echo command.

echo Var1 contains:
echo $Var1

echo Var2 contains:
echo $Var2

echo Var3 contains:
echo $Var3


# Print date at the end of execution.
echo -
date

