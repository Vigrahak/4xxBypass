#!/bin/bash

# Requirements
sudo apt install figlet
sudo apt install jq

# Set the installation directory
INSTALL_DIR=/usr/local/bin

# Create the installation directory if it doesn't exist
mkdir -p $INSTALL_DIR

# Copy the tool script to the installation directory
cp 4xxbypass.sh $INSTALL_DIR/

# Make the tool script executable
chmod +x $INSTALL_DIR/4xx-Bypass/4xxbypass.sh

# Add the tool to the system's PATH
echo "export PATH=$INSTALL_DIR:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Print a success message
echo "4xxBypass.sh installed successfully!"
