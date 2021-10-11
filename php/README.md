PHP images
==========
![Docker pulls](https://img.shields.io/docker/pulls/ajardin/php?style=for-the-badge)

✨ Features
-----------
* Support for multiple PHP applications
    - [Drupal][drupal]
    - [Magento][magento] with [n98-magerun2][n98-magerun2]
    - [OroCommerce][orocommerce]
    - [Symfony][symfony]
    - [Sylius][sylius]
* [Composer][composer]
* [Blackfire extension][blackfire] or [Xdebug extension][xdebug]

🐳 Supported tags
-----------------
* [`ajardin/php:8.1`](/php/8.1/Dockerfile)
* ~~ajardin/php:8.1-blackfire~~ (PHP 8.1 is not yet supported by the editor)
* [`ajardin/php:8.1-xdebug`](/php/8.1/xdebug/Dockerfile)
* [`ajardin/php:8.0`](/php/8.0/Dockerfile)
* [`ajardin/php:8.0-blackfire`](/php/8.0/blackfire/Dockerfile)
* [`ajardin/php:8.0-xdebug`](/php/8.0/xdebug/Dockerfile)
* [`ajardin/php:7.4`](/php/7.4/Dockerfile)
* [`ajardin/php:7.4-blackfire`](/php/7.4/blackfire/Dockerfile)
* [`ajardin/php:7.4-xdebug`](/php/7.4/xdebug/Dockerfile)
* [`ajardin/php:7.3`](/php/7.3/Dockerfile)
* [`ajardin/php:7.3-blackfire`](/php/7.3/blackfire/Dockerfile)
* [`ajardin/php:7.3-xdebug`](/php/7.3/xdebug/Dockerfile)

🚀 Usage
--------
```bash
docker run --interactive --tty --volume=$(pwd):/var/www/html ajardin/php:8.0 sh
```

```yaml
services:
# [...]
  php:
    image: ajardin/php:${DOCKER_PHP_IMAGE}
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    environment:
      - SSH_AUTH_SOCK=/run/host-services/ssh-auth.sock
    volumes:
      # Project files
      - ${PROJECT_LOCATION}:/var/www/html:delegated
      # Custom configuration
      - ${PROJECT_LOCATION}/var/docker/php/php-cli.ini:/usr/local/etc/php/php-cli.ini:ro
      - ${PROJECT_LOCATION}/var/docker/php/php-fpm-fcgi.ini:/usr/local/etc/php/php-fpm-fcgi.ini:ro
      # SSH socket
      - /run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock
    tty: true
# [...]
```

<!-- Resources -->
[drupal]: https://www.drupal.org/docs/system-requirements/php-requirements
[magento]: https://devdocs.magento.com/guides/v2.4/install-gde/system-requirements.html
[n98-magerun2]: https://github.com/netz98/n98-magerun2
[orocommerce]: https://doc.oroinc.com/backend/setup/system-requirements/
[symfony]: https://symfony.com/doc/current/setup.html#technical-requirements
[sylius]: https://docs.sylius.com/en/latest/book/installation/requirements.html
[composer]: https://getcomposer.org/
[blackfire]: https://blackfire.io/docs/introduction
[xdebug]: https://github.com/xdebug/xdebug
