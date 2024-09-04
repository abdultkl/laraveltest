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
sudo yum install -y php8.3 php-fpm8.3 php-mysqlnd php-mbstring php-xml

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl restart nginx

