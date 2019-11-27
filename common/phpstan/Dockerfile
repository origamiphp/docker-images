FROM phpstan/phpstan:latest

RUN \
    composer global require --no-suggest --optimize-autoloader --classmap-authoritative \
        phpunit/phpunit \
        phpstan/phpstan-phpunit \
        phpstan/phpstan-symfony \
        jangregor/phpstan-prophecy

WORKDIR /app
ENTRYPOINT [ "phpstan" ]
CMD [ "analyze", "--verbose" ]
