#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🛠️ Updating packages..."
sudo yum update -y
sudo yum install -y epel-release

echo "🌐 Installing Nginx..."
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx

echo "🛢️ Installing MariaDB (MySQL-compatible)..."
sudo yum install -y mariadb-server
sudo systemctl enable mariadb
sudo systemctl start mariadb
sudo systemctl status mariadb

echo "🔐 Running MySQL secure installation (non-interactive mode skipped)..."
# Note: For production, secure installation should be run interactively

echo "✅ Services installed and running."
