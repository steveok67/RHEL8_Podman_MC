#!/bin/bash

###############################################################################
# Minecraft Automation Script
# author: sjk
# date: 2/24/2020
###############################################################################

# start container
echo starting container...
podman run -e TYPE=SPIGOT -e \
SPIGOT_DOWNLOAD_URL=https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar \
-p 25565:25565 -e EULA=TRUE docker.io/itzg/minecraft-server

###############################################################################
# END OF FILE
###############################################################################
