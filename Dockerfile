FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	flex \
	bison \
	git \
	python \
	python-pil \
	deutex \
	sudo

RUN useradd -m user
RUN echo "user:user" | chpasswd && adduser user sudo
USER user
