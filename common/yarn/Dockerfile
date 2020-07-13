FROM alpine:latest

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="Image with Yarn to manage JavaScript dependencies."
LABEL org.opencontainers.image.description="https://yarnpkg.com/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/common/yarn"

RUN apk add --no-cache yarn

WORKDIR /app

ENTRYPOINT [ "yarn" ]
CMD [ "version" ]
