#!/bin/bash

# Restart NGINX to load the configuration
sudo systemctl restart nginx

# Start the PHP service
sudo systemctl restart php-fpm

# Ensure MySQL is running
sudo systemctl restart mysql

#sudo curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php -y
#sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer 

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

cd /var/www/html

sudo composer create-project --prefer-dist laravel/myapp -y

sudo chmod -R 775 /var/www/html/myapp/storage
sudo chmod -R 775 /var/www/html/myapp/bootstrap/cache


cd /var/www/html/myapp
sudo cp .env.example .env
sudo php artisan key:generate

