#!/bin/sh

ts=$(date "+%Y%m%d-%H%M%S")

sir=~/Videos/IPTV/scripts
dir=~/Videos/IPTV/recordings
url=$(grep "${1}" "${sir}/channels.txt" | cut -d '>' -f 2)

mkdir -p $dir
ffmpeg -i $url -c:v copy -c:a copy -t $2 $dir/recording-$ts.mp4
