#!/bin/bash

echo "Starting build process..."

docker build -t rajasekaran191/dev:latest .
docker push rajasekaran191/dev:latest

echo "Build and push completed!"