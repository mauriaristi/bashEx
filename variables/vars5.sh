#!/bin/bash
#
# ======================================================================
# This file provides a simple example of a bash script that:
#   - Creates an array of elements
#   - Shows how to obtain the number of elements in that array.
#   - Shows how to access the elments 
#
#
# To run this file on a linux machine, use the command:
#
#   bash vars5.sh
#
# -or simply execute the file (make sure you have correct permissions):
#  
#   ./vars5.sh
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
# Last modification date: 01/29/2024
# Version: 0.1
# ====================================================================== 


# Define an array of elements
arr1=('filea.txt' 'fileb.txt' 'filec.txt')

echo The first item is ${arr1[0]}
echo The second item is ${arr1[1]}
echo The third item is ${arr1[2]}

nelems=${#arr1[@]}

echo The array has a total of $nelems

echo All elements in the array: ${arr1[@]}
echo All indices for the array: ${!arr1[@]}

# Appending an element to the array.
arr1[3]=filed.txt

echo An element was appended to the array, now it has ${#arr1[@]} items 
echo The last elements is ${arr1[-1]}
