# PHP images
![Image pulls](https://img.shields.io/docker/pulls/ajardin/php)

## ✨ Features
* Support for multiple PHP applications
    - [Drupal][drupal]
    - [Magento][magento] with [n98-magerun2][n98-magerun2]
    - [OroCommerce][orocommerce]
    - [Symfony][symfony]
    - [Sylius][sylius]
* [Composer][composer]
* [Blackfire extension][blackfire] or [Xdebug extension][xdebug]

## 🐳 Supported tags
* [![Image size (8.2)](https://img.shields.io/docker/image-size/ajardin/php/8.2?label=ajardin%2Fphp%3A8.2)](/php/8.2/Dockerfile)
* [![Image size (8.2 with Blackfire)](https://img.shields.io/docker/image-size/ajardin/php/8.2-blackfire?label=ajardin%2Fphp%3A8.2-blackfire)](/php/8.2/blackfire/Dockerfile)
* [![Image size (8.2 with Xdebug)](https://img.shields.io/docker/image-size/ajardin/php/8.2-xdebug?label=ajardin%2Fphp%3A8.2-xdebug)](/php/8.2/xdebug/Dockerfile)

[]()

* [![Image size (8.1)](https://img.shields.io/docker/image-size/ajardin/php/8.1?label=ajardin%2Fphp%3A8.1)](/php/8.1/Dockerfile)
* [![Image size (8.1 with Blackfire)](https://img.shields.io/docker/image-size/ajardin/php/8.1-blackfire?label=ajardin%2Fphp%3A8.1-blackfire)](/php/8.1/blackfire/Dockerfile)
* [![Image size (8.1 with Xdebug)](https://img.shields.io/docker/image-size/ajardin/php/8.1-xdebug?label=ajardin%2Fphp%3A8.1-xdebug)](/php/8.1/xdebug/Dockerfile)

[]()

* [![Image size (8.0)](https://img.shields.io/docker/image-size/ajardin/php/8.0?label=ajardin%2Fphp%3A8.0)](/php/8.0/Dockerfile)
* [![Image size (8.0 with Blackfire)](https://img.shields.io/docker/image-size/ajardin/php/8.0-blackfire?label=ajardin%2Fphp%3A8.0-blackfire)](/php/8.0/blackfire/Dockerfile)
* [![Image size (8.0 with Xdebug)](https://img.shields.io/docker/image-size/ajardin/php/8.0-xdebug?label=ajardin%2Fphp%3A8.0-xdebug)](/php/8.0/xdebug/Dockerfile)

[]()

* [![Image size (7.4)](https://img.shields.io/docker/image-size/ajardin/php/7.4?label=ajardin%2Fphp%3A7.4)](/php/7.4/Dockerfile)
* [![Image size (7.4 with Blackfire)](https://img.shields.io/docker/image-size/ajardin/php/7.4-blackfire?label=ajardin%2Fphp%3A7.4-blackfire)](/php/7.4/blackfire/Dockerfile)
* [![Image size (7.4 with Xdebug)](https://img.shields.io/docker/image-size/ajardin/php/7.4-xdebug?label=ajardin%2Fphp%3A7.4-xdebug)](/php/7.4/xdebug/Dockerfile)

[]()

* [![Image size (7.3)](https://img.shields.io/docker/image-size/ajardin/php/7.3?label=ajardin%2Fphp%3A7.3)](/php/7.3/Dockerfile)
* [![Image size (7.3 with Blackfire)](https://img.shields.io/docker/image-size/ajardin/php/7.3-blackfire?label=ajardin%2Fphp%3A7.3-blackfire)](/php/7.3/blackfire/Dockerfile)
* [![Image size (7.3 with Xdebug)](https://img.shields.io/docker/image-size/ajardin/php/7.3-xdebug?label=ajardin%2Fphp%3A7.3-xdebug)](/php/7.3/xdebug/Dockerfile)

## 🚀 Usage
```bash
docker run --interactive --tty --volume=$(pwd):/var/www/html ajardin/php:8.2 sh
```

```yaml
services:
# [...]
  php:
    image: ajardin/php:8.2
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
