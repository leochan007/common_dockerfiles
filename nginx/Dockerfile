FROM nginx:1.15

MAINTAINER leo chan <leochan007@163.com>

ENV DEBIAN_FRONTEND noninteractive

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

RUN  echo "deb http://mirrors.aliyun.com/debian stretch main \n\
deb http://mirrors.aliyun.com/debian-security stretch/updates main \n\
deb http://mirrors.aliyun.com/debian stretch-updates main" \
    >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y iputils-ping telnet
