FROM rockylinux:8.6

COPY ./entrypoint.sh /
COPY ./hello_world.txt /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
