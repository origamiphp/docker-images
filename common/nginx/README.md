Nginx image
===========
![Nginx pulls](https://img.shields.io/docker/pulls/ajardin/nginx?style=for-the-badge)

✨ Features
-----------
An image based on `nginx:alpine` with HTTPS support and custom domains.

🚀 Usage
--------
```yaml
services:
# [...]
  nginx:
    image: ajardin/nginx:latest
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    ports:
      - 443:443
    volumes:
      # Project files
      - ${PROJECT_LOCATION}:/var/www/html:delegated
      # SSL certificates
      - ${PROJECT_LOCATION}/var/docker/nginx/certs:/etc/nginx/ssl:cached
      # Custom configuration
      - ${PROJECT_LOCATION}/var/docker/nginx/custom.conf:/etc/nginx/conf.d/custom.conf:ro
    depends_on:
      - php
    tty: true
# [...]
```
