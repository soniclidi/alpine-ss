FROM alpine:latest

MAINTAINER soniclidi 

RUN apk update && apk add py-pip
RUN pip install shadowsocks 

EXPOSE $SS_PORT

CMD ["/usr/bin/ssserver", "-s 0.0.0.0 -p $SS_PORT -k $SS_PASSWORD -m $SS_METHOD"]
