export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
unsetopt PROMPT_SP 2>/dev/null

# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# export QT_QPA_PLATFORM=wayland
# export GDK_BACKEND=wayland
# export QT_QPA_PLATFORM=wayland-egl
# export TERMINAL="foot"
# export TERMINAL_PROG="foot"
export EDITOR="nvim"
export FILE_MANAGER="lf"
export SYSTEM_MONITOR="btop"
export STATUSBAR="dwmblocks"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="librewolf"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/history"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export HISTFILE="$XDG_DATA_HOME/history"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# if [ -z "$XDG_RUNTIME_DIR" ]; then
# 	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

# 	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
# 	export XDG_RUNTIME_DIR
# fi

# [ "$(tty)" = "/dev/tty1" ] && exec sway

if [[ "$(tty)" = "/dev/tty1" ]]; then 
 pgrep dwm || startx
fi
