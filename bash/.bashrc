#
# ~/.bashrc
#
#XDG_CURRENT_DESKTOP=sway
export EDITOR=nvim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#export GDK_DPI_SCALE=1.5
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec start-hyprland
fi

# fish
exec fish

eval "$(starship init bash)"
alias grep='grep --color=auto'
# the below line will do tmuxifier use
# it is useful for preset tmux sessions
# the eval code is located in ~/.bash_profile
export PATH="$HOME/.tmuxifier/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
#for flutter firebase config
export PATH="$PATH":"$HOME/fvm/default/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

export FIREFOX_EXECUTABLE=/usr/bin/firefox

export JAVA_HOME=/usr/lib/jvm/java-24-openjdk
export PATH=$JAVA_HOME/bin:$PATH

PS1='[\u@\h \W]\$ '

# fzf command

# alias ii='nvim $(fzf -m --preview="bat --color=always {}")'
# alias f='cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)'

# tldrc
alias m="tldr"
# eza commands
alias ss="eza --header --icons"
alias alt="eza --long --sort modified --icons"
alias al="eza --long --header --icons"
#zoxide
eval "$(zoxide init bash)"
alias cd="z"
alias b="tmuxifier s wa"
alias c="tmuxifier s wb"
alias o="tmuxifier s wc"
alias ii="zi"
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
# STARSHIP_DISABLE=true
#  terminal setup
# export $TERM=kitty
# kitty 
# if [ -n "$KITTY_WINDOW_ID" ]; then
#     /home/cj/configfiles/.config/kitty/scripts/random-color-preview.sh
# fi
#
# alias pr="/home/cj/configfiles/.config/kitty/scripts/random-color-preview.sh"
    
# if [ -n "$KITTY_WINDOW_ID" ]; then
#     "nitch"
# fi

# alias .="nvim ."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias nv="nvim ."
alias n="nvim"
alias q="exit"
alias w="whatsapp-cli"
alias ws="whatsapp-cli sync"

# Created by `pipx` on 2025-11-21 07:43:37
export PATH="$PATH:/home/cj/.local/bin"
# carapace auto complete
export CARAPACE_BRIDGES='bash' # optional
source <(carapace _carapace)

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
