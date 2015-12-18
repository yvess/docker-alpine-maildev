FROM alpine:3.1
MAINTAINER Yves Serrano <y@yas.ch>

RUN apk add --update nodejs && \
    rm -rf /var/cache/apk/*
RUN npm install -g maildev
ADD docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["maildev"]
EXPOSE 80 25
