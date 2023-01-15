#!/usr/bin/env bash
ts=$(date "+%Y%m%d-%H%M%S")

sir="/home/user/Video/IPTV/scripts"
dir="/mnt/USBDRIVE/Video/IPTV/recordings"
url=$(grep "${1}" "${sir}/channels.txt" | cut -d '>' -f 2)


ffmpeg -i $url -c:v copy -c:a copy -t $2 $dir/recording-$ts.mp4
