FROM ubuntu:20.04

ENV PATH $PATH:/bin

RUN apt-get update && apt-get install -y tzdata
ENV TZ=Asia/Tokyo 

RUN apt-get install -y \
    binutils \
    bsdmainutils \
    cmake \
    clang \
    build-essential \
    libssl-dev \
    netcat \
    python3 \
    python3-pip \
    gcc \
    g++ \
    gdb \
    git \
    socat \
    ruby \
    vim  && \
    git clone https://github.com/longld/peda.git ~/peda && \ 
    echo "source ~/peda/peda.py" >> ~/.gdbinit && \
    git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb && \
    cp ~/Pwngdb/.gdbinit ~/ && \
    git clone https://github.com/slimm609/checksec.sh ~/checksec.sh && \
    gem install one_gadget

RUN pip3 install pwntools

WORKDIR /src