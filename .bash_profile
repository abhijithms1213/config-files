#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[ -f /home/cj/.dart-cli-completion/bash-config.bash ] && . /home/cj/.dart-cli-completion/bash-config.bash || true
export JAVA_HOME=/usr/lib/jvm/java-24-openjdk

## [/Completion]
eval "$(tmuxifier init -)"
eval "$(fzf --bash)"

# Created by `pipx` on 2025-11-21 07:43:37
export PATH="$PATH:/home/cj/.local/bin"
