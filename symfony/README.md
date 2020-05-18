Symfony images
==============

PHP images
----------
![PHP status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20images?style=for-the-badge)
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/symfony-php?style=for-the-badge)

Images based on `php:7.3-fpm-alpine` or `php:7.4-fpm-alpine` with Symfony prequisites, Composer, and the [Blackfire extension][1].

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
      - code_sync:/var/www/html:nocopy
      # Custom configuration
      - ${PROJECT_LOCATION}/var/docker/php/custom.ini:/usr/local/etc/php/conf.d/custom.ini:ro
      # SSH socket
      - /run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock
    tty: true
# [...]
```

<!-- Resources -->
[1]: https://blackfire.io/docs/introduction
