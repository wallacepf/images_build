#!/bin/bash

#Create a daemon 

bg sh /src/server_dst/bin/start_master.sh
bg sh /src/server_dst/bin/start_caves.sh