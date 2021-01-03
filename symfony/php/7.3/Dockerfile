FROM php:7.3-fpm-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="PHP 7.3 image for a Symfony application."
LABEL org.opencontainers.image.description="https://symfony.com/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/symfony/php"

# Install Symfony requirements
RUN \
    apk update && \
    apk add --no-cache \
        bash \
        freetype-dev \
        git \
        icu-dev \
        jq \
        libjpeg-turbo-dev \
        libpng-dev \
        libssh2-dev \
        libwebp-dev \
        libzip-dev \
        openssh-client \
        patch \
        perl \
        postgresql-libs \
        shadow \
        ssmtp \
        yarn && \
    apk add --no-cache --virtual .build-deps \
		$PHPIZE_DEPS \
		postgresql-dev && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-webp-dir=/usr/include && \
    docker-php-ext-install -j$(nproc) \
        intl \
        gd \
        opcache \
        pdo_mysql \
        pdo_pgsql \
        zip && \
    yes "" | pecl install apcu redis ssh2-1.2 && \
    docker-php-ext-enable apcu redis ssh2 && \
    perl -pi -e "s/mailhub=mail/mailhub=maildev/" /etc/ssmtp/ssmtp.conf && \
    apk del .build-deps

# Install the Blackfire PHP probe
ARG BLACKFIRE_PROBE_VERSION
RUN \
    curl https://packages.blackfire.io/binaries/blackfire-php/${BLACKFIRE_PROBE_VERSION}/blackfire-php-alpine_amd64-php-73.so \
        -sS --output $(php -r "echo ini_get('extension_dir');")/blackfire.so && \
    docker-php-ext-enable blackfire

# Assign a new UID/GID to avoid using a generated value
RUN \
    usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

# Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1

# Install custom entrypoint
COPY --from=ajardin/blackfire-entrypoint:latest /usr/local/bin/docker-custom-entrypoint /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["php-fpm"]
ENTRYPOINT ["docker-custom-entrypoint"]
