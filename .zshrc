# Path to your oh-my-zsh installation.
export ZSH="/home/evan/.oh-my-zsh"
# export TERM=xterm-256color
# export TERM=xterm-kitty
ZSH_THEME="dracula"
DRACULA_DISPLAY_TIME=1
DRACULA_DISPLAY_CONTEXT=1
DRACULA_ARROW_ICON="∎ "
fpath+=~/.zfunc

export PATH="${PATH}:${HOME}/.local/bin"
export LANG=en_US.UTF-8
export EDITOR='mvim'
export PAGER="most"
export VDPAU_DRIVER=nvidia
export LIBVA_DRIVER_NAME=vdpau

# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo cargo cp emoji last-working-dir node npm rsync rust rustup)

source $ZSH/oh-my-zsh.sh

# User configuration

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='lsd -alF --group-dirs first'
alias la='lsd -A --group-dirs first'
alias l='lsd -F --group-dirs first'
alias v='nvim'
alias gs='git status'
alias rr='TERM=kitty ranger'
alias ranger='TERM=kitty ranger'
alias yt1="youtube-dl -f bestaudio -o '%(title)s.%(ext)s' --add-metadata --geo-bypass"
alias yt2="youtube-dl -o '%(title)s.%(ext)s' --add-metadata --geo-bypass"
alias os9='qemu-system-ppc \                                                                  ─╯
    -L ../qemu-screamer/pc-bios \
    -cpu "g4" \
    -M mac99,via=pmu \
    -m 512 \
    -hda disk.qcow2 \
    -cdrom "OS9.2.2.iso" \
    -boot c \
    -g 1024x768x32 \
    -device usb-kbd \
    -device usb-mouse'
alias untar='tar -xvzf'
alias pcfetch='clear && neofetch --disable term gtk2 theme icons wm --block_height 2'
alias rtxm='watch -d -n 0.5 nvidia-smi'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -e /home/evan/.nix-profile/etc/profile.d/nix.sh ]; then . /home/evan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
