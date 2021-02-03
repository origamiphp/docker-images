Symfony PHP images
==================
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/symfony-php?style=for-the-badge)

✨ Features
-----------
* [Symfony requirements][1]
* [Composer][2]
* [Blackfire extension][3]

🐳 Supported tags
-----------------
* [`ajardin/symfony-php:8.0`](/symfony/php/8.0/Dockerfile)
* [`ajardin/symfony-php:8.0-blackfire`](/symfony/php/8.0/blackfire/Dockerfile)
* [`ajardin/symfony-php:8.0-xdebug`](/symfony/php/8.0/xdebug/Dockerfile)
* [`ajardin/symfony-php:7.4`](/symfony/php/7.4/Dockerfile)
* [`ajardin/symfony-php:7.4-blackfire`](/symfony/php/7.4/blackfire/Dockerfile)
* [`ajardin/symfony-php:7.4-xdebug`](/symfony/php/7.4/xdebug/Dockerfile)

🚀 Usage
--------
```bash
docker run --interactive --tty --volume=$(pwd):/var/www/html ajardin/symfony-php:latest sh
```

```yaml
services:
# [...]
  php:
    image: ajardin/symfony-php:${DOCKER_PHP_IMAGE}
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
