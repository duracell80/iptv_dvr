# iptv_dvr
World's simplest IPTV DVR

Depends on:
- ffmepg
- at

## Install on Debian based systems
`$ install.sh`

## Configure
Change the paths given in getrec.sh to where the scripts live and where the recordings are to be saved. For example the script can run from the home directory and the recordings can be saved to a mounted NAS or USB drive.

## Populate a simple EPG without listing data
Keeping it simple means setting channels to record manually and for a spefic amount of seconds (1 hour = 3600 seconds).

Channels are associated with IPTV URL's in channels.txt with the delimiter ">"

### Channels.txt example:
ch101>https://rakuten-euronews-9-gb.lg.wurl.tv/playlist.m3u8
ch102>https://accuweatherx-lg.amagi.tv/playlist.m3u8

## Set Timer
`$ ./setrec.sh ch101 3600 202312251600`

(Date format = YYYYMMDDHHMM example: 2023 1225 1600)

## List Timers
`$ ./timers.sh`

## Delete Timer
`$ ./delete.sh <jobnumber>`
`$ ./delete.sh 1`
