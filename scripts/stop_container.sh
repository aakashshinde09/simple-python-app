#!/bin/bash
set -e

# Stop the running container
echo "Stopping running containers (if any)..."

# Fetch the container ID of the running container (replace <container_name> with the actual container name)
CONTAINER_ID=$(docker ps -q --filter "name=<container_name>")

# If a container is running, stop it
if [ -n "$CONTAINER_ID" ]; then
    echo "Stopping container ID: $CONTAINER_ID"
    docker stop $CONTAINER_ID
else
    echo "No running container found to stop."
fi
