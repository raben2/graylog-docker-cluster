FROM java-jdk:1.8

ENV GL_VERSION=1.3.4
ENV REPO_URL=https://packages.graylog2.org/releases/graylog2-server/graylog-${GL_VERSION}.tgz
USER root

RUN \
  wget ${REPO_URL} && \
  tar zxfv graylog-$GL_VERSION.tgz && \
  rm -rf graylog-$GL_VERSION.tgz && \
  ln -sf graylog-$GL_VERSION graylog

ADD config/graylog2.conf /etc/graylog/server/server.conf
ADD run/graylog.sh /graylog/bin/graylog2.sh

  EXPOSE 12900
  EXPOSE 12201
  EXPOSE 9350

  CMD ["/graylog/bin/graylog2.sh"]