FROM php:cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the PHPStan tool."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/common/phpstan/Dockerfile"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    apk add --no-cache git && \
    composer global config minimum-stability dev && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        phpunit/phpunit:dev-master \
        phpstan/phpstan:dev-master \
        phpstan/phpstan-phpunit:dev-master phpstan/phpstan-symfony:dev-master jangregor/phpstan-prophecy:dev-master
ENV PATH "${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "phpstan" ]
CMD [ "analyze", "--verbose" ]
