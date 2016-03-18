# Setup

## Building and running docker image

	$ docker build --tag ubuntu-gui .

	$ docker run -it --name "ubuntu-gui" \
	-p 5900:5900 \
	ubuntu-gui 

# Connecting to server

	vnc 127.0.0.1:5900

the password is 

	12345