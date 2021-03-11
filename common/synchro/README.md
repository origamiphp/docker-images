Synchro image
=============
![Synchro pulls](https://img.shields.io/docker/pulls/ajardin/synchro?style=for-the-badge)

✨ Features
-----------
An image based on `alpine:latest` with some configuration to work with Mutagen.

🚀 Usage
--------
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
