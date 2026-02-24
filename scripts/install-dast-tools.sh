#!/bin/bash

# Update package list and install prerequisites
sudo apt-get update
sudo apt-get install -y \
    openjdk-11-jre \
    maven \
    git \
    curl \
    wget \
    unzip \
    jq

# Install OWASP ZAP
wget https://github.com/zaproxy/zap-core-libs/releases/download/ZAP_2_11_1/zap-2.11.1-linux.tar.gz
tar -xvzf zap-2.11.1-linux.tar.gz -C /opt/
sudo ln -s /opt/ZAP_2.11.1/zap.sh /usr/local/bin/zap

# Clean up
rm zap-2.11.1-linux.tar.gz

# Verify installation
zap -version