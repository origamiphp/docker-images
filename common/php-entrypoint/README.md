# PHP Entrypoint image
![Image pulls](https://img.shields.io/docker/pulls/ajardin/php-entrypoint)

## ✨ Features
An image based on `scratch` with a custom entrypoint to use with custom PHP images.

## 🐳 Supported tags
* [![Image size (latest)](https://img.shields.io/docker/image-size/ajardin/php-entrypoint/latest?label=ajardin%2Fphp-entrypoint)](/common/php-entrypoint/Dockerfile)

## 🚀 Usage
```dockerfile
# Installs the custom entrypoint
COPY --from=ajardin/php-entrypoint:latest /usr/local/bin/docker-custom-entrypoint /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["php-fpm"]
ENTRYPOINT ["docker-custom-entrypoint"]
```
