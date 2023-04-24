#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade

# Install nginx
sudo apt-get install nginx

# Install Ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Start Nginx
sudo systemctl start nginx

# Install git
sudo apt-get install git

# Restart the VM
sudo reboot