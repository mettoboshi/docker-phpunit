FROM php:8.1.9-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV PATH $PATH:/var/www/html/vendor/bin

COPY work/ /var/www/html/

RUN apt-get update && apt-get install -y zip

WORKDIR /var/www/html/

RUN composer install
