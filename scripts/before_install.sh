#!/bin/bash

# Update the instance
sudo yum update -y

# Install Nginx
#sudo yum install nginx -y

sudo amazon-linux-extras install nginx1 -y

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx


# Install PHP and required PHP extensions
sudo yum install -y php php-fpm php-mysqlnd php-mbstring php-xml

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl restart nginx

