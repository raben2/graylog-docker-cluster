FROM alpine:edge
MAINTAINER Georg Rabenstein <georg.rabenstein@deposit-solutions.com>

RUN \
echo http://dl-3.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN \
apk add --no-cache mongodb && \
rm /usr/bin/mongosniff /usr/bin/mongoperf

USER root
VOLUME /volumes/db
ENV AUT yes
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes

WORKDIR / 
ADD run.sh /run.sh
RUN chmod 744 /run.sh
COPY conf/ /conf/

EXPOSE 27017 
EXPOSE 27018
EXPOSE 27019

CMD ["/run.sh"]
