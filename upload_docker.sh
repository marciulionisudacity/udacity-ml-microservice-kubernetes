#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerimage=udacity-ml-microservice
dockerpath=tomasmarch/$dockerimage

# Step 2:  
# Authenticate & tag
docker tag $dockerimage $dockerpath:v1.0.0
docker login

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1.0.0