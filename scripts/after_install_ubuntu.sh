# Install Composer dependencies
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo composer install --no-dev --prefer-dist --optimize-autoloader


# Set up Laravel environment
cp .env.example .env
php artisan key:generate

sudo chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache