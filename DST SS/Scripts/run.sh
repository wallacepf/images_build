# Update Server
sh /src/steamcmd.sh +runscript /src/config/server_dst.txt
# Run Master and Caves
sh /src/server_dst/bin/start_master.sh
sh /src/server_dst/bin/start_caves.sh