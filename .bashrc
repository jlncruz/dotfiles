#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias git='sudo git'
alias monitor1='xrandr --output Virtual1 --mode 1920x1080'
alias monitor2='xrandr --output Virtual1 --mode 1920x1200'

set -o vi

export EDITOR='nvim'
export VISUAL='nvim'

# export PATH="/home/jay/bin:$PATH"

# Use case-insensitive filename globbing
shopt -s nocaseglob

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

export PATH="$HOME/.emacs.d/bin:$PATH"
