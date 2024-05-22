#!/usr/bin/env sh
set -xe
rm /etc/nginx/conf.d/*.conf

cat /files/proxy.conf.tmpl | go-subst | tee /etc/nginx/conf.d/proxy.conf
nginx -t

# https://github.com/nginxinc/docker-nginx/blob/9abe4ae472b3332665fad9b12ee146dc242e775c/mainline/debian/Dockerfile#L120
nginx -g "daemon off;"
