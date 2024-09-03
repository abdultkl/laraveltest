#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Install Composer dependencies
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo composer install --no-dev --prefer-dist --optimize-autoloader


# Set up Laravel environment
cp .env.example .env
php artisan key:generate

# Set permissions for Laravel
sudo chown -R nginx:nginx /var/www/html
sudo find /var/www/html -type f -exec chmod 644 {} \;
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo chown -R nginx:nginx /var/www/html/storage /var/www/html/bootstrap/cache
sudo chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache
