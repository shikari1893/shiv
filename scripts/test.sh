#!/bin/bash

nodeNumber = 1
shiv(){
   cat shakti.txt
   
   }

if [ "$1" != "" ]; then
    echo "Positional parameter 1 contains value 1"
else
    echo "Positional parameter 1 is empty"
fi
nodeNumber=${1}
shiv
