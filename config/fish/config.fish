set fish_key_bindings fish_vi_key_bindings

set -x XDG_CONFIG_HOME $HOME/.config

set LANG ja_JP.UTF-8
set PATH $HOME/go/bin $PATH
set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set PATH /usr/local/opt/findutils/libexec/gnubin $PATH

set -x EDITOR vim

set -x RIPGREP_CONFIG_PATH $HOME/.config/ripgrep/rc

function fish_prompt; end
function fish_right_prompt; end
function fish_mode_prompt; end


# common
alias rm='rm -i'

# vim, nvim
alias vim='nvim'
alias vi='nvim'
abbr --add view nvim -R
abbr --add ls exa

# nvm
set -x NVM_DIR "$HOME/.nvm"

# go
set -x GO111MODULE on

# fzf
set -x FZF_PREVIEW_FILE_CMD 'bat --color=always --style=numbers --line-range=:500'
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
set -x FZF_DEFAULT_OPTS "--no-height --no-reverse --bind 'right:select-all,left:deselect-all'"
set -x FZF_TMUX 1
set -x FZF_ENABLE_OPEN_PREVIEW 1 
set -x FZF_FIND_FILE_OPTS "--preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# key binds
bind \cf accept-autosuggestion
bind -M insert \cf  accept-autosuggestion

# direnv
direnv hook fish | source

# starship
starship init fish | source

# enhancd
set ENHANCD_FILTER fzf


if test -f ~/.config_local/fish/config.fish
	source ~/.config_local/fish/config.fish
end

if test -d ~/.config_local/fish/functions
	for f in ~/.config_local/fish/functions/*.fish
		source $f
	end
end
