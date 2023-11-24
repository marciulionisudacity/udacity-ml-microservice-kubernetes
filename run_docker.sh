#!/usr/bin/env bash

# Build image
docker build --tag=udacity-ml-microservice .

# List docker images
docker image ls

# Run app
docker run -p 8080:80 udacity-ml-microservice