FROM mysql:5.7

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="MySQL 5.7 image for a Magento 2 application."
LABEL org.opencontainers.image.description="https://magento.com/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/magento2/mysql"

# Override the "max_allowed_packet" default value
RUN echo 'max_allowed_packet=256M' >> /etc/mysql/conf.d/docker.cnf
