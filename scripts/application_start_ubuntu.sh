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


# cd /var/www/html/myapp

