FROM alpine:3.8
MAINTAINER Nobuyuki Matsui <nobuyuki.matsui@gmail.com>

RUN apk update && apk add --no-cache curl
COPY ./entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
