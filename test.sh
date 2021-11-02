#!/bin/sh

#echo "My name is ${nodeNumber} "

shiv(){
   cat shakti.txt
   
}

nodeNumber=${1}
if [[ ${nodeNumber} = 1 ]]
then
  echo "script is fine"
else
  echo "script is not fine"
fi

shiv

#echo "Script is still running"
 

