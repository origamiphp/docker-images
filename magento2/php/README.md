Magento 2 PHP images
====================
![PHP status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20images?style=for-the-badge)
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/magento2-php?style=for-the-badge)

✨ Features
-----------
* [Magento 2 requirements][1]
* [Composer][2]
* [Blackfire extension][3]
* [n98-magerun2][4]

Available versions: `ajardin/magento2-php:7.2`, `ajardin/magento2-php:7.3`, and `ajardin/magento2-php:7.4`.

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
      - ${PROJECT_LOCATION}/var/docker/php/custom.ini:/usr/local/etc/php/conf.d/custom.ini:ro
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
