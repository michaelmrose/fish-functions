function in-vim
	if contains (winclass) Qvim Gvim
        return 0
    end
    if wininfo title | grep -E '^nvim'
        return 0
    end
    return 1
end
