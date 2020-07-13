FROM php:7.4-cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the PHPStan tool."
LABEL org.opencontainers.image.description="https://github.com/phpstan/phpstan"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/common/phpstan"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1
ENV PATH "${PATH}:/root/.composer/vendor/bin"

RUN \
    apk update && \
    apk add --no-cache git && \
    composer global config minimum-stability dev && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        phpunit/phpunit:dev-master \
        phpstan/phpstan:dev-master \
        phpstan/phpstan-phpunit:dev-master phpstan/phpstan-symfony:dev-master jangregor/phpstan-prophecy:dev-master

WORKDIR /app

ENTRYPOINT [ "phpstan" ]
CMD [ "--version" ]
