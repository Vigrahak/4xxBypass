#!/bin/bash

# Requirements
sudo apt update
sudo apt full-upgrade -y
sudo apt install figlet jq -y

# Set the installation directory
INSTALL_DIR=/usr/local/bin

# Create the installation directory if it doesn't exist
mkdir -p $INSTALL_DIR

# Make the tool script executable
chmod +x $INSTALL_DIR/4xxbypass.sh

# Add the tool to the system's PATH
echo "export PATH=$INSTALL_DIR:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Print a success message
echo "4xxBypass.sh installed successfully!"
