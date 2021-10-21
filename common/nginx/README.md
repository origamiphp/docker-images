# Nginx image
![Image pulls](https://img.shields.io/docker/pulls/ajardin/nginx)

## ✨ Features
An image based on `nginx:alpine` with HTTPS support and custom domains.

## 🐳 Supported tags
* [![Image size (latest)](https://img.shields.io/docker/image-size/ajardin/nginx/latest?label=ajardin%2Fnginx%3Alatest)](/common/nginx/Dockerfile)

## 🚀 Usage
```yaml
services:
# [...]
  nginx:
    image: ajardin/nginx:latest
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
