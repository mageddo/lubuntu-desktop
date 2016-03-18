FROM ubuntu:15.10
RUN apt-get update
RUN apt-get -y install x11vnc xvfb nano vim curl
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install lxde
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install xserver-xorg-video-dummy
COPY xvfb vnc-server /etc/init.d/
COPY vnc-server /usr/bin
COPY start /usr/bin
COPY home/user/.vnc /root/.vnc
COPY x11vnc.conf /etc/init/
CMD start 