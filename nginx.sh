#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade

# Install nginx
sudo apt-get install nginx

# Start nginx service
sudo systemctl start nginx

# Install git
sudo apt-get install git

# Set permissions for nginx
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
