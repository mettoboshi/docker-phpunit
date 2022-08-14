#!/bin/bash

set -eu
if [ "$1" = 'initialize' ]; then
  cp /tmp/composer.json ./
  cp /tmp/phpunit.xml ./
  cp -rf /tmp/tests ./
  composer install
else
  exec "$@"
fi