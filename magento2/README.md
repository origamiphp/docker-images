Magento 2 images
================

Elasticsearch for Magento 2 image
---------------------------------
![Elasticsearch for Magento 2 status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Elasticsearch%20for%20Magento%202%20image?style=for-the-badge)
![Elasticsearch for Magento 2 pulls](https://img.shields.io/docker/pulls/ajardin/magento2-elasticsearch?style=for-the-badge)

An image based on `docker.elastic.co/elasticsearch/elasticsearch:6.8.9` or
`docker.elastic.co/elasticsearch/elasticsearch:7.6.2` with two additional plugins: `analysis-icu` and
`analysis-phonetic`. These modules are required if you want to use [ElasticSuite][1].

```yaml
services:
# [...]
  elasticsearch:
    image: ajardin/magento2-elasticsearch:latest
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    volumes:
      - elasticsearch:/usr/share/elasticsearch/data
# [...]
volumes:
  elasticsearch: {}
```

MySQL for Magento 2 image
-------------------------
![MySQL for Magento 2 status](https://img.shields.io/github/workflow/status/ajardin/docker-images/MySQL%20for%20Magento%202%20image?style=for-the-badge)
![MySQL for Magento 2 pulls](https://img.shields.io/docker/pulls/ajardin/magento2-mysql?style=for-the-badge)

An image based on `mysql:5.7` with only a modification in the configuration to increase the `max_allowed_packet` value
to `256M`.

```yaml
services:
# [...]
  mysql:
    image: ajardin/magento2-mysql:latest
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    ports:
      - 3306:3306
    volumes:
      - mysql:/var/lib/mysql
    tty: true
# [...]
volumes:
  mysql: {}
```

Nginx images
------------
![Nginx status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Nginx%20images?style=for-the-badge)
![Nginx pulls](https://img.shields.io/docker/pulls/ajardin/nginx?style=for-the-badge)

An image based on `ajardin/nginx` with a default Magento configuration.

```yaml
services:
# [...]
  nginx:
    image: ajardin/magento2-nginx:latest
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

PHP images
----------
![PHP status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20images?style=for-the-badge)
![PHP pulls](https://img.shields.io/docker/pulls/ajardin/magento2-php?style=for-the-badge)

Images based on `php:7.2-fpm-alpine`, `php:7.3-fpm-alpine`, or `php:7.4-fpm-alpine` with Magento 2 prequisites,
Composer, n98-magerun2, and the [Blackfire extension][2].

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
      - code_sync:/var/www/html:nocopy
      # Custom configuration
      - ${PROJECT_LOCATION}/var/docker/php/custom.ini:/usr/local/etc/php/conf.d/custom.ini:ro
      # SSH socket
      - /run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock
    tty: true
# [...]
```

<!-- Resources -->
[1]: https://github.com/Smile-SA/elasticsuite
[2]: https://blackfire.io/docs/introduction
