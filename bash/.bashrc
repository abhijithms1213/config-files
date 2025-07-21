#
# ~/.bashrc
#

export EDITOR=nvim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#export GDK_DPI_SCALE=1.5
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec Hyprland
fi
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

alias ii='nvim $(fzf -m --preview="bat --color=always {}")'
alias f='cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)'

# tldrc
alias m="tldr"
# eza commands
alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"
#zoxide
eval "$(zoxide init bash)"
alias cd="z"
