#!/bin/bash

# Set your desired database name, username, and password
DB_NAME="mylaraveldb"
DB_USER="abdul"
DB_PASS="abdul123"

# Run MySQL commands to create database, user, and grant privileges
mysql -u root -pYOUR_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mysql -u root -pYOUR_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';"
mysql -u root -pYOUR_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';"
mysql -u root -pYOUR_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

echo "Database ${DB_NAME} and user ${DB_USER} created successfully."
