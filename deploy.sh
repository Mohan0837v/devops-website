#!/bin/bash

echo "Pulling the latest image..."
docker pull docker.io/mohan0837v/devops-website:latest

echo "Stopping existing container..."
docker stop devops-website 2>/dev/null || true
docker rm devops-website 2>/dev/null || true

echo "Starting new container..."
docker run -d -p 9090:80 --name devops-website docker.io/mohan0837v/devops-website:latest

