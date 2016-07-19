#!/bin/sh -ex

PATH=$HOME/openresty/nginx/sbin/:/usr/local/openresty/nginx/sbin:$PATH
PORT=${PORT:-1234}
conf=nginx.conf.compiled
perl -lpe 's/\$\{\{PORT\}\}/$ENV{PORT}/' nginx.conf > $conf

mkdir -p logs
mkdir -p temp

touch logs/access.log
touch logs/error.log
nginx -p "`pwd`" -c $conf &
echo "# started $!"
