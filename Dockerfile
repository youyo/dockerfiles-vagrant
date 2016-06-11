FROM centos:latest
MAINTAINER youyo

ENV VAGRANT_VERSION 1.8.3

RUN yum install -y https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.rpm unzip && \
vagrant plugin install vagrant-aws && \
vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
