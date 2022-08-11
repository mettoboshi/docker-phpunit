FROM php:8.1.9-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY work/ /var/www/html/

WORKDIR /var/www/html
