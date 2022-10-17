# Elasticsearch images for Magento 2
![Image pulls](https://img.shields.io/docker/pulls/ajardin/magento2-elasticsearch)

## ✨ Features
* [Elasticsuite requirements][1] (`analysis-icu` and `analysis-phonetic` plugins)

## 🐳 Supported tags
* [![Image size (7.17)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/7?label=ajardin%2Fmagento2-elasticsearch%3A7.17)](/magento2/elasticsearch/7.17/Dockerfile)
* [![Image size (7.16)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/7?label=ajardin%2Fmagento2-elasticsearch%3A7.16)](/magento2/elasticsearch/7.16/Dockerfile)
* [![Image size (7.9)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/7?label=ajardin%2Fmagento2-elasticsearch%3A7.9)](/magento2/elasticsearch/7.9/Dockerfile)
* [![Image size (7.7)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/7?label=ajardin%2Fmagento2-elasticsearch%3A7.7)](/magento2/elasticsearch/7.7/Dockerfile)
* [![Image size (7.6)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/7?label=ajardin%2Fmagento2-elasticsearch%3A7.6)](/magento2/elasticsearch/7.6/Dockerfile)

## 🚀 Usage
```yaml
services:
# [...]
  elasticsearch:
    image: ajardin/magento2-elasticsearch:7.17
    environment:
      - discovery.type=single-node
      - xpack.security.enabled=false
    volumes:
      - elasticsearch:/usr/share/elasticsearch/data
# [...]
volumes:
  elasticsearch: {}
```

<!-- Resources -->
[1]: https://github.com/Smile-SA/elasticsuite
