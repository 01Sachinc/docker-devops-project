#!/bin/bash
# -------------------------------------------------------------------
# Project: Cloud-Ready Dockerized Application
# Author: Sachin C S
# Script: Build Docker Image
# -------------------------------------------------------------------

IMAGE_NAME="devops-docker-app"
TAG="latest"

echo "========================================"
echo "DOCKER BUILD: STARTING"
echo "========================================"

# Navigate to root to ensure correct context
cd "$(dirname "$0")/.."

echo "[INFO] Building Docker image: $IMAGE_NAME:$TAG..."
docker build -t "$IMAGE_NAME:$TAG" -f docker/Dockerfile .

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Image built successfully."
else
    echo "[ERROR] Build failed."
    exit 1
fi
