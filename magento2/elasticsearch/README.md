Magento 2 Elasticsearch image
=============================
![Elasticsearch for Magento 2 status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Elasticsearch%20for%20Magento%202%20image?style=for-the-badge)
![Elasticsearch for Magento 2 pulls](https://img.shields.io/docker/pulls/ajardin/magento2-elasticsearch?style=for-the-badge)

✨ Features
-----------
* [Elasticsuite requirements][1] (`analysis-icu` and `analysis-phonetic` plugins)

Available versions: `ajardin/magento2-elasticsearch:6.8` and `ajardin/magento2-elasticsearch:7.6`.

🚀 Usage
--------
```yaml
services:
# [...]
  elasticsearch:
    image: ajardin/magento2-elasticsearch:latest
    env_file: ${PROJECT_LOCATION}/var/docker/.env
    volumes:
      - elasticsearch:/usr/share/elasticsearch/data
# [...]
volumes:
  elasticsearch: {}
```

<!-- Resources -->
[1]: https://github.com/Smile-SA/elasticsuite
