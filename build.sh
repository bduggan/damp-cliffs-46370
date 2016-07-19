#!/bin/sh -ex

version=1.9.15.1
prefix=$HOME/openresty

wget https://openresty.org/download/openresty-$version.tar.gz
tar xzvf openresty-$version.tar.gz
cd openresty-$version /
./configure \
        --prefix=$prefix \
        --with-luajit \
        --with-http_dav_module \
        --error-log-path=$prefix/nginx/logs/error.log \
        --http-log-path=$prefix/nginx/logs/access.log \
        --pid-path=$prefix/nginx/nginx.pid
make
make install
