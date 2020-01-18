set fish_key_bindings fish_vi_key_bindings

set -x XDG_CONFIG_HOME $HOME/.config

alias rm='rm -i'

abbr --add view nvim -R

set LANG ja_JP.UTF-8
set PATH $HOME/go/bin $PATH

# nvm
set -x NVM_DIR "$HOME/.nvm"

# go
set -x GO111MODULE on
