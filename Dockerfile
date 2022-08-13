FROM php:8.1.9-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV PATH $PATH:/var/www/html/vendor/bin

COPY php/composer.json /var/www/html/composer.json
COPY php/phpunit.xml /var/www/html/phpunit.xml

RUN apt-get update && apt-get install -y zip

WORKDIR /var/www/html/

RUN composer install

WORKDIR /var/www/html/app
VOLUME /var/www/html/app

ENTRYPOINT ["phpunit"]
CMD ["."]