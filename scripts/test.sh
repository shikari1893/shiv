#!/bin/bash

shiv(){
   cat shakti.txt
   
   }

if [ "$1" != "" ]; then
    echo "Positional parameter 1 contains value 1"
else
    echo "Positional parameter 1 is empty"
fi

shiv
