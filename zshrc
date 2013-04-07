# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500000
SAVEHIST=500000
setopt hist_ignore_dups
setopt share_history
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
typeset -U path cdpath fpath manpath
fpath=($fpath ~/.zsh/functions/)
zstyle :compinstall filename ~/.zshrc

autoload -Uz compinit
compinit -u
autoload -U colors
colors
# End of lines added by compinstall
zstyle ':completion:*' list-colors ''

setopt correct
setopt autocd
setopt auto_pushd
setopt list_packed

export LANG=ja_JP.UTF-8
PROMPT="[%F{magenta}%/%f]
%% "
#RPROMPT="[%/]"
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

#PATH
export PATH=$PATH:$HOME/bin

# alias
alias rm="rm -i"
alias be="bundle exec"
case "${OSTYPE}" in
darwin*)
	alias ls="ls -G"
	;;
linux*)
	alias ls="ls --color=auto"
	;;
esac
alias be="bundle exec"

# for ruby(rbenv)
if [ -s "$HOME/.rbenv/" ] ; then ;
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
#	source $HOME/.rbenv/completions/rbenv.zsh
fi


# for python(virtualenv)
if [ -s "$HOME/.virtualenv" ] ; then ;
	export WORKON_HOME=$HOME/.virtualenv
	export PIP_RESPECT_VIRTUALENV=true
	source `which virtualenvwrapper.sh`
fi

# for node(nvm)
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# for phpenv
if [ -s "$HOME/.phpenv/bin/phpenv" ] ; then ;
	export PATH=$PATH:$HOME/.phpenv/bin
	eval "$(phpenv init -)"
fi
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
