FROM ubuntu:20.04

# Avoid prompt for time zone info during LaTeX install
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update
RUN apt-get install -y \
    pandoc \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-pictures \
    texlive-science \
    latexmk \
    wget

# Install emerald fonts, not available via texlive
RUN mkdir -p $(kpsewhich --var-value=TEXMFHOME)
RUN wget http://mirror.ctan.org/fonts/emerald.zip && unzip emerald.zip
RUN cp -r emerald/. $(kpsewhich --var-value=TEXMFHOME)
RUN updmap -sys --enable Map emerald.map && texhash

CMD ["/bin/bash"]
