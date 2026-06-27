#!/bin/bash

# Exit immediately if any command fails
set -e

echo "Starting deployment..."

# Pull latest production image (Jenkins will fail here if login fails)
docker pull rajasekaran191/prod:latest

# Stop old container if it exists (errors safely ignored via || true)
echo "Cleaning up old containers..."
docker stop app-container >/dev/null 2>&1 || true
docker rm app-container >/dev/null 2>&1 || true

# Run new container (Jenkins will fail here if ports are blocked or run fails)
echo "Starting new container..."
docker run -d -p 80:80 --name app-container rajasekaran191/prod:latest

echo "Deployment completed successfully!"
