FROM wallacepf/steamcmd:latest

LABEL maintainer="wallacepf@gmail.com"

USER steam

RUN mkdir -p /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Master && \
mkdir /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Caves

COPY server_dst.txt /src/config

WORKDIR /src/steamcmd

RUN ./steamcmd.sh +runscript ../config/server_dst.txt

COPY Scripts/* /src/server_dst/bin/
COPY cluster.ini /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer
COPY cluster_token.txt /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer
COPY Caves/* /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Caves/
COPY Master/* /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Master/

EXPOSE 10999/udp

# ENTRYPOINT ["sh", "/src/server_dst/bin/run.sh"]

VOLUME [ "/src" ]