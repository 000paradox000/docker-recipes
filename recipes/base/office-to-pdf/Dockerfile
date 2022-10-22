FROM debian:latest

RUN apt update && \
    apt install -y --no-install-recommends libreoffice default-jre

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
