Common images
=============

Blackfire Entrypoint image
--------------------------
![PHP status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20images?style=for-the-badge)
![Blackfire Entrypoint pulls](https://img.shields.io/docker/pulls/ajardin/blackfire-entrypoint?style=for-the-badge)

An image based on `scratch` with a custom entrypoint to use with custom PHP images (i.e. [Magento 2][1], [Sylius][2], [Symfony][3]).

Humbug Box image
----------------
![Humbug Box status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Humbug%20Box%20image?style=for-the-badge)
![Humbug Box pulls](https://img.shields.io/docker/pulls/ajardin/humbug-box?style=for-the-badge)

An image based on `php:cli-alpine` with the [humbug/box][4] bundler.
```bash
# Compiles the project into a PHAR archive.
docker run --interactive --volume="$(pwd):/app" ajardin/humbug-box compile -vvv
```

Nginx images
------------
![Nginx status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Nginx%20images?style=for-the-badge)
![Nginx pulls](https://img.shields.io/docker/pulls/ajardin/nginx?style=for-the-badge)

An image based on `nginx:alpine` with HTTPS support and custom domains.
```yaml
services:
# [...]
  nginx:
    image: ajardin/nginx:latest
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    ports:
      - 443:443
    volumes:
      # Project files
      - code_sync:/var/www/html:nocopy
      # SSL certificates
      - ${PROJECT_LOCATION}/var/docker/nginx/certs:/etc/nginx/ssl:cached
      # Custom configuration
      - ${PROJECT_LOCATION}/var/docker/nginx/custom.conf:/etc/nginx/conf.d/custom.conf:ro
    depends_on:
      - php
    tty: true
# [...]
```

Copy-Paste Detector image
-------------------------
![Nginx status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Copy-Paste%20Detector%20image?style=for-the-badge)
![Nginx pulls](https://img.shields.io/docker/pulls/ajardin/phpcpd?style=for-the-badge)

An image based on `php:cli-alpine` with the [PHPCPD][5] tool.
```bash
# Executes the copy/paste analysis.
docker run --interactive --volume=$(pwd):/app ajardin/phpcpd --fuzzy src tests
```

PHP Coding Standards Fixer image
--------------------------------
![PHP Coding Standards Fixer status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20Coding%20Standards%20Fixer%20image?style=for-the-badge)
![PHP Coding Standards Fixer pulls](https://img.shields.io/docker/pulls/ajardin/phpcsfixer?style=for-the-badge)

An image based on `php:cli-alpine` with the [PHP-CS-Fixer][6] tool.
```bash
# Executes the code style analysis with dry-run mode.
docker run --interactive --volume=$(pwd):/app ajardin/phpcsfixer fix --dry-run --verbose
```

PhpMetrics image
----------------
![PhpMetrics status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PhpMetrics%20image?style=for-the-badge)
![PHP Coding Standards Fixer pulls](https://img.shields.io/docker/pulls/ajardin/phpmetrics?style=for-the-badge)

An image based on `php:cli-alpine` with the [PhpMetrics][7] tool.
```bash
# Executes the code style analysis with dry-run mode.
docker run --interactive --volume=$(pwd):/app ajardin/phpmetrics src,tests --report-html="./report" 
```

PHPStan image
-------------
![PHPStan status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHPStan%20image?style=for-the-badge)
![PHPStan pulls](https://img.shields.io/docker/pulls/ajardin/phpstan?style=for-the-badge)

An image based on `php:cli-alpine` with the [PHPStan][8] tool with some additional extensions (PHPUnit, Symfony and Prophecy).
```bash
# Executes a static analysis on all PHP files.
docker run --interactive --volume=$(pwd):/app ajardin/phpstan analyze src tests --verbose
```

```yaml
# Example of PHPStan configuration (phpstan.neon) to place at the project root.

includes:
  - /root/.composer/vendor/phpstan/phpstan-phpunit/extension.neon
  - /root/.composer/vendor/phpstan/phpstan-symfony/extension.neon
  - /root/.composer/vendor/jangregor/phpstan-prophecy/extension.neon

parameters:
  level: max
  paths:
    - '%currentWorkingDirectory%/src'
    - '%currentWorkingDirectory%/tests'
  symfony:
    container_xml_path: '%currentWorkingDirectory%/var/cache/dev/App_KernelDevDebugContainer.xml'
```

Psalm image
-----------
![Psalm status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Psalm%20image?style=for-the-badge)
![Psalm pulls](https://img.shields.io/docker/pulls/ajardin/psalm?style=for-the-badge)

An image based on `php:cli-alpine` with the [Psalm][9] tool with some additional extensions (PHPUnit and Symfony).
```bash
# Executes a static analysis on all PHP files.
docker run --interactive --volume=$(pwd):/app ajardin/psalm --show-info=true --find-dead-code
```

Security Checker image
----------------------
![Security Checker status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Security%20Checker%20image?style=for-the-badge)
![Security Checker pulls](https://img.shields.io/docker/pulls/ajardin/security-checker?style=for-the-badge)

An image based on `php:cli-alpine` with the [SensioLabs Security Checker][10].
```bash
# Executes a security audit on all PHP dependencies.
docker run --interactive --volume=$(pwd):/app ajardin/security-checker security:check ./composer.lock
```

Synchronization image
---------------------
![Synchronization status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Synchronization%20image?style=for-the-badge)
![Synchronization pulls](https://img.shields.io/docker/pulls/ajardin/synchro?style=for-the-badge)

An imaged based on `alpine:latest` with a new user and a new group, which share the same UID and GID than the ones
in `php` and `nginx` images, to make the files synchronization easier when using [Mutagen][11].
```yaml
services:
# [...]
  synchro:
    image: ajardin/synchro:latest
    container_name: ${COMPOSE_PROJECT_NAME}_synchro
    volumes:
      - code_sync:/var/www/html:nocopy
# [...]
volumes:
  code_sync: {}
```

Yarn image
----------
![Yarn status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Yarn%20image?style=for-the-badge)
![Yarn pulls](https://img.shields.io/docker/pulls/ajardin/yarn?style=for-the-badge)

An image based on `alpine:latest` with [Yarn][12] the dependency manager for JavaScript.
```bash
# Upgrades JavaScript packages.
docker run --interactive --volume=$(pwd):/app ajardin/yarn:latest sh -c "yarn upgrade"
```

<!-- Resources -->
[1]: /magento2
[2]: /sylius
[3]: /symfony
[4]: https://github.com/humbug/box
[5]: https://github.com/sebastianbergmann/phpcpd
[6]: https://github.com/FriendsOfPHP/PHP-CS-Fixer
[7]: https://github.com/phpmetrics/PhpMetrics
[8]: https://github.com/phpstan/phpstan
[9]: https://github.com/vimeo/psalm
[10]: https://github.com/sensiolabs/security-checker
[11]: https://mutagen.io/
[12]: https://yarnpkg.com/
