# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

xrdb -merge ~/.Xresources

# Set EDITOR
# export LC_CTYPE="en_US.UTF-8"
# export LANG="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

# Setup ENV
# export ENV="${HOME}/.kshrc"
# export XDG_CONFIG_HOME="${HOME}/.config"
export PATH HOME TERM

# Add local 'pip' to PATH:
export PATH="${PATH}:${HOME}/.local/"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:/usr/local/lib/python3.7/site-packages/"

# XDG Configuration to cleaup Home dir
# export XAUTHORITY="$XDG_CONFIG_HOME/X11/Xauthority"
# export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
# export TMUX="$XDG_CONFIG_HOME/tmux/tmux.conf"

# alias tmux='tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf"'
alias dotfiles="/usr/local/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias v="nvim"
alias ls="colorls -pl"
alias ll="colorls -pl1"
alias la="colorls -pa"
alias l="colorls -p"
alias ff="firefox &"
alias fp="firefox -private-window &"
alias pip="pip3.7"
alias pf='/home/okt/Src/pfetch/pfetch'
alias cl='/home/okt/Src/colour-script/cl.sh'
alias tmux='tmux -f /home/okt/.config/tmux/tmux.conf'
alias irssi='irssi --config /hoome/okt/.config/irssi/config'


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
