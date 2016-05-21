FROM centos7-base
Maintainer Georg Rabenstein <georg.rabenstein@deposit-solutions.com>

USER root 

RUN yum -y install java-1.8.0-openjdk-devel && yum clean all

USER graylog

ENV JAVA_HOME /usr/lib/jvm/java

