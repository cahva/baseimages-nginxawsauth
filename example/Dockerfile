FROM cahva/nginx-awsauth

RUN mkdir -p /data/cache

COPY start.sh /tmp/start.sh

WORKDIR /etc/nginx

# EXPOSE 80 443

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/tmp/start.sh"]