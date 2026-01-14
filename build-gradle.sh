#!/bin/bash
set -e

echo "Building Docker image with Gradle and JIB..."
./gradlew clean jibDockerBuild

echo "Gradle JIB build completed successfully!"
echo "Image created: jib-demo-gradle:latest"
