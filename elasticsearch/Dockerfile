FROM java-jdk:1.8
MAINTAINER Georg Rabenstein <georg.rabenstein@deposit-solutions.com>
ENV ES_VERSION 2.3.2
ENV CLUSTER_NAME graylog2

USER root
VOLUME /volumes/$CLUSTER_NAME 

RUN \
	mkdir /var/log/elasticsearch && \
	wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz && \
	tar xvzf elasticsearch-$ES_VERSION.tar.gz && \
	rm -rf elasticsearch-$ES_VERSION.tar.gz && \
	mv elasticsearch-$ES_VERSION /elasticsearch && \
	rm -rf /elasicsearch/bin/*.exe && \
	rm -rf /elasicsearch/bin/*.bat
#RUN wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/plugin/discovery-multicast/$ES_VERSION/discovery-multicast-$ES_VERSION.#zip -O plugin.zip
#RUN /elasticsearch/bin/plugin install file:///plugin.zip


WORKDIR /elasticsearch
ADD elasticsearch.yaml config/elasticsearch.yml

ENV JAVA_HOME /usr/lib/jvm/java

EXPOSE 9200
EXPOSE 9300

CMD ["bin/elasticsearch", "-Des.insecure.allow.root=true", "-Djava.net.preferIPv4Stack=true"]