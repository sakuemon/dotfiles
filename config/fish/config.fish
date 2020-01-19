set fish_key_bindings fish_vi_key_bindings

set -x XDG_CONFIG_HOME $HOME/.config

set LANG ja_JP.UTF-8
set PATH $HOME/go/bin $PATH

# common
alias rm='rm -i'

# vim, nvim
alias vim='nvim'
abbr --add view nvim -R

# nvm
set -x NVM_DIR "$HOME/.nvm"

# go
set -x GO111MODULE on

# fzf
set -x FZF_DEFAULT_OPTS "--no-height --no-reverse"
set -x FZF_TMUX 1

