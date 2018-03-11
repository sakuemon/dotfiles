function fzg_cos -d "Fuzzy-find and chackout a submodules branch"
	git submodule | cut -d' ' -f2 | string trim | fzf | xargs git submodule foreach git checkout
end
