FROM centos:7
      
RUN yum clean all -y && \
  yum install -y git && \
  yum clean all -y


RUN mkdir /root/app && \
    mkdir /demo
WORKDIR /root/app

RUN git clone https://github.com/nakanishi140/rhocp-demo-cdsupdater.git && \
    mv rhocp-demo-cdsupdater/* ./ && \
    chmod +x update.sh

RUN chgrp -R 0 /root/app &&  chmod -R g+rwX /root/app && \
    chgrp -R 0 /demo &&  chmod -R g+rwX /demo


USER 1001
ENTRYPOINT ["./update.sh"]
