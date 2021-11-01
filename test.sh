#!/bin/sh

#echo "My name is ${nodeNumber} "

shiv(){
   cat shakti.txt
   
}

nodeNumber=${1}
if [[ ${nodeNumber} = 1 ]]
then
  NodeLbl=host-1
else
  NodeLbl=host
fi

shiv

#echo "Script is still running"
 

