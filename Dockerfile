# Dockerfile
FROM debian:stretch
ENV DEBIAN_FRONTEND=noninteractive
USER root
RUN apt-get update
RUN apt-get -y install devscripts debhelper build-essential
