FROM centos:centos7
MAINTAINER Bartosz Gadzała <bartosz.gadzala@gmail.com>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip
RUN pip install ansible

RUN mkdir /playbook
VOLUME /playbook
WORKDIR /playbook

ENTRYPOINT exec ansible-playbook -i $INVENTORY $PLAYBOOK
