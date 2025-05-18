#!/bin/bash

APP_NAME="CICDRepoTutorial_11052025"
IMAGE_NAME="yourdockerhubusername/mydotnetapp:latest"

echo "Pulling latest image..."
docker pull $IMAGE_NAME

echo "Stopping old container if exists..."
docker stop $APP_NAME || true
docker rm $APP_NAME || true

echo "Running new container..."
docker run -d --name $APP_NAME -p 5000:5000 $IMAGE_NAME
