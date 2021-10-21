# RabbitMQ images for OroCommerce
![Image pulls](https://img.shields.io/docker/pulls/ajardin/orocommerce-rabbitmq)

## ✨ Features
* [management][management] plugin
* [delayed message exchange][delayed-message-exchange] plugin

## 🐳 Supported tags
* [![Image size (3.8)](https://img.shields.io/docker/image-size/ajardin/orocommerce-rabbitmq/3.8?label=ajardin%2Forocommerce-rabbitmq%3A3.8)](/orocommerce/rabbitmq/3.8/Dockerfile)

## 🚀 Usage
```yaml
services:
# [...]
  rabbitmq:
    image: ajardin/orocommerce-rabbitmq:3.8
    ports:
      - "15672:15672"
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
