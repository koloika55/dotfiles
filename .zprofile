export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
unsetopt PROMPT_SP 2>/dev/null

export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="librewolf"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/history"
export FEHBG_PATH="$XDG_CONFIG_HOME/fehbg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

if [[ "$(tty)" = "/dev/tty1" ]]; then 
 pgrep dwm || startx
 
fi
