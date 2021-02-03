Magento 2 Nginx image
=====================
![Nginx pulls](https://img.shields.io/docker/pulls/ajardin/nginx?style=for-the-badge)

✨ Features
-----------
* HTTPS support (with or without [mkcert][1])
* [Default Magento 2 configuration][2]

An image based on `ajardin/nginx` with a default Magento configuration.

🚀 Usage
--------
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

<!-- Resources -->
[1]: https://github.com/FiloSottile/mkcert
[2]: /magento2/nginx/magento.conf.sample
