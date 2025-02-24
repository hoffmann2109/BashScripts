#!/bin/bash
# Purpose: Updating software with custom messages and an update log.

# Get the current username
USER_NAME=$USER

# Set the log file path
LOG_FILE="$HOME/.update.log"

# Start the log file
echo "Update performed on:" > "$LOG_FILE"
date >> "$LOG_FILE"

echo "Fetching list of available updates..."
sudo apt-get update >> "$LOG_FILE" 2>&1

echo "Upgrading current packages..."
sudo apt-get upgrade -yy >> "$LOG_FILE" 2>&1

echo "Reticulating splines..."
echo "Removing orphaned packages/dependencies..."
sudo apt-get autoremove -yy >> "$LOG_FILE" 2>&1

echo "Clearing apt cache..."
sudo apt-get autoclean >> "$LOG_FILE" 2>&1
sudo apt-get clean >> "$LOG_FILE" 2>&1

echo "Update Complete" | tee -a "$LOG_FILE"

# Prompt the user to reboot the system
read -p "Do you want to reboot the system? (Y/N): " answer

if [[ "$answer" == [Yy] ]]; then
    echo "Rebooting the system..."
    sudo reboot
else
    echo "Reboot cancelled."
fi
