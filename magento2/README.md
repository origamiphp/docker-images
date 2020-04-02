Magento 2 images
================
![Magento 2 - Build and Publish](https://github.com/ajardin/docker-images/workflows/Magento%202%20-%20Build%20and%20Publish/badge.svg)

Elasticsearch
-------------
An image based on `docker.elastic.co/elasticsearch/elasticsearch:5.6.16` with two additional plugins:
`analysis-icu` and `analysis-phonetic`. These modules are required if you want to use [ElasticSuite][1].

MySQL
-----
An image based on `mysql:5.7` with only a modification in the configuration to increase the `max_allowed_packet` value
to `256M`.

Nginx
-----
An image based on `ajardin/nginx` with a default Magento configuration.

PHP
---
Images based on `php:7.2-fpm-alpine` or `php:7.3-fpm-alpine` with Magento 2 prequisites, Composer, n98-magerun2, and the
[Blackfire extension][2].

<!-- Resources -->
[1]: https://github.com/Smile-SA/elasticsuite
[2]: https://blackfire.io/docs/introduction
