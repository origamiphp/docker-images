FROM ajardin/php:8.0

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Custom PHP 8.0 image with Xdebug for an application supported by Origami."
LABEL org.opencontainers.image.description="https://github.com/origamiphp/docker-images/blob/main/php/README.md"
LABEL org.opencontainers.image.source="https://github.com/origamiphp/docker-images/blob/main/php/8.0/xdebug/Dockerfile"

# Installs the Xdebug extension
RUN \
    yes "" | pecl install xdebug && \
    docker-php-ext-enable xdebug
