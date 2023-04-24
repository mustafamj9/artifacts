#!/bin/bash

# Update the package repository
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y

# Start Nginx
sudo systemctl start nginx

# Install Git
sudo apt-get install git -y

