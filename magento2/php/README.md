Magento 2 PHP images
====================
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/magento2-php?style=for-the-badge)

✨ Features
-----------
* [Magento 2 requirements][1]
* [Composer][2]
* [Blackfire extension][3]
* [n98-magerun2][4]

🐳 Supported tags
-----------------
* [`ajardin/magento2-php:7.4`](/magento2/php/7.4/Dockerfile)
* [`ajardin/magento2-php:7.4-blackfire`](/magento2/php/7.4/blackfire/Dockerfile)
* [`ajardin/magento2-php:7.4-xdebug`](/magento2/php/7.4/xdebug/Dockerfile)
* [`ajardin/magento2-php:7.3`](/magento2/php/7.3/Dockerfile)
* [`ajardin/magento2-php:7.3-blackfire`](/magento2/php/7.3/blackfire/Dockerfile)
* [`ajardin/magento2-php:7.3-xdebug`](/magento2/php/7.3/xdebug/Dockerfile)

🚀 Usage
--------
```bash
docker run --interactive --tty --volume=$(pwd):/var/www/html ajardin/magento2-php:latest sh
```

```yaml
services:
# [...]
  php:
    image: ajardin/magento2-php:${DOCKER_PHP_IMAGE}
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
[1]: https://symfony.com/doc/current/setup.html#technical-requirements
[2]: https://getcomposer.org/
[3]: https://blackfire.io/docs/introduction
[4]: https://github.com/netz98/n98-magerun2
