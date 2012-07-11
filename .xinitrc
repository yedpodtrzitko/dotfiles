#!/bin/bash
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session openbox-session
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi
