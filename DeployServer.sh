#!/bin/bash
 BINDIR=$(dirname "$(readlink -fn "$0")")
 cd "$BINDIR"
echo "Downloading Bukkit on the background"
wget -q http://getspigot.org/spigot18/craftbukkit_server.jar
mv craftbukkit_server.jar craftbukkit.jar
echo "Bukkit was downloaded correctly"
mkdir plugins
echo "Downloading LuckyBlocks on the Background"
wget -q  https://github.com/josegrobles/LuckyBlocksBukkit/releases/download/1.0-SNAPSHOT/LuckyBlocks.jar
echo  "LuckyBlocks was downloaded correctly"
mv LuckyBlocks.jar plugins/LuckyBlocks.jar
wget -q https://raw.githubusercontent.com/pinguisl/LuckyBlocksDeployment/master/LuckyBlocksEssentials.tgz
tar -zxf LuckyBlocksEssentials.tgz
rm LuckyBlocksEssentials.tgz
mkdir world
cd world
wget -q https://raw.githubusercontent.com/pinguisl/LuckyBlocksDeployment/master/world2.tgz
tar -zxf world2.tgz
rm world2.tgz
echo "Done"
