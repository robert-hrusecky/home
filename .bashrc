#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias dmesg='dmesg --color'

BOLD="\[$(tput bold)\]"
D="\[$(tput setaf 250)\]"
U="\[$(tput setaf 45)\]"
H="\[$(tput setaf 33)\]"
W="\[$(tput setaf 118)\]"
P="\[$(tput setaf 99)\]"
RESET="\[$(tput sgr0)\]"
SHORT_PWD='$(python ~/scripts/short_pwd.py 25)'

PS1="${BOLD}${D}[${U}\u${D}@${H}\h ${W}${SHORT_PWD}${D}]${P}\$${RESET} "

unset BOLD D U H W P RESET
