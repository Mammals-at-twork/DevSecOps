#!/bin/bash

# Update package list and install prerequisites
sudo apt-get update
sudo apt-get install -y \
    openjdk-17-jre \
    maven \
    git \
    curl \
    wget \
    unzip \
    jq

# Install OWASP ZAP
wget https://github.com/zaproxy/zaproxy/releases/download/v2.17.0/ZAP_2_17_0_unix.sh
chmod +x ZAP_2_17_0_unix.sh
sudo ./ZAP_2_17_0_unix.sh -q -dir /opt/ZAP_2_17_0
sudo ln -s /opt/ZAP_2_17_0/zap.sh /usr/local/bin/zap

# Clean up
rm ZAP_2_17_0_unix.sh

# Verify installation
zap -version