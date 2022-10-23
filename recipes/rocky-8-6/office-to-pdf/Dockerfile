FROM rocky:8.6

RUN yum install -y libreoffice

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
