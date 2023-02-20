FROM balenablocks/browser

# Install git, supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
      bash \
      fluxbox \
      git \
      net-tools \
      novnc \
      supervisor \
      x11vnc \
      xterm \
      xvfb \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get autoremove -y \
  && apt-get autoclean

# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=no
COPY . /app

COPY start.sh /usr/src/app/start.sh
COPY startx.sh /usr/src/app/startx.sh
RUN chmod +x /usr/src/app/start.sh
RUN chmod +x /usr/src/app/startx.sh

RUN mkdir /home/.vnc/
# Note: probably not ideal to make this read/write for everyone
RUN chmod ugo+rwx /home/.vnc/
EXPOSE 8080