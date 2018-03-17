#
# CentOS 7 Dockerfile
#

# Build:
# docker build -t growsy/centos:latest .

# Create:
# docker create -it --name centos -h centos growsy/centos

# Start:
# docker start centos

# Connect with bash
# docker exec -it centos bash

# Pull base image
FROM scratch
ADD centos-7-docker.tar.xz /

LABEL name="CentOS Base Image: /
    vendor="Centos" \
    license="GPLv2" \
    build-date="20180302"

CMD ["/bin/bash"]

# Maintener
MAINTAINER Growsy <growsy@zorroa.com>

# Update CentOS 7
RUN yum update -y && yum upgrade -y

# Install packages
RUN yum install -y unzip wget curl git

# Install EPEL Repository
RUN yum install -y epel-release

# Clean CentOS 7
RUN yum clean all

# Set the environment variables
ENV HOME /root

# Working directory
WORKDIR /root

# Default command
CMD ["bash"]
