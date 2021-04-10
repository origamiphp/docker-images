FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.15

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Elasticsearch 6.x image for a Magento 2 application."
LABEL org.opencontainers.image.description="https://magento.com/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/magento2/elasticsearch"

# Install ElasticSuite requirements (https://github.com/Smile-SA/elasticsuite/wiki/ModuleInstall)
RUN \
    elasticsearch-plugin install analysis-icu && \
    elasticsearch-plugin install analysis-phonetic
