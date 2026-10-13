FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gcc-7 \
    g++-7 \
    make \
    xz-utils \
    gzip \
    python3 \
    python3-pip \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 100 \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 100 \
    && update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-7 100 \
    && update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-7 100 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work




# sudo docker run --rm -it \
#   --name champsim-container \
#   -v "$HOME/Desktop/CS683/CS683_A2:/work" \
#   -v "$HOME/Desktop/CS683/traces:/traces:ro" \
#   -w /work \
#   champsim-python bash