FROM alpine:3.4
Maintainer Georg Rabenstein <georg.rabenstein@deposit-solutions.com>

USER root 
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk add --no-cache openjdk8-jre bash

ENV JAVA_HOME /usr/lib/jvm/default-jvm/jre/

ENTRYPOINT ["/bin/sh"]