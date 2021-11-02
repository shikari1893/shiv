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
   
if [ $1 -gt 2 ] 
then
	echo "first argument is larger"
else
	echo "first argument is smaller"
fi


shiv
