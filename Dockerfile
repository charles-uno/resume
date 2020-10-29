FROM ubuntu:16.04

RUN apt-get update

# Avoid prompt for time zone info.
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update
RUN apt-get install -y make texlive-full

CMD ["/bin/bash"]
