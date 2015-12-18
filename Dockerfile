FROM alpine:3.2
MAINTAINER Yves Serrano <y@yas.ch>

RUN apk add --update nodejs && \
    rm -rf /var/cache/apk/* && \
    npm install -g maildev@0.12.1 && \
    sed -i -e "s#$scope.autoShow = false;#$scope.autoShow = true;#" /usr/lib/node_modules/maildev/app/scripts/controllers/main.js
ADD docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["maildev"]
EXPOSE 25 80
