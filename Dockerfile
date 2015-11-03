FROM alpine:latest
MAINTAINER soniclidi


RUN apk update && apk add py-pip
RUN pip install shadowsocks 

ADD run.sh /run.sh
RUN chmod +x /*.sh

# ENV ROOT_PASS **RANDOM**

EXPOSE 22
CMD ["sh", "/run.sh"]
