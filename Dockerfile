FROM php:8.1.9-cli

COPY main.php /var/www/html/

WORKDIR /var/www/html
