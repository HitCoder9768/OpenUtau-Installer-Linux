#! /bin/bash
mkdir -p ~/.local/lib
mkdir -p ~/.local/share/pixmaps
mkdir -p ~/.local/lib/OpenUtau
echo "Downloading OpenUtau..."
wget -q https://github.com/stakira/OpenUtau/releases/download/OpenUtau-Latest/OpenUtau-linux-x64.tar.gz -O /tmp/ou.tar.gz --show-progress 
echo "Installing..."
tar xvf /tmp/ou.tar.gz -C ~/.local/lib/OpenUtau
echo "Retrieving icon..."
wget -q https://raw.githubusercontent.com/stakira/OpenUtau/master/Logo/openutau.svg -O ~/.local/share/pixmaps/openutau.svg --show-progress
echo "Marking executable..."
chmod +x ~/.local/lib/OpenUtau/OpenUtau
echo "Adding to menu..."
cp OpenUtau.desktop ~/.local/share/applications
echo "Removing temp files..."
rm /tmp/ou.tar.gz
echo "Done!"