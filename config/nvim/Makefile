GIT_CLONE := git clone
GIT_FETCH_ORIGIN := git fetch  origin master
GIT_UPDATE := git reset --hard origin/master

PACK := pack
PACK_P0_START := $(PACK)/p0/start

.DEFAULT_GOAL := plugins-update

.PHONY: init plugins plugins-update

PLUGIN_REPOS := \
	https://github.com/Shougo/defx.nvim.git \
	https://github.com/SirVer/ultisnips.git \
	https://github.com/airblade/vim-gitgutter.git \
	https://github.com/albertomontesg/lightline-asyncrun.git \
	https://github.com/andymass/vim-matchup.git \
	https://github.com/arp242/switchy.vim.git \
	https://github.com/benmills/vimux.git \
	https://github.com/buoto/gotests-vim.git \
	https://github.com/christoomey/vim-tmux-navigator.git \
	https://github.com/haya14busa/vim-asterisk.git \
	https://github.com/honza/vim-snippets.git \
	https://github.com/itchyny/lightline.vim.git \
	https://github.com/junegunn/fzf \
	https://github.com/junegunn/fzf.vim.git \
	https://github.com/kana/vim-submode.git \
	https://github.com/kristijanhusak/defx-git.git \
	https://github.com/liuchengxu/vista.vim.git \
	https://github.com/machakann/vim-sandwich.git \
	https://github.com/mhinz/vim-startify.git \
	https://github.com/morhetz/gruvbox.git \
	https://github.com/neoclide/coc.nvim.git \
	https://github.com/osyo-manga/vim-anzu.git \
	https://github.com/romainl/vim-qf.git \
	https://github.com/sbdchd/neoformat.git \
	https://github.com/sebdah/vim-delve.git \
	https://github.com/shumphrey/fugitive-gitlab.vim.git \
	https://github.com/skywind3000/asyncrun.vim.git \
	https://github.com/tpope/vim-commentary.git \
	https://github.com/tpope/vim-fugitive.git

init:
	mkdir -p $(PACK_P0_START)

define install-plugin-template
$(1): init
ifeq (, $(wildcard $(PACK_P0_START)/$(strip $(1))))
	$(GIT_CLONE) $(2) $(PACK_P0_START)/$(strip $(1))
else
	@echo "$(strip $(1)) already installed."
endif

$(1)-update:
ifeq (, $(wildcard $(PACK_P0_START)/$(strip $(1))))
	@echo "$(strip $(1)) not installed."
else
	cd $(PACK_P0_START)/$(strip $(1)); $(GIT_FETCH_ORIGIN); $(GIT_UPDATE)
endif
endef

$(foreach repo, $(PLUGIN_REPOS), $(eval $(call install-plugin-template, $(basename $(notdir $(repo))), $(repo))))

plugins: $(foreach repo, $(PLUGIN_REPOS), $(basename $(notdir $(repo))))

plugins-update: $(foreach repo, $(PLUGIN_REPOS), $(basename $(notdir $(repo)))-update)


