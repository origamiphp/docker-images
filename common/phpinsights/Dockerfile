FROM php:7.4-cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the PHP Insights tool."
LABEL org.opencontainers.image.description="https://github.com/nunomaduro/phpinsights"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/common/phpinsights/Dockerfile"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1
ENV PATH "${PATH}:/root/.composer/vendor/bin"

RUN \
    apk update && \
    apk add --no-cache git && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        nunomaduro/phpinsights

WORKDIR /app

ENTRYPOINT [ "phpinsights" ]
CMD [ "--version" ]
