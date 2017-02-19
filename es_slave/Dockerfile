FROM elasticsearch
MAINTAINER Georg Rabenstein @raben2

USER elasticsearch
WORKDIR /elasticsearch
ADD elasticsearch.yaml config/elasticsearch.yml

EXPOSE 9201
EXPOSE 9301

ENTRYPOINT ["bin/elasticsearch"]
