#!/bin/bash
eval `ssh-add`
exec dbus-launch --exit-with-session openbox-session
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi
