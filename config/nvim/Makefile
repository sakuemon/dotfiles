GIT_CLONE := git clone

PACK := pack
PACK_P0_START := $(PACK)/p0/start

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
$(1)_install: init
	$(GIT_CLONE) $(2) $(PACK_P0_START)/$(strip $(1))
endef
$(foreach repo, $(PLUGIN_REPOS), $(eval $(call install-plugin-template, $(basename $(notdir $(repo))), $(repo))))

plugins_install: $(foreach repo, $(PLUGIN_REPOS), $(basename $(notdir $(repo)))_install)

