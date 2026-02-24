#!/bin/bash

# Update package list and install essential packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y \
    build-essential \
    curl \
    git \
    wget \
    unzip \
    jq \
    python3 \
    python3-pip \
    openjdk-11-jdk \
    maven \
    nodejs \
    npm

# Install additional tools for security testing
sudo apt install -y \
    golang \
    ruby \
    gem \
    npm

# Clean up
sudo apt autoremove -y
sudo apt clean

echo "Essential packages and dependencies have been installed."