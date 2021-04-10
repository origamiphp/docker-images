Magento 2 Elasticsearch image
=============================
![Elasticsearch for Magento 2 pulls](https://img.shields.io/docker/pulls/ajardin/magento2-elasticsearch?style=for-the-badge)

✨ Features
-----------
* [Elasticsuite requirements][1] (`analysis-icu` and `analysis-phonetic` plugins)

🐳 Supported tags
-----------------
* [`ajardin/magento2-elasticsearch:7`](/magento2/elasticsearch/7.x/Dockerfile)
* [`ajardin/magento2-elasticsearch:6`](/magento2/elasticsearch/6.x/Dockerfile)

🚀 Usage
--------
```yaml
services:
# [...]
  elasticsearch:
    image: ajardin/magento2-elasticsearch:7
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    volumes:
      - elasticsearch:/usr/share/elasticsearch/data
# [...]
volumes:
  elasticsearch: {}
```

<!-- Resources -->
[1]: https://github.com/Smile-SA/elasticsuite
