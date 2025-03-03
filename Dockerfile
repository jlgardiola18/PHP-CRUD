# Use the official PHP image with Apache
FROM php:8.1-apache

# Install the required extensions for PHP to work with MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (if needed for your application)
RUN a2enmod rewrite

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the PHP script to the working directory in the container
COPY . /var/www/html/

# Expose port 80 to access the application
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
