#!/bin/bash

cp /storage/.config/custom_start.sh cp /storage/.config/custom_start.sh_bkp
sed -i "42i mkdir -p /var/lib/alsa/\namixer sset 'Playback Path' SPK_HP\nalsactl store\nln -s /dev/input/event3 /dev/input/by-path/platform-rg351-keys-event\nsystemctl restart volume.service" /storage/.config/custom_start.sh
reboot