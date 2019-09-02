FROM ubuntu:16.04
LABEL MAINTAINER leo chan <leochan007@163.com>

ENV DEBIAN_FRONTEND noninteractive

#deb http://extras.ubuntu.com/ubuntu/ xenial main \n

# Update packages

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse \n\
##测试版源 \n\
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse \n\
##源码 \n\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse \n\
##测试版源 \n\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse \n\
# Canonical 合作伙伴和附加 \n\
deb http://archive.canonical.com/ubuntu/ xenial partner \n" \
    >> /etc/apt/sources.list \
    && apt-get update && apt-get install -y apt-utils && apt-get install -y --allow-remove-essential \
    --no-install-recommends locales tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && apt-get autoclean && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

#RUN apt-get install -y vim curl inetutils-ping net-tools telnet

#RUN apt-get dist-upgrade -y
