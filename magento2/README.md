## Magento 2 images

### ElasticSearch
An image based on `docker.elastic.co/elasticsearch/elasticsearch:5.6.16` with two additional plugins:
`analysis-icu` and `analysis-phonetic`. These modules are required if you want
to use [ElasticSuite](https://github.com/Smile-SA/elasticsuite).

### MySQL
An image based on `mysql:5.7` with only a modification in the configuration to increase the `max_allowed_packet` value
to `256M`.

### Nginx
An image based on `nginx:1.15-alpine` with HTTPS support, default Magento configuration, and custom domains.

### PHP
An image based on `php:7.2-fpm-alpine` with Magento 2 prequisites, Composer, n98-magerun2, and the
[Blackfire extension](https://blackfire.io/docs/introduction).
