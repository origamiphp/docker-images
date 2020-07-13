FROM ajardin/nginx:latest

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Nginx image for a Magento 2 application."
LABEL org.opencontainers.image.description="https://magento.com/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/magento2/nginx"

# Copy the default configuration provided by Magento
COPY magento.conf.sample /etc/nginx/conf.d/magento.conf.sample
