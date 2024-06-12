#!/bin/bash

safe_run() {
    if command -v sudo >/dev/null 2>&1; then
        sudo "$@"
    else
        "$@"
    fi
}

safe_run apt-get -y update
safe_run apt-get -y install xserver-xorg-video-dummy
safe_run touch /etc/X11/xorg.confg

echo -e "
Section \"Monitor\"
Identifier \"dummy_monitor\"
HorizSync 28.0-80.0
VertRefresh 48.0-75.0
Modeline \"1920x1080\" 172.80 1920 2040 2248 2576 1080 1081 1084 1118
EndSection

Section \"Device\"
Identifier \"dummy_card\"
VideoRam 256000
Driver \"dummy\"
EndSection

Section \"Screen\"
Identifier \"dummy_screen\"
Device \"dummy_card\"
Monitor \"dummy_monitor\"
SubSection \"Display\"
EndSubSection
EndSection
" > /etc/X11/xorg.conf
