FROM php:8.1.9-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV PATH $PATH:/var/www/html/vendor/bin

COPY config/composer.json /tmp/
COPY config/phpunit.xml /tmp/
COPY sample /tmp/
RUN apt-get update && apt-get install -y zip

WORKDIR /var/www/html/
VOLUME /var/www/html/

COPY config/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]