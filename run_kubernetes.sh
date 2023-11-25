#!/usr/bin/env bash
dockerpath="tomasmarch/udacity-ml-microservice:v1.0.0"

# Run in Docker Hub container with kubernetes
kubectl run udacitymlmicroservice --image=$dockerpath --port=80 --labels app=udacitymlmicroservice

# Wait for the pod to be in the "Running" state
while [[ $(kubectl get pods udacitymlmicroservice -o 'jsonpath={.status.phase}') != "Running" ]]; do
    echo "Waiting for the pod to be in the 'Running' state..."
    sleep 5
done    

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward udacitymlmicroservice 8080:80

