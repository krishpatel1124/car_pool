# Use an official PHP image with Apache
FROM php:8.1-apache

# Enable Apache rewrite module (required for many PHP apps)
RUN a2enmod rewrite

# Install PHP extensions needed for MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copy project files to the Apache server root
COPY . /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html/
