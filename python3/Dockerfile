FROM leochan007/ubuntu1804_base

LABEL MAINTAINER leo chan <leochan007@163.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:jonathonf/python-3.6

RUN apt-get update

RUN apt-get install -y python3.6 python3.6-dev

#RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1

RUN update-alternatives --config python3

#pip install -U pip
RUN apt install  -y python3-pip
