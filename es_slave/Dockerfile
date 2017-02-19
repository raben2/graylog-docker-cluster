FROM elasticsearch
MAINTAINER Georg Rabenstein @raben2
WORKDIR /elasticsearch
ADD elasticsearch.yaml config/elasticsearch.yml

ENV JAVA_HOME /usr/lib/jvm/java

EXPOSE 9201
EXPOSE 9301

CMD ["bin/elasticsearch", "-Des.insecure.allow.root=true", "-Djava.net.preferIPv4Stack=true"]