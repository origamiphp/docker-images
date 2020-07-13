Blackfire Entrypoint image
==========================
![Blackfire Entrypoint status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20images?style=for-the-badge)
![Blackfire Entrypoint pulls](https://img.shields.io/docker/pulls/ajardin/blackfire-entrypoint?style=for-the-badge)

✨ Features
-----------
An image based on `scratch` with a custom entrypoint to use with custom PHP images (i.e. [Magento 2][1], [Sylius][2], [Symfony][3]).

🚀 Usage
--------
```dockerfile
# Install custom entrypoint
COPY --from=ajardin/blackfire-entrypoint:latest /usr/local/bin/docker-custom-entrypoint /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["php-fpm"]
ENTRYPOINT ["docker-custom-entrypoint"]
```

<!-- Resources -->
[1]: /magento2
[2]: /sylius
[3]: /symfony
