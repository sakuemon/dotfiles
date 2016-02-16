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
fpath=(~/.zsh/functions/ /usr/local/share/zsh-completions $fpath)
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
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

### RPROMPT (for vcs info)
autoload -Uz vcs_info
setopt promptsubst

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr ':S'
zstyle ':vcs_info:*' unstagedstr ':U'
zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:*' actionformats \
	  '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}%c%u|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
	  '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}%c%u]%f '

precmd() {
	vcs_info
}

RPROMPT='${vcs_info_msg_0_}'

#PATH
export PATH=$PATH:$HOME/bin

# alias
alias rm="rm -i"
alias be="bundle exec"
alias diff="colordiff"
case "${OSTYPE}" in
darwin*)
	alias ls="ls -G"
	;;
linux*)
	alias ls="ls --color=auto"
	;;
esac
alias be="bundle exec"
alias grep="ag"

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

# for repls
autoload -U anyrepl

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# for openssl
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$CPATH
export LDFLAGS='/usr/local/opt/openssl/lib/libssl.dylib /usr/local/opt/openssl/lib/libcrypto.dylib'

