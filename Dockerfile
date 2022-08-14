FROM php:8.1.9-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV PATH $PATH:/var/www/html/vendor/bin

COPY config/composer.json /var/www/html/
COPY config/phpunit.xml /var/www/html/

RUN apt-get update && apt-get install -y zip

WORKDIR /var/www/html/

RUN composer install

WORKDIR /var/www/html
VOLUME /var/www/html

ENTRYPOINT ["phpunit"]
CMD ["."]