#!/bin/bash

if [ "$(kubectl get ns $1 -o json | jq .status.phase -r)" != "true" ]
then
    kubectl create namespace $1
fi