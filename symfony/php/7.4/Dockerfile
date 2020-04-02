FROM php:7.4-fpm-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="PHP 7.4 image for a Symfony application."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/symfony/php/7.4/Dockerfile"

# Install Symfony requirements
RUN \
    apk update && \
    apk add --no-cache \
        bash \
        freetype-dev \
        git \
        icu-dev \
        libjpeg-turbo-dev \
        libpng-dev \
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
    docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install -j$(nproc) \
        intl \
        gd \
        opcache \
        pdo_mysql \
        pdo_pgsql && \
    perl -pi -e "s/mailhub=mail/mailhub=maildev/" /etc/ssmtp/ssmtp.conf && \
    apk del .build-deps

# Install the PHP probe for Blackfire
RUN \
    curl -sS https://packages.blackfire.io/binaries/blackfire-php/1.32.0/blackfire-php-alpine_amd64-php-74.so \
        --output $(php -r "echo ini_get('extension_dir');")/blackfire.so && \
    docker-php-ext-enable blackfire

## Install Composer globally
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer config --global repos.packagist composer https://repo.packagist.org
ENV PATH "${PATH}:/root/.composer/vendor/bin"

# Assign a new UID/GID to avoid using a generated value
RUN \
    usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

## Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1

# Install custom entrypoint
COPY --from=ajardin/blackfire-entrypoint:latest /usr/local/bin/docker-custom-entrypoint /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["php-fpm"]
ENTRYPOINT ["docker-custom-entrypoint"]
