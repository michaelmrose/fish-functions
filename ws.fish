function ws
    for w in $argv
	i3-msg workspace (decorate-workspacename $w)
    end
end
