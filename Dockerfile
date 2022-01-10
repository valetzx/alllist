FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"

RUN chmod -R 777 /opt/alist/data
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENV DB_TYPE=postgres
ENV CACHE_EXPIRATION=60
ENV CACHE_CLEANUP_INTERVAL=120

ENTRYPOINT ["sh", "/entrypoint.sh"]