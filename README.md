# OpenUtau Installer for Linux
This is a simple script to download and install OpenUtau on Linux for the local user.
OpenUtau has a built in updater that is preferred for many users, so for this reason it's preferrable to use an installer like this over installing from a package into the root filesystem.

Alternatively, for Arch-linux users, I maintain an AUR package for the git build of OpenUtau.

## How to install
It's as easy as running the following in the terminal:
```
source <(curl -s https://raw.githubusercontent.com/HitCoder9768/OpenUtau-Installer-Linux/main/install.sh)
```

If the icon does not display, the easiest fix for this is to run
```
sudo wget -q https://raw.githubusercontent.com/stakira/OpenUtau/master/Logo/openutau.svg -O /usr/share/pixmaps/openutau.svg
```
This will require administrative privileges as it will add it to the root tree.