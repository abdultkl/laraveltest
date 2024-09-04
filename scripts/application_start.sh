#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Configure Nginx to serve the Laravel application
sudo tee /etc/nginx/conf.d/laravel.conf > /dev/null <<EOL
server {
    listen 80;
    server_name _;

    root /var/www/html/public;
    index index.php index.html index.htm;

    location / {
        try_files \$uri \$uri/ /index.php?\$query_string;
    }

    location ~ \.php$ {
        include /etc/nginx/fastcgi_params;
        fastcgi_pass 127.0.0.1:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
    }

    location ~ /\.ht {
        deny all;
    }
}
EOL

# Restart Nginx and PHP-FPM to apply changes
sudo service nginx restart
