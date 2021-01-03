FROM ajardin/symfony-php:7.4

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="PHP 7.4 image for an OroCommerce application."
LABEL org.opencontainers.image.description="https://oroinc.com/b2b-ecommerce/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/orocommerce/php"

# Install OroCommerce requirements
RUN \
    apk update && \
    apk add --no-cache \
        imap-dev \
        libxml2-dev \
        tidyhtml-dev \
        npm && \
    docker-php-ext-install \
        imap \
        pcntl \
        soap \
        tidy

# Workaround because the iconv extension behavior
RUN apk add gnu-libiconv --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

# Downgrade Composer to the latest 1.x version
RUN composer self-update --1
