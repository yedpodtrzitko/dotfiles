#!/bin/bash
exec ssh-agent sh -c 'ssh-add > /dev/null & sleep 2; exec openbox-session'
