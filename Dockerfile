# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set the working directory inside the container
WORKDIR /app


RUN apt update  && \
    apt-get update && \
    apt install -y vim curl python3-pip git dmidecode lshw wget bc numactl netcat lsof sysstat && \
    pip3 install click pyyaml tabulate pandas

# copy everything from the current directory to the working directory
COPY . .
