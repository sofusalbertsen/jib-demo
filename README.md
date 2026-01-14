# jib-demo

Java 21 "Hello World" application demonstrating containerization with Google JIB.

## Overview

This project demonstrates building Docker images using Google JIB with both Maven and Gradle build tools. The application uses Java 21 and the `eclipse-temurin:21-jre-jammy` base image.

## Project Structure

```
.
├── src/main/java/com/example/App.java  # Java Hello World application
├── pom.xml                              # Maven build configuration
├── build.gradle                         # Gradle build configuration
├── settings.gradle                      # Gradle settings
├── build-maven.sh                       # Maven JIB build script
├── build-gradle.sh                      # Gradle JIB build script
└── .github/workflows/build.yml         # CI/CD workflow
```

## Prerequisites

- Java 21
- Maven 3.6+ (for Maven builds)
- Gradle 8.5+ (for Gradle builds, or use the provided wrapper)
- Docker (for local image builds)

## Building with Maven

```bash
# Build Docker image locally
./build-maven.sh

# Or use Maven directly
mvn clean compile jib:dockerBuild

# Run the image
docker run --rm jib-demo-maven:latest
```

## Building with Gradle

```bash
# Build Docker image locally
./build-gradle.sh

# Or use Gradle directly
./gradlew clean jibDockerBuild

# Run the image
docker run --rm jib-demo-gradle:latest
```

## CI/CD

The project includes a GitHub Actions workflow (`.github/workflows/build.yml`) that can be triggered manually via `workflow_dispatch`. It includes two jobs:

1. **build-maven**: Builds the Docker image using Maven and JIB
2. **build-gradle**: Builds the Docker image using Gradle and JIB

## Docker Images

Both build tools create Docker images with the following configurations:

- **Base Image**: `eclipse-temurin:21-jre-jammy`
- **Maven Image Name**: `jib-demo-maven:latest` (and `jib-demo-maven:1.0.0`)
- **Gradle Image Name**: `jib-demo-gradle:latest` (and `jib-demo-gradle:1.0.0`)
- **Main Class**: `com.example.App`
- **Port**: 8080 (exposed)