FROM nginx:1.15-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Nginx image for a Magento 2 application."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/magento2/nginx/Dockerfile"

# Install Nginx requirements
RUN \
    apk add --no-cache openssl shadow && \
    mkdir -p /etc/nginx/ssl

# Assign a new UID/GID to avoid using a generated value
RUN \
    usermod -u 1000 nginx && \
    groupmod -g 1000 nginx

EXPOSE 443
WORKDIR /var/www/html/

# Copy the default configuration provided by Magento
COPY magento.conf.sample /etc/nginx/conf.d/magento.conf.sample

# Install custom entrypoint
COPY entrypoint.sh /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["docker-custom-entrypoint"]
