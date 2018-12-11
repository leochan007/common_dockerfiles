FROM node:10.14.1-jessie

LABEL MAINTAINER leo chan <leochan007@163.com>

ENV DEBIAN_FRONTEND noninteractive

RUN npm i -g npm && npm i -g pm2@3.2.2

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

RUN echo "\
deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib \n\
deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib \n\
deb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib \n\
deb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib \n\
" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y vim
