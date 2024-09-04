#!/bin/bash

# Update and install prerequisites
sudo apt-get update -y
sudo apt-get install -y software-properties-common

# Add the PHP PPA repository
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y

# Install PHP 8.3 and required extensions
sudo apt-get install -y php8.3 php8.3-fpm php8.3-mysql php8.3-mbstring php8.3-xml php8.3-json

# Install Nginx
sudo apt-get install -y nginx