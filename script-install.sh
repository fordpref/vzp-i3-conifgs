#!/bin/bash

cd

git clone git://code.i3wm.org/i3

git clone https://github.com/fordpref/vzp-i3-configs.git

sudo apt-get -y install pkg-config libx11-xcb-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-xinerama0-dev

cd i3

sudo make 
sudo make install

sudo apt-get -y install i3lock i3status scrot conky-all nm-applet scrot

cd ../vzp-i3-configs

cp .conkyrc ~
cp .i3-lock ~
cp .start-conky ~
cp scrot.sh ~
mkdir ~/.i3
cp config ~/.i3/

#copy to root too in case not run as root

sudo cp .conkyrc /root/
sudo cp .i3-lock /root/
sudo cp .start-conky /root/
sudo cp scrot.sh /root/
sudo mkdir /root/.i3
sudo cp config ~/.i3/
cd ..
echo **DONE**  Reboot, choose i3, login
