FROM php:7.4-cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the Psalm tool."
LABEL org.opencontainers.image.description="https://github.com/vimeo/psalm"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/common/psalm"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1
ENV PATH "${PATH}:/root/.composer/vendor/bin"

RUN \
    apk update && \
    apk add --no-cache git && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        vimeo/psalm \
        psalm/plugin-phpunit psalm/plugin-symfony \
        phpunit/phpunit

WORKDIR /app

ENTRYPOINT [ "psalm" ]
CMD [ "--version" ]
