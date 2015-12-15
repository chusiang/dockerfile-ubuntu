#!/bin/bash
# ============================================================
#  Author: 凍仁翔 / chusiang.lai (at) gmail.com
#  Blog: http://note.drx.tw
#  Filename: _bash_aliases
#  Modified: 2015-12-16 00:21
#  Description: alias config for bashrc.
# =========================================================== 

# Color
# ======
#
# color the files of directory, zip, execute ... etc.
#
if [ "$(uname)" == "Darwin" ]; then
  # Set CLICOLOR if you want Ansi Colors in iTerm2 
  export CLICOLOR=1
  export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
else
  eval "`dircolors`"
  export LS_OPTIONS='--color=auto'
  alias ls='ls $LS_OPTIONS'
fi

# color the diff.
if [ -f /usr/bin/colordiff ]; then
  alias diff="colordiff"
fi

# File Manager
# =============
#
alias cd.='cd ..'
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias cd....='cd ../../../..'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -Al'
alias lh='ls -lh'
alias lt='tree'

alias grep='grep $LS_OPTIONS'
alias egrep='egrep $LS_OPTIONS'

# Editor
# =======
#
alias vr='vim -R'
alias vd='vimdiff'
alias gvir='gvim --remote-tab'
alias gvis='gvim --remote +split'

# Alias the MacVim to GVim.
if [ "$(uname)" == "Darwin" ]; then
  alias gvim='mvim'
fi


# system
# =======
#
# - Fool-proofing 
alias ifconfig='/sbin/ifconfig'
alias reboot='/sbin/shutdown -r now'

# - screen and tmux
alias screen='screen -RD'
alias tmux="TERM=screen-256color-bce tmux"
alias tmux0="TERM=screen-256color-bce tmux a -t 0"
alias tmux1="TERM=screen-256color-bce tmux a -t 1"

# - rxvt
alias rxvt='rxvt-unicode'
alias irc='rxvt -name IRC -e irssi'

# - cal
if [ "$(uname)" == "Darwin" ]; then
  alias cal='gcal'
  alias aptitude='brew'
fi

# - Virtualenv
alias activate.env="source .venv/bin/activate"
