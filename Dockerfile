FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common

RUN add-apt-repository ppa:mc3man/trusty-media && \
    apt-get update && \
    apt-get install -y ffmpeg \
    && rm -rf /var/lib/apt/lists/*

