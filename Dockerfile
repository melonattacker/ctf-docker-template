FROM ubuntu:18.04

ENV PATH $PATH:/bin

RUN apt-get update && \
    apt-get install -y \
    cmake \
    clang \
    build-essential \
    libssl-dev \
    gdb \
    git && \
    git clone https://github.com/longld/peda.git /peda && \
    echo "source /peda/peda.py" >> ~/.gdbinit 

WORKDIR /src