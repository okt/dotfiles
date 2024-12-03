# dotfiles

Dotfiles managed with [chezmoi](https://github.com/twpayne/chezmoi).

## software

These are a few of my favorite things:

### terminal

```sh
aerc          # email client
bat           # enhanced cat clone
bluetuil      # bluetooth manager
bun           # javascript toolkit
catnip        # audio visualizer
direnv        # environment switcher
eza           # ls replacement
fastfetch     # system information tool
feh           # image viewer
fnm           # node version manager
fzf           # fuzzy finder
gh            # github cli
git           # version control
hstr          # history browser
hugo          # static site generator
hut           # sr.ht cli
jujutsu       # git compatible vcs
jj-fzf        # fzf jujutsu browser
jq            # json processor
newsboat      # rss reader
nvim          # text editor
rustup        # rust toolchain
senpai        # irc client
slop          # select screen area
starship      # prompt
tldr          # quick command reference
tmux          # terminal multiplexer
yazi          # tui file browser
zoxide        # enhanced cd replacement
zsh           # shell
```

### gui

```sh
i3            # window manager
blender       # 3d modeling
cider         # Apple music client
dunst         # notification daemon
feh           # image viewer
firefox       # web browser
galculator    # calculator
gimp          # image editor
greenclip     # clipboard manager
kcolorpicker  # color picker
kitty         # terminal emulator
obsidian      # note taking app
picom         # compositor
scrot         # screenshot tool
sunshine      # streaming remote-desktop
tridactyl     # vim-like browser add-on
zathura       # pdf reader
```

## scripts

### Floating kitty terminal

This script lets you draw a window to size a new `kitty` terminal.

```bash
#!/usr/bin/env bash
# vim: set filetype=sh :

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check for required dependencies
for cmd in kitty i3-msg slop; do
  if ! command_exists "$cmd"; then
    echo "Error: Required command '$cmd' is not installed." >&2
    exit 1
  fi
done

launch_kitty() {
  local instance_name=$1
  local current_dir=$2
  local user_command=$3

  if [ -n "$user_command" ]; then
    # Launch Kitty with the specified command and working directory
    # --hold -- zsh -lic '$user_command'"
    i3-msg -q "exec --no-startup-id kitty --class $instance_name --directory $current_dir \
    --hold zsh -lic $user_command"
  else
    # Launch Kitty without any specific command
    i3-msg -q "exec --no-startup-id kitty --class $instance_name --directory $current_dir"
  fi
}

# Use slop to get the selected area
geometry=$(slop -f "%x %y %w %h")
if [ -z "$geometry" ]; then
  echo "Selection canceled."
  exit 1
fi

read -r x y width height <<<"$geometry"

# Generate a unique instance name using the current timestamp
instance_name="floating_kitty_$(date +%s%N)"

current_dir=$(pwd)

if [ $# -gt 0 ]; then
  if [ "$1" == "." ]; then
    # Argument is '.', open Kitty in the current directory without additional commands
    launch_kitty "$instance_name" "$current_dir"
  else
    # Combine the provided arguments into a single command string
    user_command="$*"
    launch_kitty "$instance_name" "$current_dir" "$user_command"
  fi
else
  # No arguments provided, launch Kitty without any specific command
  launch_kitty "$instance_name" "$current_dir"
fi

# Small delay to ensure the window is created
sleep 0.4

# Move the Kitty window to the desired position and resize it
i3-msg -q "[instance=\"$instance_name\"] floating enable, resize set $width $height, move absolute position $x $y"
```

### Tmux popup session window

This script creates a popup session that can be called from within an existing
tmux session using the keybinding `prefix + t`.

```bash
#!/usr/bin/env bash

width=${2:-60%}
height=${2:-80%}
if [ "$(tmux display-message -p -F "#{session_name}")" = "popup" ]; then
  tmux detach-client
else
  tmux popup -d '#{pane_current_path}' -xC -yC -w$width -h$height -E "tmux attach -t popup || tmux new -s popup"
fi
```
