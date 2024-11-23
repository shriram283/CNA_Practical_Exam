#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting dependency installation..."

# Update system packages
sudo yum update -y

# Install Apache web server
echo "Installing Apache..."
sudo yum install -y httpd

# Verify installation
if ! command -v httpd &> /dev/null; then
    echo "Apache installation failed."
    exit 1
fi

echo "Dependency installation complete."
