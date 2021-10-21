# Nginx images for Magento 2
![Image pulls](https://img.shields.io/docker/pulls/ajardin/nginx)

## ✨ Features
* HTTPS support (with or without [mkcert][1])
* [Default Magento 2 configuration][2]

## 🐳 Supported tags
* [![Image size (latest)](https://img.shields.io/docker/image-size/ajardin/nginx/latest?label=ajardin%2Fnginx%3Alatest)](/magento2/nginx/Dockerfile)

## 🚀 Usage
```yaml
services:
# [...]
  nginx:
    image: ajardin/magento2-nginx:latest
    ports:
      - "80:80"
      - "443:443"
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

<!-- Resources -->
[1]: https://github.com/FiloSottile/mkcert
[2]: /magento2/nginx/magento.conf.sample
