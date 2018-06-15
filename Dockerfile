FROM alpine:3.7

LABEL maintainer="Fabian Schlegel"

ENV NODE_VERSION 10.4.1

RUN apk update && \
  apk add --no-cache coreutils bash && \
  apk add --no-cache nodejs nodejs-npm && \
  apk add --no-cache firefox-esr xvfb dbus && \
  rm -rf /var/cache/apk/*

ADD xvfb-run /usr/bin/

RUN chmod +x /usr/bin/xvfb-run

CMD [ "node" ]
