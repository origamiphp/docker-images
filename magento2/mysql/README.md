Magento 2 MySQL images
======================
![MySQL for Magento 2 pulls](https://img.shields.io/docker/pulls/ajardin/magento2-mysql?style=for-the-badge)

✨ Features
-----------
* Custom configuration (`max_allowed_packet` at `256M`)

🐳 Supported tags
-----------------
* [`ajardin/magento2-mysql:8.0`](/magento2/mysql/8.0/Dockerfile)
* [`ajardin/magento2-mysql:5.7`](/magento2/mysql/5.7/Dockerfile)

🚀 Usage
--------
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
