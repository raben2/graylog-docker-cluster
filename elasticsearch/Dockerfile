FROM java-jre:1.8
MAINTAINER Georg Rabenstein <georg.rabenstein@deposit-solutions.com>
ENV ES_VERSION 2.4.0
ENV CLUSTER_NAME graylog2

USER root
VOLUME /elasticserch/volumes/$CLUSTER_NAME 
RUN apk add --update wget
RUN \
 	wget --no-check-certificate https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$ES_VERSION/elasticsearch-$ES_VERSION.tar.gz && \
	tar xvzf elasticsearch-$ES_VERSION.tar.gz && \
	rm -rf elasticsearch-$ES_VERSION.tar.gz && \
	mv elasticsearch-$ES_VERSION /elasticsearch && \
	rm -rf /elasicsearch/bin/*.exe && \
	rm -rf /elasicsearch/bin/*.bat

RUN adduser -S -h /elasticsearch elasticsearch

RUN chown elasticsearch -R /elasticsearch 

USER elasticsearch

WORKDIR /elasticsearch
ADD elasticsearch.yaml config/elasticsearch.yml

EXPOSE 9200
EXPOSE 9300

ENTRYPOINT ["bin/elasticsearch"]
