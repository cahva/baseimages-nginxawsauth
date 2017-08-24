#!/usr/bin/env sh

sed -e "s|%S3_BUCKET%|$AWS_BUCKET|" \
    -e "s|%AWS_ACCESS_KEY%|$AWS_ACCESS_KEY|" \
    -e "s|%AWS_SECRET_ACCESS_KEY%|$AWS_SECRET_ACCESS_KEY|" < /tmp/nginx.conf.tmpl > /etc/nginx/conf/nginx.conf
nginx -g 'daemon off;'
