set fish_key_bindings fish_vi_key_bindings

set -x XDG_CONFIG_HOME $HOME/.config

alias vi=nvim
alias rm='rm -i'
alias grep=ag

abbr --add view nvim -R
abbr --add dcn docker container
abbr --add dci docker image
abbr --add dcm docker-compose

set -x GOPATH $HOME/Projects/go

set PATH $GOPATH/bin $PATH
