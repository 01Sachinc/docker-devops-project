#!/bin/bash
# -------------------------------------------------------------------
# Project: Cloud-Ready Dockerized Application
# Author: Sachin C S
# Script: Monitoring Simulation
# -------------------------------------------------------------------

CONTAINER_NAME="devops-app-instance"

echo "========================================"
echo "HEALTH MONITORING: SIMULATION"
echo "========================================"

# Check if container is running
STATUS=$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME 2>/dev/null)

if [ "$STATUS" == "true" ]; then
    echo "[HEALTH] Container Status: RUNNING (OK)"
    echo "[INFO] Container ID: $(docker inspect -f '{{.Id}}' $CONTAINER_NAME)"
    echo "[LOGS] Last 5 log entries:"
    docker logs --tail 5 $CONTAINER_NAME
else
    echo "[HEALTH] Container Status: STOPPED (CRITICAL)"
    exit 1
fi
