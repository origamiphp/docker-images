OroCommerce RabbitMQ images
===========================
![RabbitMQ for OroCommerce pulls](https://img.shields.io/docker/pulls/ajardin/orocommerce-rabbitmq?style=for-the-badge)

✨ Features
-----------
* [management][management] plugin
* [delayed message exchange][delayed-message-exchange] plugin

🐳 Supported tags
-----------------
* [`ajardin/orocommerce-rabbitmq:3.8`](/orocommerce/rabbitmq/3.8/Dockerfile)

🚀 Usage
--------
```yaml
services:
# [...]
  rabbitmq:
    image: ajardin/orocommerce-rabbitmq:3.8
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    ports:
      - 15672:15672
    volumes:
      - rabbitmq:/var/lib/rabbitmq
    tty: true
# [...]
volumes:
  rabbitmq: {}
```

<!-- Resources -->
[management]: https://www.rabbitmq.com/management.html
[delayed-message-exchange]: https://github.com/rabbitmq/rabbitmq-delayed-message-exchange
