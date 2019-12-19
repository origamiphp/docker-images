FROM ajardin/symfony-php:default

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Local PHP image with Xdebug for a Symfony application."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/magento2/php/xdebug/Dockerfile"

RUN \
    apk upgrade && \
    apk add --no-cache --virtual .build-deps $PHPIZE_DEPS && \
    yes "" | pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    apk del .build-deps
