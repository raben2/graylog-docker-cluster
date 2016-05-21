FROM java-jdk:1.8

ENV GL_VERSION=1.3.4
ENV REPO_URL=https://packages.graylog2.org/releases/graylog2-web-interface/graylog-web-interface-$GL_VERSION.tgz
USER root

RUN \
  wget ${REPO_URL} && \
  tar zxfv graylog-web-interface-$GL_VERSION.tgz && \
  rm -rf graylog-web-interface-$GL_VERSION.tgz && \
  ln -sf graylog-web-interface-$GL_VERSION graylog-web

ADD web.conf /graylog-web/conf/graylog-web-interface.conf


  EXPOSE 9000
 

  CMD ["/graylog-web/bin/graylog-web-interface"]