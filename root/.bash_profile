# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# set tmuxifier bin path.
if [ -d "$HOME/.tmuxifier/bin" ] ; then
	PATH="$PATH:~/.tmuxifier/bin"
fi

# homebrew
if [ -d "/usr/local/sbin" ] ; then
  PATH="/usr/local/sbin:$PATH"
fi

# RVM
if [ -d "$PATH:$HOME/.rvm/bin" ] ; then
  PATH="$PATH:$HOME/.rvm/bin" 
fi
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# AWS CLI
if [ -f "/usr/local/bin/aws_completer" ] ; then
  complete -C '/usr/local/bin/aws_completer' aws
fi

# ------------------------------------
# Author : Chu-Siang Lai
# E-mail : jonny (at) drx.tw
# Blog: http://note.drx.tw
# ------------------------------------
