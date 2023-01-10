#!/bin/bash

while [ "$(kubectl get ns $1 -o jsonpath='{.status.phase}')" != "Active" ]; do
   sleep 5
   echo "Waiting for $1 ns to be ready..."
done