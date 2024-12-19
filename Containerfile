FROM docker.io/fedora:41

RUN dnf update -y && dnf install -y \
    git \
    emacs vim nano \
    gcc g++ make cmake \
    python3 python3-pip \
    java-21-openjdk \
    flex bison \
    iverilog gtkwave \
    texlive-scheme-full \
    && dnf clean all \
    && pip install --upgrade pip \
    && pip install numpy matplotlib

# Set the working directory
WORKDIR /workdir

# Set the default command
CMD ["/bin/bash"]

