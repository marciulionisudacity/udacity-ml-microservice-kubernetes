#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

# Step 2: 
# List docker images

# Step 3: 
# Run flask app


#!/usr/bin/env bash

# Build image
docker build --tag=udacity-ml-microservice .

echo "Successfully tagged udacity-ml-microservice container"
echo "Successfully built udacity-ml-microservice container"

# List docker images
docker image ls

# Run app
docker run -p 8080:80 udacity-ml-microservice