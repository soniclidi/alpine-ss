FROM alpine:latest

MAINTAINER soniclidi 

RUN apk update && apk add py-pip
RUN pip install shadowsocks 

ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV SS_PORT 8388
ENV SS_PASSWORD password
ENV SS_METHOD aes-256-cfb

EXPOSE $SS_PORT
CMD ["sh", "/run.sh"]
