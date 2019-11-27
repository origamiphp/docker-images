FROM php:cli-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    apk add --no-cache git && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        friendsofphp/php-cs-fixer:dev-master
ENV PATH "${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "php-cs-fixer" ]
CMD [ "fix", "--dry-run", "--verbose" ]
