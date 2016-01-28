FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL en_US.UTF-8

RUN apt-get update && \
    apt-get -y install bzip2 && \
    apt-get -y install curl && \
    apt-get -y install libfontconfig && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \

    curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 > ~/phantomjs.tar.bz2 && \
    cd ~ && tar -vxjf phantomjs.tar.bz2 && \
    mv ~/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs && \
    rm -rf ~/phantomjs-2.1.1-linux-x86_64 && \
    rm -rf ~/phantomjs.tar.bz2
