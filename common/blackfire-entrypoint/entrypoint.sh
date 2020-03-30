#!/usr/bin/env bash
set -euo pipefail

if [[ $(php -r "echo (int) extension_loaded('blackfire');") -eq 1 ]]; then
  configuration="${PHP_INI_DIR}"/conf.d/docker-php-ext-blackfire.ini

  if [[ -n ${BLACKFIRE_PORT:=} ]]; then
    echo "blackfire.agent_socket=tcp://blackfire:${BLACKFIRE_PORT}" >> "${configuration}"
  fi

  echo "blackfire.agent_timeout=5" >> "${configuration}"
  echo "blackfire.log_file=/var/log/blackfire.log" >> "${configuration}"

  if [[ -n ${BLACKFIRE_LOG_LEVEL:=} ]]; then
    echo "blackfire.log_level=${BLACKFIRE_LOG_LEVEL}" >> "${configuration}"
  fi

  if [[ -n ${BLACKFIRE_SERVER_ID:=} ]]; then
    echo "blackfire.server_id=${BLACKFIRE_SERVER_ID}" >> "${configuration}"
  fi

  if [[ -n ${BLACKFIRE_SERVER_TOKEN:=} ]]; then
    echo "blackfire.server_token=${BLACKFIRE_SERVER_TOKEN}" >> "${configuration}"
  fi
fi

# Ensure that the document root is writable by the "www-data" user
chown www-data:www-data /var/www/html

exec "$@"
