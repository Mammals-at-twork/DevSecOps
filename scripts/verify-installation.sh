#!/bin/bash

# Verify Installation Script

echo "Verifying installation of essential tools and dependencies..."

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please run install-docker.sh."
else
    echo "Docker is installed."
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null
then
    echo "Docker Compose is not installed. Please run install-docker.sh."
else
    echo "Docker Compose is installed."
fi

# Check if Semgrep is installed
if ! command -v semgrep &> /dev/null
then
    echo "Semgrep is not installed. Please run install-sast-tools.sh."
else
    echo "Semgrep is installed."
fi

# Check if SonarQube is running
if ! docker ps | grep -q sonarqube
then
    echo "SonarQube is not running. Please start it using docker-compose."
else
    echo "SonarQube is running."
fi

# Check if OWASP ZAP is running
if ! docker ps | grep -q zap
then
    echo "OWASP ZAP is not running. Please start it using docker-compose."
else
    echo "OWASP ZAP is running."
fi

echo "Installation verification complete."