FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
    lvm2 \
 && rm -rf /var/lib/apt/lists/* 

