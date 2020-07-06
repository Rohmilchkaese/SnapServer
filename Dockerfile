FROM alpine:3.12.0

RUN apk update \
  && apk upgrade \
  && apk add --no-cache \
  dbus \
  avahi \
  snapcast-server


COPY bootstrap.sh /start
RUN chmod +x /start
ENTRYPOINT [ "/start" ]
