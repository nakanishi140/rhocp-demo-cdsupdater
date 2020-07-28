FROM centos:7
      
RUN yum clean all -y && \
  yum install -y git && \
  yum clean all -y

RUN mkdir /root/app


