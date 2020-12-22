FROM php:7-cli

RUN \
    apt-get update && \
    apt-get install -y \
        libzip-dev \
        unzip \
        wget && \
    docker-php-ext-install -j$(nproc) zip

# Install Composer globally
COPY --from=composer:1 /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1

# Installs the Composer proxy required by Proximis
RUN \
    wget https://storage.googleapis.com/omnpackages/composerProxy-linux -O /usr/local/bin/composer-proxy && \
    chmod +x /usr/local/bin/composer-proxy

# Installs the custom entrypoint
COPY entrypoint.sh /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
ENTRYPOINT ["docker-custom-entrypoint"]
