# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PATH=$PATH:/home/yed/bin
export WORKON_HOME=~/skript/.virtualenvs
export PIP_DOWNLOAD_CACHE=~/.pip-cache


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


if [ -f ~/.aliasrc ]; then
    source ~/.aliasrc
fi
if [ -f ~/.local/bin/bashmarks.sh ]; then
	source ~/.local/bin/bashmarks.sh
fi
if [ -f /usr/bin/virtualenvwrapper.sh ]; then
	source /usr/bin/virtualenvwrapper.sh
fi
if [ -f /etc/profile.d/bash-completion.sh ]; then
	source /etc/profile.d/bash-completion.sh 
fi
