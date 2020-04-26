FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
    lvm2 \
    jq \
 && rm -rf /var/lib/apt/lists/* 

RUN sed -i 's:^\([[:blank:]]*use_lvmetad = \)1:\10:' /etc/lvm/lvm.conf

COPY run.sh /run.sh

CMD ["/run.sh"]
