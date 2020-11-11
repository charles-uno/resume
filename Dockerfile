FROM ubuntu:latest

# Avoid prompt for time zone info during LaTeX install
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update
RUN apt-get install -y \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-pictures \
    texlive-science \
    latexmk

CMD ["/bin/bash"]
