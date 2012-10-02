# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PATH=$PATH:/home/yed/bin:/home/yed/bin/android-sdk-linux/platform-tools

export PIP_DOWNLOAD_CACHE=~/.pip-cache

#android
export ANDROIDSDK=~/bin/android-sdk-linux
export ANDROIDNDK=~/bin/android-ndk-r7
export ANDROIDNDKVER=r7
export ANDROIDAPI=14

export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTCONTROL=ignoreboth

export LESS=-R

source ~/.aliasrc
source ~/.local/bin/bashmarks.sh
source ~/bin/autoenv/activate.sh

#autoenv
cd .
#ssh-add
