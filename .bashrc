# This file contains my .bashrc additions

# Prompt with git branch
function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}
function set_prompt {
local BLUE="\[\033[0;34m\]"
local LIGHT_BLUE="\[\033[1;34m\]"
local RED="\[\033[0;31m\]"
local LIGHT_RED="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local LIGHT_GREEN="\[\033[1;32m\]"
local WHITE="\[\033[1;37m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local DEFAULT="\[\033[0m\]"
PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}$LIGHT_GREEN\u@\h$DEFAULT:$LIGHT_BLUE\w$DEFAULT\$$LIGHT_GREEN\$(parse_git_branch) $DEFAULT"
}
set_prompt
