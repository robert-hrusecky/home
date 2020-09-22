#!/bin/bash

PROP="/panels/panel-1/position"
MON1="p=8;x=960;y=1185"
MON2="p=8;x=1920;y=1185"
CURR="$(xfconf-query -c xfce4-panel -p $PROP)"

if [ "$CURR" = "$MON1" ]; then
    xfconf-query -c xfce4-panel -p $PROP -s $MON2
else
    xfconf-query -c xfce4-panel -p $PROP -s $MON1
fi
