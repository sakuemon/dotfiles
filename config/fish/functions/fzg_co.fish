function fzg_co -d "Fuzzy-find and chackout a branch"
	git branch | grep -v HEAD | string trim | fzf | xargs git chechout
end
