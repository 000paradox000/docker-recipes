FROM debian:latest

RUN apt update && apt install -y --no-install-recommends \
    python3 python3-pip python-is-python3 libgl-dev libglib2.0-dev
RUN python3 -m pip install PySide2

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
