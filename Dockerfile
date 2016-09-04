#
# Dockerfile for tor
#

FROM alpine:edge
MAINTAINER Jeremy Christian <jeremy.d.christan@gmail.com>

RUN apk update \
    && apk add --update --no-cache build-base tor \
    && apk del build-base curl git gmp-dev go python-dev

COPY ./torrc /etc/tor/torrc

USER tor
WORKDIR /var/lib/tor
EXPOSE 9050

CMD ["/usr/bin/tor", "-f", "/etc/tor/torrc"]
