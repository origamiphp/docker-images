FROM ajardin/magento2-php:default

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Local PHP image with Blackfire for a Magento 2 application."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/magento2/php/blackfire/Dockerfile"

RUN \
    curl -sS https://packages.blackfire.io/binaries/blackfire-php/1.29.4/blackfire-php-alpine_amd64-php-72.so \
        --output $(php -r "echo ini_get('extension_dir');")/blackfire.so && \
    docker-php-ext-enable blackfire
