FROM rockykinux:8.5

RUN yum install -y libreoffice

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
