#!/usr/bin/env bash

[ $DEBUG ] && set -x

/etc/init.d/apache2 start

chown -R www-data:www-data /app/zentaopms

tail -f /var/log/apache2/zentao_error_log
