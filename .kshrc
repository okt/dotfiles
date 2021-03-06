export PS1="\w > "

HISTFILE="$HOME/.hist"
HISTSIZE=5000

xrdb -merge "/home/okt/.Xresources"

export VISUAL="nvim"
export EDITOR="$VISUAL"
set -o emacs

alias __A=`echo "\020"`     # up arrow = ^p = back a command
alias __B=`echo "\016"`     # down arrow = ^n = down a command
alias __C=`echo "\006"`     # right arrow = ^f = forward a character
alias __D=`echo "\002"`     # left arrow = ^b = back a character
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line

