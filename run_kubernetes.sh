#!/usr/bin/env bash
dockerpath="tomasmarch/udacity-ml-microservice"

# Run in Docker Hub container with kubernetes
kubectl run udacitymlmicroservice\
    --image=$dockerpath 
    --port=80 
    --labels app=udacitymlmicroservice

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward udacitymlmicroservice 8080:80

