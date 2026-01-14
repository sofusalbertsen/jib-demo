#!/bin/bash
set -e

echo "Building Docker image with Maven and JIB..."
mvn clean compile jib:dockerBuild

echo "Maven JIB build completed successfully!"
echo "Image created: jib-demo-maven:latest"
