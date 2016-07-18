#!/bin/sh -ex

PATH=/usr/local/openresty/nginx/sbin:$PATH
PORT=${PORT:-1234}
conf=nginx.conf.compiled
PORT=$PORT perl -lpe 's/\$\{\{PORT\}\}/$ENV{PORT}/' nginx.conf > $conf
mkdir -p logs
touch logs/access.log
touch logs/error.log
nginx -p "`pwd`" -c $conf &
echo "# started $!"
