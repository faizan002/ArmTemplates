#!/bin/bash
PARAM_LENGTH=$#

help_text () {
    echo "Wrong Number of arguments, USAGE:"
    echo "./start.sh resourceGroupName"
}

if [ $PARAM_LENGTH -lt 1 ]
then
    help_text
    exit 0
fi

#Create Resource Group
RG_NAME=$1
az group create -n $RG_NAME -l northeurope




