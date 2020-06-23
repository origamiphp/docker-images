FROM alpine:latest

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with a new user/group to be used with Mutagen."
LABEL org.opencontainers.image.description="https://mutagen.io/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/blob/master/common/security/Dockerfile"

# Create a new user/group with the same ID than in "nginx" and "php" services
RUN \
    addgroup -g 1000 -S synchro && \
    adduser -u 1000 -D -S -G synchro synchro

CMD ["tail", "-f", "/dev/null"]
