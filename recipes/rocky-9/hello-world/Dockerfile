FROM rockylinux:9

COPY ./entrypoint.sh /
COPY ./hello_world.txt /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
