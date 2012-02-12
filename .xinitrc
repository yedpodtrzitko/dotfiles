#!/bin/bash

AGENT=ssh-agent
DBUS='dbus-launch --auto-syntax --exit-with-session'
DEFAULT_SESSION=openbox-session

do_session() { exec $AGENT $DBUS $1; }

do_session openbox_session
