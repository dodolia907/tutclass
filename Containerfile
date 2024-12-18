FROM docker.io/fedora:41

RUN dnf update -y && dnf install -y \
    gcc \
    g++ \
    make \
    cmake \
    git \
    python3 \
    python3-pip \
    emacs \
    vim \
    nano \
    flex \
    bison \
    iverilog \
    gtkwave \
    texlive-scheme-full \
    && dnf clean all \
    && pip install --upgrade pip \
    && pip install numpy matplotlib \

# Set the working directory
WORKDIR /workdir

# Set the default command
CMD ["/bin/bash"]

