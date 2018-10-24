

from opensuse
RUN zypper install -y \
    ImageMagick \
    inkscape \
    make \
    man \
    vim \
    which

RUN zypper install -y \
    texlive-enumitem \
    texlive-import \
    texlive-latex \
    texlive-latexmk \
    texlive-subfig \
    texlive-svg \
    texlive-tex-gyre \
    texlive-ulem




#from centos
#RUN yum clean all
#RUN yum install -y epel-release vim which make man inkscape imagemagick
#RUN yum install -y latexmk texlive-base texlive-texconfig texlive-texconfig-bin texlive-latex-extra texlive-fonts-extra texlive-collection-fontsrecommended


# Tried ubuntu, but the Inkscape and ImageMagick are maybe bugged? Pieces are missing when they convert SVG to PDF. 
#from ubuntu:xenial
#RUN apt-get update -q
#RUN apt-get install -qy latexmk texlive-base texlive-latex-extra texlive-fonts-extra
#RUN apt-get install -qy man build-essential make inkscape imagemagick

CMD ["/bin/bash"]
