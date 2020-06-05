FROM nginx:alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Nginx image with HTTPS support."
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/common/nginx/Dockerfile"

# Install Nginx requirements
RUN \
    apk update && \
    apk add --no-cache bash openssl shadow && \
    mkdir -p /etc/nginx/ssl

EXPOSE 443
WORKDIR /var/www/html/

# Install custom entrypoint
COPY entrypoint.sh /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["docker-custom-entrypoint"]
