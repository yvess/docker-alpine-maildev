#!/bin/sh
set -e

if [ "$1" = 'maildev' ]; then
  # SETUP
  exec /usr/bin/maildev --web 80 --smtp 25
fi
exec "$@"
