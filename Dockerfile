# Base official WordPress image
FROM wordpress:6.5.3-php8.1-apache

# Copy custom content (themes/plugins/uploads/etc.)
#COPY wp-content/ /var/www/html/wp-content/

# Install additional PHP extensions if needed
RUN apt-get update && apt-get install -y \
    libzip-dev \
 && docker-php-ext-install zip

# Set proper ownership for WordPress
RUN chown -R www-data:www-data /var/www/html/wp-content

