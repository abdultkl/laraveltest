#!/bin/bash

# Update and install prerequisites
sudo apt update -y
sudo apt install nginx

# Mysql installation
sudo apt install mysql-server -y


# Install PHP 8.3 and required extensions
sudo apt install php-fpm php-mysql -y
#sudo apt install php-mbstring php8-xml 

sudo systemctl restart nginx

# Start the PHP service
sudo systemctl restart php-fpm

# Ensure MySQL is running
sudo systemctl restart mysql