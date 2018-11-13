
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
    texlive-floatrow \
    texlive-import \
    texlive-latex \
    texlive-latexmk \
    texlive-subfig \
    texlive-svg \
    texlive-tex-gyre \
    texlive-ulem

CMD ["/bin/bash"]
