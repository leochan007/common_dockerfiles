FROM leochan007/ubuntu1604_base

LABEL MAINTAINER leo chan <leochan007@163.com>

ENV DEBIAN_FRONTEND noninteractive

ENV ZENTAO_VER=10.6

ARG ZENTAO_URL=http://dl.cnezsoft.com/zentao/${ZENTAO_VER}/ZenTaoPMS.${ZENTAO_VER}.stable.zbox_64.tar.gz

RUN apt-get update

RUN apt-get install -y vim telnet unzip

WORKDIR /opt

RUN curl -O ${ZENTAO_URL}

RUN tar -xvf ZenTaoPMS.${ZENTAO_VER}.stable.zbox_64.tar.gz

COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN chmod +x /usr/local/bin/docker-entrypoint

EXPOSE 80

ENTRYPOINT ["docker-entrypoint"]
