#!/bin/sh
 BINDIR=$(dirname "$(readlink -fn "$0")")
 cd "$BINDIR"
echo "Downloading Bukkit on the background"
wget -q http://getspigot.org/spigot18/craftbukkit_server.jar
mv craftbukkit_server.jar craftbukkit.jar
echo "Bukkit was downloaded correctly"
mkdir plugins
echo "Downloading LuckyBlocks on the Background"
wget -q  https://github.com/pinguisl/LuckyBlocksBukkit/releases/download/0.4/LuckyBlocks.jar
echo  "LuckyBlocks was downloaded correctly"
mv LuckyBlocks.jar plugins/LuckyBlocks.jar
wget -q https://raw.githubusercontent.com/pinguisl/LuckyBlocksDeployment/master/LuckyBlocksEssentials.tgz
tar -zxf LuckyBlocksEssentials.tgz
rm LuckyBlocksEssentials.tgz
echo "Done"
echo "Chose a map to Download:”
echo “1.[Size:Small][Snow Themed]
echo “2.[Size:Huge}[Island Themed]
read downloadOption
if [$downloadOption = 1];
then
wget -q https://raw.githubusercontent.com/pinguisl/LuckyBlocksDeployment/master/world1.tgz
fi
else
if [$downloadOption = 2];
then
wget -q https://raw.githubusercontent.com/pinguisl/LuckyBlocksDeployment/master/world2.tgz
fi
else
echo “Not a correct input”
fi
