#!/bin/bash
# -------------------------------------------------------------------
# Project: Cloud-Ready Dockerized Application
# Author: Sachin C S
# Script: Run Container Locally
# -------------------------------------------------------------------

IMAGE_NAME="devops-docker-app"
CONTAINER_NAME="devops-app-instance"

echo "========================================"
echo "DOCKER RUN: STARTING"
echo "========================================"

# Navigate to root
cd "$(dirname "$0")/.."

# Stop existing container if any
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "[INFO] Stopping and removing existing container..."
    docker stop $CONTAINER_NAME > /dev/null
    docker rm $CONTAINER_NAME > /dev/null
fi

echo "[INFO] Starting container on port 8080..."
docker run -d --name $CONTAINER_NAME -p 8080:80 $IMAGE_NAME

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Application is live at http://localhost:8080"
else
    echo "[ERROR] Failed to start container."
    exit 1
fi
