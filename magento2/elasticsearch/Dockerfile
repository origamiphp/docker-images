FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.4

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Elasticsearch image for a Magento 2 application."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/magento2/elasticsearch/Dockerfile"

# Install ElasticSuite requirements (https://github.com/Smile-SA/elasticsuite/wiki/ModuleInstall)
RUN \
    elasticsearch-plugin install analysis-icu && \
    elasticsearch-plugin install analysis-phonetic
