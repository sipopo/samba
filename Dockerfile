FROM alpine:3.22

LABEL maintainer="Osipov Sergey <sipopo@yandex.ru>"

RUN set -x \
  && apk update \
  && apk upgrade \
  && apk add samba \
  && mkdir /share

VOLUME [ "/share" ]

COPY docker-entrypoint.sh /

EXPOSE 139/tcp
EXPOSE 445/tcp

CMD [ "echo", "hello world" ]
