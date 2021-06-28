FROM library/rabbitmq:3.8-management-alpine

LABEL org.opencontainers.image.authors="Alexandre Jardin <info@ajardin.fr>"
LABEL org.opencontainers.image.title="RabbitMQ 3.8 image for an OroCommerce application."
LABEL org.opencontainers.image.description="https://oroinc.com/b2b-ecommerce/"
LABEL org.opencontainers.image.source="https://github.com/ajardin/docker-images/tree/master/orocommerce/rabbitmq"

RUN \
    repository="https://github.com/rabbitmq/rabbitmq-delayed-message-exchange" && \
    version="3.8.9" && \
    release_asset="rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez" && \
    wget "${repository}/releases/download/${version}/${release_asset}" -P "${RABBITMQ_HOME}/plugins" && \
    rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

COPY definitions.json /etc/rabbitmq/definitions.json
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
