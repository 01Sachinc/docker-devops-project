#!/bin/bash
# -------------------------------------------------------------------
# Project: Cloud-Ready Dockerized Application
# Author: Sachin C S
# Script: Cloud Deployment Simulation
# -------------------------------------------------------------------

echo "========================================"
echo "DEPLOYMENT: CLOUD SIMULATION"
echo "========================================"

echo "[INFO] Tagging image for Cloud Registry (AWS ECR/DockerHub)..."
# docker tag devops-docker-app:latest my-repo/devops-docker-app:latest
sleep 1

echo "[INFO] Pushing image to registry..."
# docker push my-repo/devops-docker-app:latest
sleep 2

echo "[INFO] Triggering rolling update on Simulated EC2/Kubernetes Cluster..."
sleep 2

echo "[SUCCESS] Deployment complete. New version is live in 'production'."
exit 0
