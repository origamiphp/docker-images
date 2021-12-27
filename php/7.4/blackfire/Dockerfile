FROM ajardin/php:7.4

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Custom PHP 7.4 image with Blackfire for an application supported by Origami."
LABEL org.opencontainers.image.description="https://github.com/ajardin/docker-images/blob/master/php/README.md"
LABEL org.opencontainers.image.source="https://raw.githubusercontent.com/ajardin/docker-images/master/php/7.4/blackfire/Dockerfile"

# Installs the Blackfire PHP probe
RUN \
    version=$(php -r "echo PHP_MAJOR_VERSION.PHP_MINOR_VERSION;") && \
    architecture=$(case $(uname -m) in i386 | i686 | x86) echo "i386" ;; x86_64 | amd64) echo "amd64" ;; aarch64 | arm64 | armv8) echo "arm64" ;; *) echo "amd64" ;; esac) && \
    curl -A "Docker" -o /tmp/blackfire-probe.tar.gz -D - -L -s "https://blackfire.io/api/v1/releases/probe/php/alpine/${architecture}/${version}" && \
    mkdir -p /tmp/blackfire && \
    tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp/blackfire && \
    mv /tmp/blackfire/blackfire-*.so $(php -r "echo ini_get ('extension_dir');")/blackfire.so && \
    rm -rf /tmp/blackfire /tmp/blackfire-probe.tar.gz && \
    docker-php-ext-enable blackfire
