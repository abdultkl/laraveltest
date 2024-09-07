#!/bin/bash

# Update and install prerequisites
sudo apt update -y
sudo apt install nginx

# Mysql installation
sudo apt install mysql-server -y


# Install PHP 8.3 and required extensions
sudo apt install php-fpm php-mysql -y
#sudo apt install php-mbstring php8-xml 