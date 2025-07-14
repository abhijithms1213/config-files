#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[ -f /home/cj/.dart-cli-completion/bash-config.bash ] && . /home/cj/.dart-cli-completion/bash-config.bash || true
## [/Completion]
eval "$(tmuxifier init -)"
eval "$(fzf --bash)"
