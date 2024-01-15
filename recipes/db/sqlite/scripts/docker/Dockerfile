FROM python:3.11-bookworm

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq --no-install-recommends install sqlite3

RUN pip install sqlite-web

WORKDIR /db

COPY scripts/docker/entrypoint.sh entrypoint.sh
COPY scripts/docker/initdb.py initdb.py
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]