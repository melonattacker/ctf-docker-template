FROM sagemath/sagemath:latest

ENV PATH $PATH:/bin

RUN sudo apt-get update && sudo apt-get install -y tzdata
ENV TZ=Asia/Tokyo 

RUN sudo apt-get install -y \
    cmake \
    clang \
    build-essential \
    libssl-dev \
    netcat \
    python3 \
    python3-pip \
    python3-gmpy2 \
    gdb \
    git && \
    sudo git clone https://github.com/longld/peda.git /peda && \
    echo "sudo source /peda/peda.py" >> ~/.gdbinit && \
    mkdir ~/.sage && \
    echo "%colors Linux" > ~/.sage/init.sage

RUN pip3 install pycryptodome pwntools && \
    sage --pip install pycryptodome

WORKDIR /src