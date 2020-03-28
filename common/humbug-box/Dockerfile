FROM php:cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the Box bundler for PHP."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/common/humbug-box/Dockerfile"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

## Install Composer globally
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    apk update && apk add --no-cache git && \
    composer global config minimum-stability dev && \
    composer global require humbug/box:dev-master --no-suggest --optimize-autoloader --classmap-authoritative
ENV PATH="${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "box" ]
