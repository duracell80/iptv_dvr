#!/bin/sh

sir=~/Videos/IPTV/scripts
dir=~/Videos/IPTV/recordings
lir=~/.local/share/iptv_dvr

sudo apt install ffmpeg at
sudo systemctl enable --now atd

mkdir -p $sir
mkdir -p $dir
mkdir -p ~/.local/share/iptv_dvr

cp -f channels.txt $sir
cp *.sh $lir
chmod a-rwx $lir/*.sh
chmod u+rwx $lir/*.sh
