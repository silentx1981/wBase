# Define PHP Version
FROM php:8.4-fpm

# System-Packages
RUN apt-get update && apt-get install -y \
    git unzip libicu-dev libzip-dev libonig-dev libxml2-dev \
    && docker-php-ext-install intl pdo_mysql zip mbstring

# Composer install
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

