FROM php:cli-alpine

# Install system requirements
RUN \
    apk update && \
    apk add --no-cache git && \
    apk add --no-cache --virtual .build-deps openssl-dev && \
    curl -L https://github.com/humbug/box/releases/latest/download/box.phar -o /usr/bin/box && \
    chmod +x /usr/bin/box && \
    apk del .build-deps

## Install Composer globally
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH "${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "box" ]
