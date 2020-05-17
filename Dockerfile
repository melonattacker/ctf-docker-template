FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y cmake clang build-essential libssl-dev

WORKDIR /src