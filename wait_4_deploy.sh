#!/bin/bash

while [ "$(kubectl get pods -l $1 -n $2 -o jsonpath='{.items[*].status.containerStatuses[0].ready}')" != "true" ]; do
   sleep 5
   echo "Waiting for $3 to be ready."
done