#!/bin/sh


setLocalVariables()
{
  nodeNumber=1
  resourceType=VM
  export nodeNumber resourceType
}

echo "NM is $nodeNumber "
set nodeNumber = $4
set resourceType = $5
echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "The value of the first argument to the script : $2"
echo "The value of the first argument to the script : $3"
echo "The value of the first argument to the script : $4"
echo "The value of the first argument to the script : $5"
echo "$# arguments"
echo "$* list of arguments"


shiv(){
   cat shakti.txt
   
   }
   



shiv
