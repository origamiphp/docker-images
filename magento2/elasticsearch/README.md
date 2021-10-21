# Elasticsearch images for Magento 2
![Image pulls](https://img.shields.io/docker/pulls/ajardin/magento2-elasticsearch)

## ✨ Features
* [Elasticsuite requirements][1] (`analysis-icu` and `analysis-phonetic` plugins)

## 🐳 Supported tags
* [![Image size (7)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/7?label=ajardin%2Fmagento2-elasticsearch%3A7)](/magento2/elasticsearch/7.x/Dockerfile)
* [![Image size (6)](https://img.shields.io/docker/image-size/ajardin/magento2-elasticsearch/6?label=ajardin%2Fmagento2-elasticsearch%3A6)](/magento2/elasticsearch/6.x/Dockerfile)

## 🚀 Usage
```yaml
services:
# [...]
  elasticsearch:
    image: ajardin/magento2-elasticsearch:7
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
