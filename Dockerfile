# Dockerfile
FROM debian:stretch
ENV DEBIAN_FRONTEND=noninteractive
USER root
RUN apt-get update
RUN apt-get -y install devscripts debhelper build-essential wget
RUN wget -q http://download.bareos.org/bareos/release/17.2/Debian_9.0/Release.key -O- |apt-key add -
RUN echo "deb http://download.bareos.org/bareos/release/17.2/Debian_9.0 /" > /etc/apt/sources.list.d/bareos.list
RUN echo "deb-src http://download.bareos.org/bareos/release/17.2/Debian_9.0 /" >> /etc/apt/sources.list.d/bareos.list
RUN apt-get update
RUN apt-get -y build-dep bareos
