#!/usr/bin/env bash
set -euo pipefail

# Generates the Blackfire configuration according to the environment variables if the PHP extension is present.
if [[ $(php -r "echo (int) extension_loaded('blackfire');") -eq 1 ]]; then
  configuration="${PHP_INI_DIR}"/conf.d/docker-php-ext-blackfire.ini
  {
    echo "extension=blackfire"
    echo "blackfire.agent_socket=tcp://blackfire:8307"
    echo "blackfire.agent_timeout=5"
    echo "blackfire.log_file=/var/log/blackfire.log"
  } > "${configuration}"

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

# Downgrades the version of Composer if specifically requested.
if [[ -n ${COMPOSER_DOWNGRADE:=} ]]; then
  composer self-update --1
fi

# Ensures that the document root is writable by the "www-data" user.
chown www-data:www-data /var/www/html

exec "$@"
