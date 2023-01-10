#!/bin/bash

if [ "$(kubectl get ns $1 -o json)" != "true" ]
then
    kubectl create namespace $1
fi