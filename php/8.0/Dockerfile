FROM php:8.0-fpm

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Custom PHP 8.0 image for an application supported by Origami."
LABEL org.opencontainers.image.description="https://github.com/origamiphp/docker-images/blob/main/php/README.md"
LABEL org.opencontainers.image.source="https://github.com/origamiphp/docker-images/blob/main/php/8.0/Dockerfile"

# Installs the system requirements
RUN \
    apt update && \
    apt install -y --no-install-recommends \
        git \
        jq \
        libc-client-dev \
        libfreetype-dev \
        libicu-dev \
        libkrb5-dev \
        libjpeg-dev \
        libpng-dev \
        libpq-dev \
        libssh2-1-dev \
        libtidy-dev \
        libwebp-dev \
        libxml2-dev \
        libxml2-utils \
        libxslt-dev \
        libzip-dev \
        ssmtp

# Installs the PHP extensions
RUN \
    docker-php-ext-configure imap --with-kerberos --with-imap-ssl && \
    docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install -j$(nproc) \
        bcmath \
        exif \
        imap \
        intl \
        gd \
        opcache \
        pcntl \
        pdo_mysql \
        pdo_pgsql \
        soap \
        sockets \
        tidy \
        xsl \
        zip && \
    yes "" | pecl install apcu redis ssh2-beta && \
    docker-php-ext-enable apcu redis ssh2 && \
    perl -pi -e "s|;pm.status_path = /status|pm.status_path = /php_fpm_status|g" /usr/local/etc/php-fpm.d/www.conf && \
    perl -pi -e "s/mailhub=mail/mailhub=maildev/" /etc/ssmtp/ssmtp.conf

# Installs the JavaScript dependencies
RUN \
    curl -fsSL https://deb.nodesource.com/setup_17.x | bash - && \
    apt install -y --no-install-recommends nodejs && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update && \
    apt install -y --no-install-recommends yarn && \
    yarn global add grunt-cli gulp

# Assigns a new UID/GID to avoid using a generated value
RUN \
    usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

# Installs the "netz98/n98-magerun2" package
RUN \
    curl -sS https://files.magerun.net/n98-magerun2.phar --output /usr/local/bin/magerun2 && \
    chmod +x /usr/local/bin/magerun2

# Installs Composer globally and configures it
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1

# Installs the custom entrypoint
COPY --from=ajardin/php-entrypoint:latest /usr/local/bin/docker-custom-entrypoint /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["php-fpm"]
ENTRYPOINT ["docker-custom-entrypoint"]
