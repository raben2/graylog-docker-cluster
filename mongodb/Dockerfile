FROM centos7-base
MAINTAINER Georg Rabenstein <georg.rabenstein@deposit-solutions.com>

ADD mongo.repo /etc/yum.repos.d/mongodb.repo

RUN yum -y install mongodb-org mongodb-org-server

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
