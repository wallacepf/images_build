FROM ubuntu

LABEL maintainer="wallacepf@gmail.com"

RUN dpkg --add-architecture i386 && \
apt-get update && apt-get -y install \
wget \
lib32gcc1 \
lib32stdc++6 \
libcurl4-gnutls-dev:i386

RUN mkdir -p /src/config && mkdir /src/steamcmd

WORKDIR /src/steamcmd

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && \
tar -xvzf steamcmd_linux.tar.gz