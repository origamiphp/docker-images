FROM php:8.0-cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the Box bundler for PHP."
LABEL org.opencontainers.image.description="https://github.com/humbug/box"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/common/humbug-box"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1
ENV PATH "${PATH}:/root/.composer/vendor/bin"

RUN \
    apk update && \
    apk add --no-cache git && \
    composer global require --optimize-autoloader --classmap-authoritative \
        humbug/box

WORKDIR /app

ENTRYPOINT [ "box" ]
CMD [ "--version" ]
