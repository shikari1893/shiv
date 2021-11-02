#!/bin/bash

nodeNumber=1
set $nodeNumber = $1
echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "$# arguments"
echo "$* list of arguments"

shiv(){
   cat shakti.txt
   
   }

nodeNumber=${1}
shiv
