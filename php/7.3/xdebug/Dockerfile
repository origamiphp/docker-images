FROM ajardin/php:7.3

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Custom PHP 7.3 image with Xdebug for an application supported by Origami."
LABEL org.opencontainers.image.description="https://github.com/ajardin/docker-images/blob/master/php/README.md"
LABEL org.opencontainers.image.source="https://raw.githubusercontent.com/ajardin/docker-images/master/php/7.3/xdebug/Dockerfile"

# Install the Xdebug extension
RUN \
    apk update && \
    apk add --no-cache --virtual .build-deps $PHPIZE_DEPS && \
    yes "" | pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    apk del .build-deps
