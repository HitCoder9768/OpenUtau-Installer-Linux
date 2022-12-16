#! /bin/bash
mkdir -p ~/.local/lib
mkdir -p ~/.local/share/pixmaps
mkdir -p ~/.local/lib/OpenUtau
echo "Downloading OpenUtau..."
wget -q https://github.com/stakira/OpenUtau/releases/latest/download/OpenUtau-linux-x64.tar.gz -O /tmp/ou.tar.gz --show-progress 
echo "Installing..."
tar xvf /tmp/ou.tar.gz -C ~/.local/lib/OpenUtau
echo "Retrieving icon..."
wget -q https://raw.githubusercontent.com/stakira/OpenUtau/master/Logo/openutau.svg -O ~/.local/share/pixmaps/openutau.svg --show-progress
echo "Marking executable..."
chmod +x ~/.local/lib/OpenUtau/OpenUtau
echo "Adding to menu..."
wget -q https://raw.githubusercontent.com/HitCoder9768/OpenUtau-Installer-Linux/main/OpenUtau.desktop -O ~/.local/share/applications/OpenUtau.desktop --show-progress
echo "Removing temp files..."
rm /tmp/ou.tar.gz
echo "Done!"