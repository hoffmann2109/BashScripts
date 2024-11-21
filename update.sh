#!/bin/bash
# Purpose:   Updating software with custom messages and an update log.

echo -e "Update performed on:" > /home/user/.update.log
date >> /home/user/.update.log
echo -e "Fetching list of available updates..."
sudo apt-get update >> /home/user/.update.log >> /home/user/.update.log
echo -e "Upgrading current packages..."
sudo apt-get upgrade -yy >> /home/user/.update.log >> /home/user/.update.log
echo -e "Reticulating splines..."
echo -e "Removing orphaned packages/dependencies..."
sudo apt-get autoremove -yy >> /home/user/.update.log >> /home/user/.update.log
echo -e "Clearing apt cache..."
sudo apt-get autoclean && sudo apt-get clean >> /home/user/.update.log >> /home/user/.update.log
echo -e "Update Complete" | tee -a /home/user/.update.log
echo -e "The machine will reboot in 10 seconds."
sleep 10
reboot
