#!/bin/bash

mkdir -p /var/lib/alsa/
amixer sset 'Playback Path' SPK_HP
alsactl store
exit
