FROM php:8.1.9-cli

COPY work/ /var/www/html/

WORKDIR /var/www/html
