FROM php:cli-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN \
    apk add --no-cache git && \
    composer global config minimum-stability dev && \
    composer global config repositories.phpcpd vcs https://github.com/ajardin/phpcpd && \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        sebastian/phpcpd:dev-master
ENV PATH "${PATH}:/root/.composer/vendor/bin"

WORKDIR /app
ENTRYPOINT [ "phpcpd" ]
CMD [ "--fuzzy", "src", "tests" ]
