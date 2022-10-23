FROM rocky:9

RUN yum install -y libreoffice

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
