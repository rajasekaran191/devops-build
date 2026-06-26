#!/bin/bash

echo "Starting build process..."

# Build Docker image
docker build -t rajasekaran191/dev:latest .

# Push to Docker Hub (dev repo)
docker push rajsekaran191/dev:latest

echo "Build and push completed!"