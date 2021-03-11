OroCommerce PHP images
======================
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/orocommerce-php?style=for-the-badge)

✨ Features
-----------
* [OroCommerce requirements][1]
* [Composer][2]
* [Blackfire extension][3]

🐳 Supported tags
-----------------
* [`ajardin/orocommerce-php:7.4`](/orocommerce/php/7.4/Dockerfile)
* [`ajardin/orocommerce-php:7.4-blackfire`](/orocommerce/php/7.4/blackfire/Dockerfile)
* [`ajardin/orocommerce-php:7.4-xdebug`](/orocommerce/php/7.4/xdebug/Dockerfile)

🚀 Usage
--------
```bash
docker run --interactive --tty --volume=$(pwd):/var/www/html ajardin/orocommerce-php:7.4 sh
```

```yaml
services:
# [...]
  php:
    image: ajardin/orocommerce-php:${DOCKER_PHP_IMAGE}
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
[1]: https://doc.oroinc.com/backend/setup/system-requirements/
[2]: https://getcomposer.org/
[3]: https://blackfire.io/docs/introduction
