#!/bin/bash

# Make the script executable
# chmod +x run.sh

# Get the current directory
current_dir=$(pwd)

# pull the docker image
docker pull ghcr.io/jotpalch/grading-assistant-webpage:latest

# Run the Docker container
docker run \
    -v $current_dir/json:/app/json \
    -p 30005:3000 \
    -d --rm ghcr.io/jotpalch/grading-assistant-webpage:latest