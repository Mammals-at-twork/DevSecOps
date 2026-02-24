#!/bin/bash

# Update package list and install prerequisites
sudo apt update
sudo apt install -y curl wget git

# Install Semgrep
echo "Installing Semgrep..."
curl -sSfL https://sh.semgrep.dev | sh

# Install SonarQube Scanner
echo "Installing SonarQube Scanner..."
wget -qO - https://downloads.sonarqube.org/sonar-scanner-cli/4.6.2.2472/sonar-scanner-cli-4.6.2.2472-linux.zip | funzip > sonar-scanner.zip
sudo unzip sonar-scanner.zip -d /opt/
sudo mv /opt/sonar-scanner-* /opt/sonar-scanner
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' >> ~/.bashrc
source ~/.bashrc

# Verify installations
echo "Verifying Semgrep installation..."
semgrep --version

echo "Verifying SonarQube Scanner installation..."
sonar-scanner --version

echo "SAST tools installation completed."