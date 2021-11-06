#!/bin/sh


setLocalVariables()
{
 pwd
 echo "resource type is ${resourceType} "
 echo "node number is ${nodeNumber} "
 
}


echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "The value of the first argument to the script : $2"
echo "The value of the first argument to the script : $3"
echo "The value of the first argument to the script : $4"
echo "The value of the first argument to the script : $5"

nodeNumber=${5}
resourceType=${4}
wkcNode=${1}

echo "resource type is ${resourceType} "
echo "wkcNode is ${wkcNode}"

if [[ ${nodeNumber} = 1 ]]
then
  echo "yes"
else
  echo "NO"
fi

setLocalVariables
