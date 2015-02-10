FROM ubuntu:14.04.1
MAINTAINER Sam Liu <ontouchstart@gmail.com>

ADD . /aws-cli
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -yq python-setuptools groff 
RUN cd /aws-cli && python setup.py install

ENV HOME /home
WORKDIR /home
