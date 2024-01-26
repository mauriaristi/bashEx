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

# Control structures like if can be defined in a bash script.
# 
# If you are comparing numerical values, you can use the built-in 
# binary operators
# --------------------------------------
# OPERATOR              |   SYMBOL     
# --------------------------------------
# Equal                 |   ==         
# --------------------------------------
# Not Equal             |   !=
# --------------------------------------
# Less  than            |    <
# --------------------------------------
# greater than          |    >
# --------------------------------------
# less than or equal    |   <=
# --------------------------------------
# greater than or equal |   >=
# --------------------------------------
#
# More information can be found in this link: 
#     https://www.geeksforgeeks.org/basic-operators-in-shell-scripting/
# 


# The following line requests a number in console and assigns it into
# variable num1

read -p "Enter a number from 0 to 1000: " num1

numComp=20

if (( $num1 > $numComp ))
then
	echo "The value you entered ($num1) IS greater than $numComp"
else
	echo "The value you entered ($num1) IS NOT greater than $numComp"

fi


