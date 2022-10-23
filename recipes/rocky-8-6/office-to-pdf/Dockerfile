FROM rockylinux:8.6

RUN yum install -y libreoffice-calc libreoffice-core libreoffice-impress libreoffice-writer

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
