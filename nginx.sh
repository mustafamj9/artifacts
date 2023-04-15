#!/bin/bash

# Update the package repository
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Install Ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Start Nginx
sudo systemctl start nginx

