FROM php:cli-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with the SensioLabs Security Checker."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/common/security/Dockerfile"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    apk add --no-cache git && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        sensiolabs/security-checker:dev-master
ENV PATH "${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "security-checker" ]
CMD [ "security:check", "./composer.lock" ]
