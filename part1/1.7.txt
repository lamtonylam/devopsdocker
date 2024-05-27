# start from Ubuntu 22.04
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy script.sh file to docker
COPY script.sh .

# allow execute
RUN chmod +x script.sh

# update packages and upgrade
RUN apt update && apt upgrade

# install curl
RUN apt install curl -y

# run command
CMD ./script.sh
