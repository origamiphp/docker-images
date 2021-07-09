PHP Entrypoint image
====================
![PHP Entrypoint pulls](https://img.shields.io/docker/pulls/ajardin/php-entrypoint?style=for-the-badge)

✨ Features
-----------
An image based on `scratch` with a custom entrypoint to use with custom PHP images.

🚀 Usage
--------
```dockerfile
# Installs the custom entrypoint.
COPY --from=ajardin/php-entrypoint:latest /usr/local/bin/docker-custom-entrypoint /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["php-fpm"]
ENTRYPOINT ["docker-custom-entrypoint"]
```
