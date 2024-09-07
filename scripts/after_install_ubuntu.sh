#!/bin/bash

# Restart NGINX to load the configuration
sudo systemctl restart nginx

# Start the PHP service
sudo systemctl restart php-fpm

# Ensure MySQL is running
sudo systemctl restart mysql