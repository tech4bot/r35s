#!/bin/bash

text_viewer -w -y -t "R35S Audio Fix" -m "\nThis script is designed to resolve the low audio issues in R35S.\nWould you like to run the script?"
response=$?
case $response in
  0)
    exit
  ;;
  21)
    mkdir -p /var/lib/alsa/
    amixer sset 'Playback Path' SPK_HP
    alsactl store
    ln -s /dev/input/event3 /dev/input/by-path/platform-rg351-keys-event
    systemctl restart volume.service
    exit
  ;;
esac
