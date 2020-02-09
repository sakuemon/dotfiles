GIT_CLONE := git clone
GIT_PULL := git pull

PACK := pack
PACK_P0_START := $(PACK)/p0/start

.DEFAULT_GOAL := plugins

.PHONY: init plugins_install

PLUGIN_REPOS := \
	https://github.com/Shougo/defx.nvim.git \
	https://github.com/Shougo/vimproc.vim.git \
	https://github.com/SirVer/ultisnips.git \
	https://github.com/christoomey/vim-tmux-navigator.git \
	https://github.com/honza/vim-snippets.git \
	https://github.com/itchyny/lightline.vim.git \
	https://github.com/junegunn/fzf \
	https://github.com/junegunn/fzf.vim.git \
	https://github.com/kristijanhusak/defx-git.git \
	https://github.com/nazo/pt.vim.git \
	https://github.com/neoclide/coc.nvim.git \
	https://github.com/shumphrey/fugitive-gitlab.vim.git \
	https://github.com/thinca/vim-quickrun.git \
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
endef

$(foreach repo, $(PLUGIN_REPOS), $(eval $(call install-plugin-template, $(basename $(notdir $(repo))), $(repo))))

plugins: $(foreach repo, $(PLUGIN_REPOS), $(basename $(notdir $(repo))))


