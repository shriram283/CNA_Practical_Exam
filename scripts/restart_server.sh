#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Restarting Apache server..."

# Start the Apache service
sudo systemctl restart httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Verify that the service is running
if ! sudo systemctl is-active --quiet httpd; then
    echo "Apache failed to start."
    exit 1
fi

echo "Apache server restarted successfully and enabled on boot."
