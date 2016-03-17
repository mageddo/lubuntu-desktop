FROM ubuntu:15.10
RUN apt-get update
RUN apt-get -y install x11vnc xvfb nano vim
RUN DEBIAN_FRONTEND=noninteractive && apt-get -y install lubuntu-desktop
COPY xvfb vnc-server /etc/init.d
COPY start /usr/bin