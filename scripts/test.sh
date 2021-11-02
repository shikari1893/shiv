#!/bin/bash

nodeNumber=1
resourceType=VM
set $nodeNumber = $4
set $resourceType = $4
echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "$# arguments"
echo "$* list of arguments"
echo " resourceType is : $6 "

shiv(){
   cat shakti.txt
   
   }
   



shiv
