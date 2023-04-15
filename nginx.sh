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

# Install New Relic
sudo sh -c "echo 'deb http://apt.newrelic.com/debian/ newrelic non-free' > /etc/apt/sources.list.d/newrelic.list"
sudo wget -O- https://download.newrelic.com/3897480.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y newrelic-sysmond

# Configure New Relic
sudo nrsysmond-config --set license_key=c3315154d34701418f56b663a0ea00ea93ccNRAL
sudo service newrelic-sysmond start

# Start Nginx
sudo systemctl start nginx

