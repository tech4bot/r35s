#!/bin/bash

mkdir -p /var/lib/alsa/
amixer sset 'Playback Path' SPK_HP
alsactl store
ln -s /dev/input/event3 /dev/input/by-path/platform-rg351-keys-event
systemctl restart volume.service
exit
