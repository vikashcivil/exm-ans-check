---
- hosts: all
  become: yes
  tasks:
  - name: Installing Git Package
    yum: name=git
#ansible all -m yum -b -a "name=git state=latest"
[root@localhost exm-ans-check]# cat dockerfile
FROM centos
MAINTAINER vikash <vikashcivil167@gmail.com>
#RUN apt-get update -y
RUN yum install git -y
RUN git config --global user.name "vikashcivil"
RUN git config --global user.email "vikashcivil167@gmail.com"
RUN cd /opt && git clone https://github.com/vikashcivil/exm-ans-check.git
RUN yum install java -y
RUN yum install maven -y
RUN yum install wget -y
RUN mkdir /opt/tomcat
#RUN cd /opt/tomcat && wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
#RUN cd /opt/tomcat && tar -xvf apache-tomcat-9.0.31.tar.gz

