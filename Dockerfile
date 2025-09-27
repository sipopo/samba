FROM alpine:3.22

LABEL maintainer="Osipov Sergey <sipopo@yandex.ru>"

COPY docker-entrypoint.sh /

RUN set -x \
  && apk update \
  && apk upgrade \
  && apk add samba \
  && mkdir /share \
  && chmod +x /docker-entrypoint.sh

#VOLUME [ "/share" ]

#EXPOSE 139/tcp
#EXPOSE 445/tcp

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "/usr/sbin/smbd", "-i", "/etc/smb/smb.conf" ]
