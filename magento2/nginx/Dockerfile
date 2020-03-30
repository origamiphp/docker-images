FROM ajardin/nginx:latest

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Nginx image for a Magento 2 application."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/magento2/nginx/Dockerfile"

# Copy the default configuration provided by Magento
COPY magento.conf.sample /etc/nginx/conf.d/magento.conf.sample
