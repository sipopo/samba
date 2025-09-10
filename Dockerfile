FROM alpine:3.22

LABEL maintainer="Osipov Sergey <sipopo@yandex.ru>"

RUN set -x \
  && apk update \
  && apk upgrade \
  && apk add samba


CMD [ "echo", "hello world" ]
