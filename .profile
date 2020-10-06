# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games




export PATH HOME TERM


# XDG Configuration to cleaup Home dir
# export XAUTHORITY="$XDG_CONFIG_HOME/X11/Xauthority"
# export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
# export TMUX="$XDG_CONFIG_HOME/tmux/tmux.conf"

# alias tmux='tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf"'
alias dotfiles="/usr/local/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias v="nvim"

PS1="\w > "
export PS1
