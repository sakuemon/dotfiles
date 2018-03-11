function fzg_cor -d "Fuzzy-find and checkout a remote branch"
	git branch --remote | grep -v HEAD | string trim | fzf | xargs git chechout -b
end
