#!/usr/bin/env bash
set -eu

KEY_FILE=/root/proxy-keyfile.json
if [[ ! -f "${KEY_FILE}" ]]; then
  echo -e "\e[1;31mThe key required by the Composer proxy must be mounted as \"${KEY_FILE}\".\e[0m"
  exit 1
fi

PROJECT_PATH=/app/
if [[ ! -d "${PROJECT_PATH}" ]]; then
  echo -e "\e[1;31mThe project to be used with Composer must be mounted as \"${PROJECT_PATH}\".\e[0m"
  exit 2
fi

/usr/local/bin/composer-proxy -c "${KEY_FILE}" > /dev/stdout 2>&1 &
exec composer --working-dir=/app/ "$@"
