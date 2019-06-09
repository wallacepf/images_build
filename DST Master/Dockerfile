FROM wallacepf/steamcmd:latest

LABEL maintainer="wallacepf@gmail.com"

RUN mkdir -p /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Master

COPY server_dst.txt /src/config

WORKDIR /src/steamcmd

RUN ./steamcmd.sh +runscript ../config/server_dst.txt

COPY start_master.sh /src/server_dst/bin
COPY cluster.ini /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer
COPY cluster_token.txt /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer
COPY Master/* /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Master/

EXPOSE 10999/udp

ENTRYPOINT ["sh", "/src/server_dst/bin/start_master.sh"]

VOLUME [ "/src" ]