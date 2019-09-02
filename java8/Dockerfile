FROM leochan007/ubuntu1604_base
LABEL MAINTAINER leo chan <leochan007@163.com>

ENV DEBIAN_FRONTEND noninteractive
ENV JAVA_HOME=/opt/jdk1.8.0_211
ENV PATH=${JAVA_HOME}/bin:${PATH}

ADD jdk-8u211-linux-x64.tar.gz /opt/

RUN chmod a+x ${JAVA_HOME}/bin/*
