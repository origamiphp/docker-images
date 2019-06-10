# My Docker Images [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This repository contains all my custom Docker images. These images are designed to be used with the associated
Docker Compose environment, thus on local environments and **not on production platforms**.

There are only Magento 2 images for now, more will come soon... :wink:

## Magento 2
The associated environment is: https://github.com/EmakinaFR/docker-magento2.

### ElasticSearch
An image based on `docker.elastic.co/elasticsearch/elasticsearch:5.6.16` with two additional plugins:
`analysis-icu` and `analysis-phonetic`. These modules are required if you want
to use [ElasticSuite](https://github.com/Smile-SA/elasticsuite).

### Nginx
An image based on `nginx:1.15-alpine` with HTTPS support, default Magento configuration, and custom domains.

### PHP
An image based on `php:7.2-fpm-alpine` with Magento 2 prequisites, Composer, n98-magerun2, and several improvements
when using the container with a console. This is the `default` tag, but there are two others tags:
* the `blackfire` tag is an image based on `default` with the [Blackfire extension](https://blackfire.io/docs/introduction), 
* the `xdebug` tag is an image based on `default` with the [Xdebug extension](https://xdebug.org/).

### Synchro
An imaged based on `alpine:latest` with a new user and a new group, which share the same UID and GID than the ones
in `php` and `nginx` images, to make the files synchronization easier when using [Mutagen](https://mutagen.io/).
