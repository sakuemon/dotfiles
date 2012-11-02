# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt hist_ignore_dups
setopt share_history
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
fpath=($fpath ~/.zsh/functions/)
zstyle :compinstall filename '/home/miya/.zshrc'

autoload -Uz compinit
compinit
autoload -U colors
colors
# End of lines added by compinstall
zstyle ':completion:*' list-colors ''

setopt correct
setopt autocd
setopt auto_pushd
setopt list_packed

export LANG=ja_JP.UTF-8
PROMPT="[%/]
%% "
#RPROMPT="[%/]"
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

# alias
alias rm="rm -i"
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
