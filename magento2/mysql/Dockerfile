FROM mysql:5.7

# Override the "max_allowed_packet" default value
RUN echo 'max_allowed_packet=256M' >> /etc/mysql/conf.d/docker.cnf
