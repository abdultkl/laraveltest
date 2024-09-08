# #!/bin/bash

# # Navigate to the application directory
# cd /var/www/html

# # Configure Nginx to serve the Laravel application
# sudo tee /etc/nginx/conf.d/laravel.conf > /dev/null <<EOL
# server {
#     listen 80;
#     server_name http://54.186.179.59;

#     root /var/www/html/public;
#     index index.php index.html index.htm;

#     location / {
#         try_files \$uri \$uri/ /index.php?\$query_string;
#     }

#     location ~ \.php$ {
#         include /etc/nginx/fastcgi_params;
#         fastcgi_pass 127.0.0.1:9000;
#         fastcgi_index index.php;
#         fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
#     }

#     location ~ /\.ht {
#         deny all;
#     }
# }
# EOL

# # Restart Nginx and PHP-FPM to apply changes
# sudo systemctl start nginx
# sudo systemctl restart nginx


#!/bin/bash

# Start NGINX
sudo systemctl start nginx

# Start PHP FPM
sudo systemctl start php8.3-fpm


# Start MySQL
sudo systemctl start mysql


 cd /var/www/html/myapp


#!/bin/bash

# Define the environment variables in the .env file
cat <<EOT > /var/www/html/myapp/.env
APP_NAME=Laravel
APP_ENV=production
APP_KEY=base64:your-application-key-here
APP_DEBUG=false
APP_URL=http://your-domain-or-ip

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=mylaraveldb
DB_USERNAME=abdul
DB_PASSWORD=abdul123

CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

EOT

# Set permissions for the Laravel project directory

sudo chmod -R 775 /var/www/html/myapp/storage
sudo chmod -R 775 /var/www/html/myapp/bootstrap/cache

# Install dependencies using Composer
cd /var/www/html/myapp

# Run Laravel migrations
php artisan migrate --force

# Clear and optimize caches

sudo php artisan optimize:clear

sudo php artisan optimize


