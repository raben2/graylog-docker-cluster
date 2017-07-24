FROM java-jre:1.8

ENV GL_VERSION=2.2.3
ENV REPO_URL=https://packages.graylog2.org/releases/graylog/graylog-${GL_VERSION}.tgz

USER root
RUN apk add --no-cache wget
RUN	wget -q --no-check-certificate ${REPO_URL}
RUN \
  tar zxfv graylog-$GL_VERSION.tgz && \
  rm -rf graylog-$GL_VERSION.tgz && \
  ln -sf graylog-$GL_VERSION graylog

RUN adduser -S graylog && \
    mkdir /contentpacks && \
    chown -R graylog /gray* /contentpacks
USER graylog 
ADD config/input.json /contentpacks/input.json
ADD config/grok.json /contentpacks/grok.json
RUN ln -sf /graylog-${GL_VERSION} /graylog
ADD config/graylog2.conf /etc/graylog/server/server.conf
ADD run/graylog.sh /graylog/bin/graylog2.sh
RUN chmod +x /graylog/bin/graylog2.sh 

RUN rm -f /graylog/plugin/graylog-plugin-anonymous-usage-statistics-${GL_VERSION}.jar

  EXPOSE 12900
  EXPOSE 12201
  EXPOSE 9350

  CMD ["/graylog/bin/graylog2.sh"]
