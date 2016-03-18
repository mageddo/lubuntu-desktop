FROM ubuntu:15.10
RUN apt-get update
RUN apt-get -y install x11vnc xvfb nano vim curl
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install lxde
COPY xvfb vnc-server /etc/init.d/
COPY start /usr/bin
COPY home/user/.vnc /root/
CMD start 