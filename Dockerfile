FROM ubuntu:19.10

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y software-properties-common

RUN apt-add-repository ppa:ansible/ansible-2.9
RUN apt-get update -y 
RUN apt-get install -y python ansible
