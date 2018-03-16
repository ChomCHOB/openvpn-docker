FROM alpine:3.6

LABEL maintainer "support@chomchob.com"

# Install needed packages
RUN apk add --update openvpn iptables openssl easy-rsa bash && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

# Configure tun
RUN mkdir -p /dev/net && \
  mknod /dev/net/tun c 10 200 
