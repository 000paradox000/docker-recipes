FROM centos:7

RUN yum install -y libreoffice

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
