FROM rockylinux:8.5

COPY ./entrypoint.sh /
COPY ./hello_world.txt /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
