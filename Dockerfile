FROM alpine:latest

MAINTAINER soniclidi 

RUN apk update && apk add py-pip
RUN pip install shadowsocks 

ENV SS_PORT 8388
ENV SS_PASSWORD password
ENV SS_METHOD aes-256-cfb

EXPOSE $SS_PORT

CMD ["/usr/bin/ssserver", "-s 0.0.0.0 -p $SS_PORT -k $SS_PASSWORD -m $SS_METHOD"]
