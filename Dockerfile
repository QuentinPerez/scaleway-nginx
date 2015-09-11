## -*- docker-image-name: "scaleway/nginx:latest" -*-
FROM scaleway/ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update         \
 && apt-get -y -qq upgrade    \
 && apt-get -y -qq install    \
        nginx-full            \
 && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
