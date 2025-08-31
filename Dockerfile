FROM alpine:3.22

LABEL maintainer="Osipov Sergey <sipopo@yandex.ru>"

RUN set -x \
  && echo "test"

CMD sleep 10000
