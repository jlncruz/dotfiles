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
alias notes='cd sync_jay/school/notes/'
alias python_work='cd sync_jay/personal/programming/python_crash_course/python_work'
# alias git='sudo git'

set -o vi

export EDITOR='nvim'
export VISUAL='nvim'

# export PATH="/home/jay/bin:$PATH"

# Use case-insensitive filename globbing
shopt -s nocaseglob

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

export PATH="$HOME/.config/emacs/bin:$PATH"

source ~/bashscripts/custom_bash_commands.sh

export GCM_CREDENTIAL_STORE=cache
