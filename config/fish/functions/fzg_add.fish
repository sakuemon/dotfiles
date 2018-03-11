function fzg_add -d "Fuzzy-find and add"
	git status --short | string trim | cut -d ' ' -f2 | xargs git add
end
