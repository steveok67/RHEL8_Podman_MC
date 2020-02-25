#!/bin/bash

###############################################################################
# Minecraft Automation Script
# author: sjk
# date: 2/24/2020
###############################################################################

# Set your account name to variable
export -n minecraft_account=$1

# get container ID:
export -n MC_CONT_ID=`podman ps |grep "docker.io/itzg/minecraft-server:latest" |awk '{print $1}'`
echo container id is: $MC_CONT_ID

# copy jar file into container:
podman cp worldedit.jar $MC_CONT_ID:/data/plugins/

# change ownership of that file:
podman exec -it $MC_CONT_ID chown minecraft:minecraft /data/plugins/worldedit.jar

# create folder for schematic file:
podman exec -it $MC_CONT_ID mkdir -p /data/plugins/WorldEdit/schematics

# copy schematic file into container
podman cp RedHat.schem $MC_CONT_ID:/data/plugins/WorldEdit/schematics/

# change ownership of that folder & file:
podman exec -it $MC_CONT_ID chown -R minecraft:minecraft /data/plugins/WorldEdit/

# reload minecraft
podman exec -i $MC_CONT_ID rcon-cli reload

# give it time to reload
sleep 3

# disable annoying minecraft features:
podman exec -i $MC_CONT_ID rcon-cli op $minecraft_account
podman exec -i $MC_CONT_ID rcon-cli difficulty peaceful
podman exec -i $MC_CONT_ID rcon-cli gamerule doDaylightCycle false
podman exec -i $MC_CONT_ID rcon-cli weather clear 1000000

###############################################################################
# END OF FILE
###############################################################################
