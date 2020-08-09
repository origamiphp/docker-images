Sylius PHP images
=================
![PHP status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20images?style=for-the-badge)
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/sylius-php?style=for-the-badge)

✨ Features
-----------
* [Sylius requirements][1]
* [Composer][2]
* [Blackfire extension][3]

Available versions: `ajardin/sylius-php:7.3`, `ajardin/sylius-php:7.4`, and `ajardin/sylius-php:8.0`.

🚀 Usage
--------
```bash
docker run --interactive --tty --volume=$(pwd):/var/www/html ajardin/sylius-php:latest sh
```

```yaml
services:
# [...]
  php:
    image: ajardin/sylius-php:${DOCKER_PHP_IMAGE}
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
[1]: https://docs.sylius.com/en/latest/book/installation/requirements.html
[2]: https://getcomposer.org/
[3]: https://blackfire.io/docs/introduction
