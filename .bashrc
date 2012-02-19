# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PATH=$PATH:/home/yed/bin:/home/yed/bin/android-sdk-linux/platform-tools
#django
export WORKON_HOME=~/skript/.virtualenvs
export PIP_DOWNLOAD_CACHE=~/.pip-cache
export PROJECT_HOME=~/skript

#android
export ANDROIDSDK=~/bin/android-sdk-linux
export ANDROIDNDK=~/bin/android-ndk-r7
export ANDROIDNDKVER=r7
export ANDROIDAPI=14

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


source ~/.aliasrc
source ~/.local/bin/bashmarks.sh
source /usr/bin/virtualenvwrapper.sh
source /etc/profile.d/bash-completion.sh 
source ~/bin/autoenv/activate.sh
