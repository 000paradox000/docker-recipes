FROM debian:latest

RUN apt update && apt install -y --no-install-recommends \
    python3 \
    python3-pip  \
    python-is-python3  \
    libgl-dev  \
    libglib2.0-dev  \
    libxcb-icccm4-dev  \
    libxcb-image0-dev  \
    libxcb-keysyms1-dev  \
    libxcb-render-util0-dev  \
    libxcb-shape0-dev  \
    libxcb-xinerama0-dev  \
    libxcb-xkb-dev  \
    libxcb-randr0-dev  \
    libxkbcommon-x11-dev  \
    libfontconfig  \
    libdbus-1-dev

RUN python3 -m pip install PySide2

COPY ./entrypoint.sh /

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
