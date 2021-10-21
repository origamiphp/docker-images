# Image for Mutagen synchronization
![Image pulls](https://img.shields.io/docker/pulls/ajardin/synchro)

## ✨ Features
An image based on `alpine:latest` with some configuration to work with Mutagen.

## 🐳 Supported tags
* [![Image size (latest)](https://img.shields.io/docker/image-size/ajardin/synchro/latest?label=ajardin%2Fsynchro%3Alatest)](/common/synchro/Dockerfile)

## 🚀 Usage
```yaml
services:
# [...]
  synchro:
    image: ajardin/synchro:latest
    container_name: ${COMPOSE_PROJECT_NAME}_synchro
    volumes:
      - code:/var/www/html:nocopy
# [...]
```
