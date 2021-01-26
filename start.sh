#!/bin/bash
PARAM_LENGTH=$#

help_text () {
    echo "USAGE"
    echo "./start.sh resourceGroupName"
}

#Create Resource Group
RG_NAME=$1
echo $RG_NAME
az group create -n $RG_NAME -l northeurope

if [ $PARAM_LENGTH -lt 1 ]
then
help_text
fi

