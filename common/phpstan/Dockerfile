FROM php:cli-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    apk add --no-cache git && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        phpunit/phpunit \
        phpstan/phpstan \
        phpstan/phpstan-phpunit phpstan/phpstan-symfony jangregor/phpstan-prophecy
ENV PATH "${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "phpstan" ]
CMD [ "analyze", "--verbose" ]
